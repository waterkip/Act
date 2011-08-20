#!/usr/bin/env perl

use strict;
use warnings;

use Act::Dispatcher;
use Plack::Builder;

builder {
    enable 'Session::Cookie';
    enable "SimpleLogger", level => "warn";
    Act::Dispatcher->to_app;
};
