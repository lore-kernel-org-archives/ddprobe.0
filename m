Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1842F224AFA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749666594; cv=none; b=SuP91chemBaznWcMyo/FOwsW4PcuEi3o2wDe1y9O5lCO8q0ul1g+VDN4gaNvprU4uMZx5saDDPpHUccbJN6WJ2LOwxHWcQu+S4+IFYM8l3yzPe28dq9hQK2B8g5CPbqXw6WBPE3Ur3IIerxbs0J3MwuBStUw82GBCM+lax9Z4bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749666594; c=relaxed/simple;
	bh=ksA2lkrDoSBds7R0rzkVmaoIWLKBHCWuTZi5VO38A8Q=;
	h=To:Subject:From:Message-Id:Date; b=Alpu15v0S40J4KzQAtBNHCTHFwrmfnMPPpx9aP9bLdkV+gqPBeYBYB6YNzj9Jqc7bEQoW5aDRfCLgyK98rNtvV7tfjAkhrI3FEVARdI1u3V1T9kAdyl+9IJk6nwU7ishQbey6UUyLYmljl4RzrIfo1oUUX0EmM7jfV7X6Cvt8zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyXtPEY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyXtPEY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C42C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749666593;
	bh=ksA2lkrDoSBds7R0rzkVmaoIWLKBHCWuTZi5VO38A8Q=;
	h=To:Subject:From:Date:From;
	b=RyXtPEY/X2bfptHzKjdq1zbFu9tI3wc8pV8DyzHup98B8/Do2B2SfxAABAQLWkcEz
	 M3aPX4r7qzAyQqmFHQV2qI409W4PYjIhDCdULgYDVKEXVIlg30+JbAOSGECNXRTzKb
	 VyNoGXQ43IM1YEaHtA74zpg7KC4AFxmsqOA4dZxtOvcmRZW0yyKsGcB2c/sfjZBNXE
	 u+AY3RtjrUCjunfKyaSAkEONwO7qd48prjvmHwsE/IX3gf2No81CgZhDZCQujrE6V1
	 hxK34NEEaCmQI4P00cLNyKx/rQw/nJCzucNHVMXwuLXwMqUlAkwQ6tQIUjdu0054vQ
	 +vqQ487lch3bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F8C71141
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966659358.4116.5854732328847777116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8682786030c5dc9cd52adc33676ae4ae280d3259503cc3421c27961deb3c9a
Date: Wed, 11 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749666593
