# This application specific puppet file is where we install miscelanous packages etc...

exec { "apt-get update":
    command => "/usr/bin/apt-get update",
}

package { 'siege':
  ensure => '3.0.5-1',
  require  => Exec['apt-get update'],
}
