Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132782EB0F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772081094; cv=none; b=HE7VGcSJvrXh9b5wDdHAfzxLzeljeivmGIrQbj2Dn/kMHWiGgdnkvxC497s9Ro3T6d6GVhR4H7zb/zC/uRdVHrmAwnaLc+tN5lTq5TK05AxgeyBVatXZD6b+uUQ8U4o3Ogp7dBczaSmaW7PWcqe/gK9ayC90ZeN0IF7NvWHflYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772081094; c=relaxed/simple;
	bh=4YKyR8Gg20UnH6o1qr6SLGQ67uczIZ3spycGWE6xDNQ=;
	h=To:Subject:From:Message-Id:Date; b=ryDpUynaxpDcWJ96rXvstn3AbGZuS0njnS0MBML5bwNXy2ZItLXn4Rgg0FdB3euUvQ6TrQ0zSc4ysqD6zJ7bzZnZIBbMq4s/M0RBYmcISh8N4Fsk2Q+VTCD07qg+hMB+bNNIaBLv5jIHBzxmWUoVPhjXJcJCzHJHDVPsl2SdpTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jyw97hgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jyw97hgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB269C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772081093;
	bh=4YKyR8Gg20UnH6o1qr6SLGQ67uczIZ3spycGWE6xDNQ=;
	h=To:Subject:From:Date:From;
	b=Jyw97hgF5rS9Tw15qVyVW/bGGkt6/3U5GGrLDx+D9En/gMzuwtnpBrXPhHM0+J+iX
	 wL+ds0/iL4crtSDZnN9TH+NqV8rOGnsHA25/Y3lXQrmhGVtWiAr1+c8NUAyNaU5r4/
	 EMIzEyEeoY/HfC5m1yGxm9dMNwAW1OzmeiqJqZ8T66coC57TbbZaFMAwWTLeYLrpSY
	 eVmMu8Sn68HjeZOHkttaVmYmRuDFgm8rXIRbjYtcuMDg7UB9B5U24GNplwvPDchDUf
	 dJQmDP1Dk5wGWE1OpoXmquT+tZsfiXIC470j85jF3XRc8HyFQIe1rEYdJniDk/INhd
	 LA2S3kl5XonVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E25FD461C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208109359.5109.9837765963987743112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c24a5657093250708abadb4ea13cfa1032d9544daccdc9453c05da13e0c863f
Date: Thu, 26 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772081093
