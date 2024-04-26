Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1855C380
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714091543; cv=none; b=e26C+v2AqPm6x04DYWAUiXuB/QNAz09QLEr+IUD8BSS0DJEfgE1zP24fHhrBBsaduKw4tmfShIOS3JVLbELU9uSgQTGaSqzpn+60+h3UHDePzqAujCnwOU12TEf5VZjXTsxYVsEL/cMamxHu89tvCgtwqyCmoDeP4eVGSTMTK8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714091543; c=relaxed/simple;
	bh=i7ZOpcp+I0zyeEtSFVSj1MMvv86vtiBRyjPewaGpWpk=;
	h=To:Subject:From:Message-Id:Date; b=uzpjSQSsVOMsQX11x9eusMqPiQsi6mgvE1+4ViDpubZRZD51eVFy2Pq3S6gFefHkIdfxF1a6R6U0f/ELX/KHGgAOfnTleG1/PBN8+0MRukzQ8DJKDP4RlPXN2fD9oe8qMyyhN9E84Lv6QG8TSkDnW1eM/5XAkTwDcCaABn6dOtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoINS82s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoINS82s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D9FC113CC
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714091542;
	bh=i7ZOpcp+I0zyeEtSFVSj1MMvv86vtiBRyjPewaGpWpk=;
	h=To:Subject:From:Date:From;
	b=ZoINS82siCMup8tCklgY50tdPjL7wlJcHcSl/GEv312OCg7GbJbw8tnqOgf7qFnnV
	 IwACTdZjlpYcNiOnAj/DTbx5mg4lovlWsK9XOZohjH/kh+hiM+mr8bbxLvdjajtskD
	 5C/LyCkAfPk1iJfMAzahfUiJ0m6ogR5bn7aC3dsoWlxPpWdW2vVsApB+SDQ51T+wUg
	 ywsxf+5A5lXQLXIbNcXtP0V8BoCRnG0pNdNI8VAu3yBFTYXQIkPhJzxLok/ustRCkb
	 lolNqvfuPwogX+cuHHV5Btc6E0YhNcvTOg2eU6P5Z03OQtsX6wjkaSrfLOMPiK7rbp
	 7ZQJh1jWZiVjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBBCFC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171409154280.11718.6120213196152826093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4d236f04a2b4209f865c6473277c239ae5537571c602942e2ea8b0e0afc410
Date: Fri, 26 Apr 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714091542
