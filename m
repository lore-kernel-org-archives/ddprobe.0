Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FC9185E4A
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769306034; cv=none; b=pUhGMaA/cee9NYjjT3H/EGsyt1dGyJ9c5aoGtdGEGauKow0IIua6NWJmB1GSNLUcCQBhwEeTwupFTD8110xPHlXrzdv/B0Yr45PgxVGfrY5jMOvN4MipQwy1nFDpUUhirKmOdHwDxukqmtuLFPTpAxainqDb4ihLXTxkSxingqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769306034; c=relaxed/simple;
	bh=+t/LrPhuuZ5zvrM/oYDkD5JyLPNevkBD0fkaNcTfsII=;
	h=To:Subject:From:Message-Id:Date; b=RPxI+w8dJlxyI4d1WQ3cTCay5YmANvSveAZYOHIHAnnu3vRckCdRxiY5h8pfFIdZwTRYflh7OpNPAd9tBZwUIWjcNhLQJtfzHLVETOobkcl60wsWK0AnITX1ekTygxTMWTTSvbYdwG6TgXjgKWKmfSqe8PoVwdgSNqZwQ/wT29M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k81Kp4g/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k81Kp4g/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EB5C116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769306033;
	bh=+t/LrPhuuZ5zvrM/oYDkD5JyLPNevkBD0fkaNcTfsII=;
	h=To:Subject:From:Date:From;
	b=k81Kp4g/0KgWJVVqjlsVOuPvt2/eHFSXyuXw1vLtAUmh5EHFvx09cm4bb8nO51Glj
	 OmGNGJilbgNVhr81dGWi8LeYMkCfNCi8tQsfLDcd4Z3dtvPV1DyFP2p3GAqmsL2J1h
	 YSRS18A4sPGFmzhIHf8iKgY456m4WCnRwUqB/hg2MdiJ0I7RjhFv/bCgu0kJzZ74ej
	 FqrCuCzLWbsHybgg7SOX4NTxljj93yMkYwQwhI8dLsNTeKfihLi/irDYG9BEemAPVI
	 uE7bEEhoIgmG8mdCEcp66/JzdKRN3pQiVR2Re4dXmqj1KUfsp53SQ4iHiCTVML/O1g
	 r11yDiKeiP9uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9639BE63C81
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930603358.30482.13407716404033306482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e98fd9ce3f0e43d6ec62a46fa16579a6dfa0b86f258fc36583caea2b72b6b0a
Date: Sun, 25 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769306033
