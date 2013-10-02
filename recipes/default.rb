#
# Cookbook Name:: mesos
# Recipe:: default
#
# Copyright (C) 2013 Medidata Solutions, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#



# install mesos package
include_recipe 'mesos::install'

if node['mesos']['master']
  include_recipe 'mesos::master'
end

if node['mesos']['slave']
  include_recipe 'mesos::slave'
end

