Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48814198E60
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721127323; cv=none; b=Wm8/pWTvXP9nj/YyMyYLPtfd2nqTWve3s1vih7r54d/05np0tgd8AlgocxVPxZxwRO7AuBFqMVE/SQ8GYI0kqOc5lE/rl6nuIeUbECVhVSU7eb3S/TIiwpXZR2V59Q8f/Sf2ai6OxDVnRq6kliw+HdJxmbJIaK3ikYE41c17p/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721127323; c=relaxed/simple;
	bh=Bl5BSloFVyQVlptxI36Kia+L1Te5k7ZkQaYYrlsQEWQ=;
	h=To:Subject:From:Message-Id:Date; b=T3uePwSjk/NSZspIeWuHRVVHkZu1xKOKRJAd7QUtYkqvmHTCIZB9QZw7LnywkIkJrQr3QZiodYOE4Fv2r0mk4YGI6aTbBRc77Bi1uszN+JJAI/bSv5L8svdR0p+Dz/pMAJsDv5IqQHV/w67BwEGnwQyQV5PpNukHoun0Vq9iGBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZX+MaNYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZX+MaNYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3307C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721127322;
	bh=Bl5BSloFVyQVlptxI36Kia+L1Te5k7ZkQaYYrlsQEWQ=;
	h=To:Subject:From:Date:From;
	b=ZX+MaNYaUmozdqpt1nmXPZaf2nBb/VOUN81xLwUoIYpY1Eapw/ndJZe9d9hccbDUv
	 vVTaKUdGz0uhisG1/HYMLgR3QVDSFpp1zSlOnN6sqK9uhvOfAUsaItrSowcWSu4rQT
	 qxU41Z7l807mNH4Fdeu6k14YSezz3wOnkrwCwxYDrb0vZH4vDSFDf5HPAuTO0V4wkX
	 TIZnYjRQaN6lvEgUDwV013BvyfSFKZcBQ1ueznxY8Iw/WCzq06kZNYtE3ujUFfGQnX
	 Haf02PGRcsfibh0AEtFPSuNaGg6BHGKIDzKRsMM75SoP479+2RpjqFbLCJzOsjJjMT
	 XPo3JZKQQtgaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD193C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112732276.3156.3880979171048907686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9a28434bc8f9cc7c498476a5a74496678b46f7290830cf67ee79914193c11b
Date: Tue, 16 Jul 2024 10:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721127322
