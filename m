Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5178C29406
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737762354; cv=none; b=tcDfX/ARdlrMxXmLZPZnnCDboPSl/qW9j5dxpVjpgtuQxoMt5U4KxXm/0020K1SemdDMEorcOJT59iXGgy82KND0qTnKVXbYemzzVV6vG03zb18z/MMRZ3q06zmV8nHbnFuoQoC67S+3RbyTuvJuyKSXeGoDmAL2p2Ri9CCuI90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737762354; c=relaxed/simple;
	bh=D2FoikKIhqIRVAXMUlL/+9S8y78HQm7F7MXg96LJlpI=;
	h=To:Subject:From:Message-Id:Date; b=BleSY55iVy6BzkhDbVAdlRnSSGxsaY25n2oDLEQU8p9xc9bKwIw/9b5WH//p5mGrvOtjGHic6UdpPrfYauifdTHN7BOBhe9ZZ1LY9JH7MLR+xfi07nA1mULlzzrfgf3ON+hIYyLe4NRscSa2FWKW8lpsepDWD7fs/7uBoNFYqTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBQ2EMGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBQ2EMGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10BDC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737762353;
	bh=D2FoikKIhqIRVAXMUlL/+9S8y78HQm7F7MXg96LJlpI=;
	h=To:Subject:From:Date:From;
	b=DBQ2EMGWUJcm5gSueS7d3v7evMXB/XabA5Yhp3WEyUbD66tGOWjuVgvzJU7gh2hE4
	 SiAgUqidWLLGghTA/4YKzKidDDpNTYY84NtocRD9P8+iTB7w6m+v92qFSvMw7YgaAb
	 IKZXegVoHV8fIhfv8knwQU3CpWlajdqJnaWTJO50LQmR0RmoA9oEFQ0T7o7njA9N/r
	 DDX8ycoFGepKNYeijtJGhKrvl/YJTvB1XA0CzZdFJMLH6DQdWgNlTEOAg1rhR7k7ND
	 QuKkb3vbftVJlQ1cOMPn3cyEz33EOwwPWWwTJ/iALsNCVg+TXk+N+6s2k/XGKMNlMw
	 J0Tm7yGRzIf6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994B7C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173776235359.9427.16767821298997974571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d034a1fd239319f405a30915dee32f59f05fde2beb98db823496c1ab505899
Date: Fri, 24 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737762353
