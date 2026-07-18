Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3C23D3B3
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784341714; cv=none; b=uFi78Rf93dfhx0NvywUccOnTiovz7CKFa0/ECYZx26ErEvJFXzqQkEoQNHpTqm5TyJJzO13KCqgxyDMFAVWgo+1wWUf3qOqHHS7dfh2jITPSm4cCUsNKoFZGdlbofwqA9/7rTaBDr0JcFUUc4biKH/h1MdxOfCkn8ltDRXDJPm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784341714; c=relaxed/simple;
	bh=VpRxrArtNfaq4oHNdXd097BP2Hc/qLyRshVNoF/6LzM=;
	h=To:Subject:From:Message-Id:Date; b=pQBZj4vTwOARyvLERkcienIp33kbkZHZFoTvYGEyl9N1uweNrhHdbTLbZJEhcrdo8p5TgcTaCz64LS39blCACmuRGsfYD2Cd9J2O/mOEPiHdSr2ME6mBCPVsUZccqg7dVaUeu6rbP4ZtGU4o76WDVPaZMFCq4g/vwXuGQr59+X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGMRsjiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGMRsjiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D506EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784341713;
	bh=VpRxrArtNfaq4oHNdXd097BP2Hc/qLyRshVNoF/6LzM=;
	h=To:Subject:From:Date:From;
	b=SGMRsjiIAcAVVqZJs5hs3PdZveRKRv9E+1vUQZ9mQWo6dZOJ06xhNEXAAkNg79nl+
	 oinqhd/5pGzEOrHCR8P0UCBx8o4vSl0YzO8Yh7t8qSvRgMgcpq5IQfYXAtRflmjLEO
	 I5C/lC9LQpVCt9Z7dCwzhNvyYb+9UT1w49crzOHRtZjNXSqgfavZ9vPN8Aes/InYvD
	 Sm9H3RMf5lYoZbJsked6SPPBP8W9FqLJPeJHGByHxZ8aOTy36s4gG9JYRVPS5OeUR5
	 WN2S9oLZrEl63qvy/imKlDpFRuIpnddykTL3z3hw0Vn9E3EBzYdOw8bGaHYkId33P9
	 7Vr2EQMPPC80g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E0DC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434171369.22922.15685002774257408479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9351180b3cdbe9b2235dd277b76549e47b7ca8b3cd205c215b9af9c9c4beb674
Date: Sat, 18 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784341713
