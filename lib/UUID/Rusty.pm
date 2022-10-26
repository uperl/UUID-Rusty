use warnings;
use 5.020;
use experimental qw( postderef signatures );

package UUID::Rusty {

  # ABSTRACT: Universally Unique Identifiers Rusty FFI style

  use FFI::Platypus 2.00;

  my $ffi = FFI::Platypus->new( api => 2, lang => 'Rust' );
  $ffi->bundle;
  $ffi->mangler(sub ($name) { "rl_$name" });

}

1;
