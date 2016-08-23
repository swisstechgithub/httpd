#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
if not File.exist?("/etc/init.d/httpd")
	package "httpd" do
		action :install
	end

	service "hhtpd" do
		[ action :enable, :start ]
	end
end
