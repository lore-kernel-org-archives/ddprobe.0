Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB598635
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753990193; cv=none; b=eDPtxa7SNGX3C4a7umMtW1mFVXp11TK+7OdNud4cCGkU0MLVmM9sRFkPiVh6dL3SBaXCq8h6mR5YlctkeoKbdugiytyxATujpeh9CFynikwhMmcnNKQk+XfFHojxQ/a2Qv7sdzIRooAdOMcA1hx3KWxBBiTPLSJUboVDvlopXkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753990193; c=relaxed/simple;
	bh=6WvTVioBupLnugg0xovrmCOm3oIrMGBikdCxt4N77kU=;
	h=To:Subject:From:Message-Id:Date; b=di6otktGJxN5NekI5GjtxTEl37DXqd0LKvdN4BtfwW8h/BVPWrx2ZgZJ9l1M842JjXUOW0v6Jv1iZE6jauD/rlvK04lu6Yh//WAPLwH3zl1mOU/c6YnolCnvqgWxeqNbmEMTk5xEy+lxKi1B9d8s5A5O3Q4k+WDp1g6kkgnYtD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9PEZC5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9PEZC5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4305C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753990193;
	bh=6WvTVioBupLnugg0xovrmCOm3oIrMGBikdCxt4N77kU=;
	h=To:Subject:From:Date:From;
	b=G9PEZC5NGop25HxmjkeOe5R0hAtmcnhBkSrE4jlABE3Xd0OTNTpjcvplDHRDNbv1I
	 TshCO7srAsdpgXVz/CQrKH0UqdU7RJo+ofpE8iqyHiIJo8BnNhI4NnMbE/JUmni0Dr
	 E1Grb9UDQzoVLg+NAeJz7YAnC5zGhz8TfdpMI9ghTbsxLQ+NXEjJl3Oz0p0Bs6xahp
	 y/YgiMVIJOIIzJIehHfYrpORSK76Tif7OwpbsPA+7TVpGUa3kL+LuSYZ2BrVqHeNzq
	 NRFatqYDLYGTxO+5WMubWgVHYAvWiuIZAkrN0pnFgQdb2kszhPq+G4oyB69pue1bM0
	 Pvaldrliu5gjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90842C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399019358.12677.3559533633802356602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403c11adef7e9eea0edecaaff2036a89e94b7f0a84be9bd5d4e9885e0ebcca13
Date: Thu, 31 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753990193
