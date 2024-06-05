Pod::Spec.new do |spec|

  spec.name         = "IDCardReaderLite"
  spec.version      = "1.0.2"
  spec.summary      = "This package handles reading an NFC Enabled passport using iOS 13 CoreNFC APIS"

  spec.homepage     = "https://github.com/trungnguyen1791/CardReaderLite"
  spec.author           = { 'My Name' => 'myemail@example.com' }
  spec.license      = "MIT"
  spec.platform = :ios
  spec.ios.deployment_target = "13.0"

  spec.source            = { :http => 'https://github.com/trungnguyen1791/CardReaderLite/releases/download/1.0.2/IDCardReaderLite.zip' }
  
  spec.vendored_frameworks = 'IDCardReaderLite/IDCardReaderLite.xcframework'
  spec.dependency "OpenSSL-Universal", '~> 3.1.5001'
  spec.swift_version = "5.0"
  spec.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework CryptoKit -weak_framework CoreNFC -weak_framework CryptoTokenKit' }
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
