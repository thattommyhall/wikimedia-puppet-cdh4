# == Class cdh4::hue::config
#
# Installs hue.ini.erb.
# requires that cdh4::hadoop::config is included.
#
class cdh4::hue::config(
	$secret_key             = undef,
	$smtp_host              = 'localhost',
	$smtp_port              = 25,
	$smtp_user              = '',
	$smtp_password          = '',
	$smtp_from_email        = undef,
	$ldap_url               = undef,
	$ldap_cert              = undef,
	$ldap_nt_domain         = undef,
	$ldap_bind_dn           = undef,
	$ldap_base_dn           = undef,
	$ldap_bind_password     = undef,
	$ldap_username_pattern  = undef,
	$ldap_user_filter       = undef,
	$ldap_user_name_attr    = undef,
	$ldap_group_filter      = undef,
	$ldap_group_name_attr   = undef,
	$ldap_group_member_attr = undef)
{
	file { "/etc/hue/hue.ini":
		content => template("cdh4/hue/hue.ini.erb"),
		owner   => "root",
		mode    => "0644",
	}
}
