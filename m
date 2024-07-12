Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52511224D6
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720810163; cv=none; b=gR32yhdCO6r84y7ZkfnGcraRO+gp4wvEtRJ3SytwaoSYywP6eSGG4GE+e+iM4s4/pbKhqZEfa/dbiuO42pQSVFR3oB0kNuSyRCDvUlswySQz123mXttkURWUSveCZ3PuXfDjf2icWr5nBdcGQIBR+HgaTQqxpfT3N3dZik9PBfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720810163; c=relaxed/simple;
	bh=CByJsrLshJ9InpZp50bNPFH2xprte1sBAmwDXNEGOhg=;
	h=To:Subject:From:Message-Id:Date; b=CUFsuXsTgpqLhvFZBeqc4+srBtl/KkiyjR2c7XjkvNti63IWLgYEpkNKbH/l7gadZyQgZepS6lVxzIkeLj1SGx3r5Bp2HJLGmGdsyCIjcP1w4+fZ6Gfwv6TYHwKYOdxIdCgG27Wdb00faV4n2f13JtT8vOLXXbJFR99XaYIUYL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4Nvr0h5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4Nvr0h5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAB8C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720810162;
	bh=CByJsrLshJ9InpZp50bNPFH2xprte1sBAmwDXNEGOhg=;
	h=To:Subject:From:Date:From;
	b=j4Nvr0h5qr+Vb7BnbOl+jBmZmdrHj3SXytRAY+1mo/3YuMEo6JRblmhHiDWzZtLdS
	 Tj5xcm0O+6GEdMVeHZrHPaWsWKJ84blCGYYlexCv5NCaxWc0o32gR2bI/ZQzdVdxOJ
	 O+GNGVl+30RCvoEfs1xq5Xp0Tu02JYgF27/WZRSs/wUtRhjMYzG5iEoqWdnJ+hdwiG
	 UtQowm1OaUw28ZBUo0qqyvu5oNcnCp+Y4FKfa+6jRTHebyBbrBqz9/LjMp5UJOEGTq
	 acuKHMb5kDREsV9fk7dhpnylmdMLPPSseLbBHwIboqzK/D+RX17f95JGVq3ssyLDGv
	 jNfOHw5NqPBtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27FAC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081016277.22169.3264368032837602543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85193df05c150c915db549cccd5f28eb283fb74d15fb1f86f02e5fe96f84bf23
Date: Fri, 12 Jul 2024 18:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720810162
