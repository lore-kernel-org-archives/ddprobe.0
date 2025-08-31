Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052BD19D07A
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756672195; cv=none; b=JkVS1HacsAfnOn1nMsLsS/gaBZtQGg/j63L0d0FC1XYxX+27uauIxkK4skVIvSOBrh5kkuloHJpZnZVdwO+7sprzLspxxajWlXwNfhz2Us+TT7naJbq4dosOo5pEfeccfTFkPhotVfxIsNjvp/UT512j2cj1oeayYDQSROMdrM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756672195; c=relaxed/simple;
	bh=dUCByUvf1PGrczyS1h/j5pCvVD5MbkhFuzwKaFXT620=;
	h=To:Subject:From:Message-Id:Date; b=Bsx5kF6y3a3XMnkHVYJiFX5ImgJFnrvCVl2AK5IeQ/xVNSqck/vEb29/cC09nBJd+DYZOVVR+w4c4don/zlCovAcbi57Ci/93REBmHZ1/dENVWygOyMFPcYDv1EOK4RrMjRXyfNzLwGVoqndAmJvrw4+ASnuO23L21Z2icw07gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tokal6dP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tokal6dP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AAEC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756672193;
	bh=dUCByUvf1PGrczyS1h/j5pCvVD5MbkhFuzwKaFXT620=;
	h=To:Subject:From:Date:From;
	b=tokal6dPay88Asv3MhZkHcQcnsJCV4QnnKNjQqx+P2MxfWpJiQR64qAjKuaxAuaqZ
	 iQ7ZpX1zm94VFCLtY+L27S8ShOmjfvd3rhyMjpnLZ6VSqzLuaIo8HgHmxPbeYLi5P5
	 nyvJ2JwE2nWACksF0XH4VPxDMjQFceV4z9+fPXUE49KRLQaABM7z9MSj9g2pEb+KxR
	 mAxf0YGstE/kBqsEy56SzVUIRchcpJ/f4M1uiLPWUPeiUQX7bvjQWYOqXnefYz5JRe
	 H41oJukDKJdGdqjTr/n6Zu3SZYr/airRk6lC6CKfX64hEE+SpbLbehlYYEPP1ABK9g
	 7pDDSW6BzSHLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95310CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667219357.4282.17942425700153388338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d02ff0db3b47c2a3c59a02440c877bc158a34623990f3c46a017c74119a1463
Date: Sun, 31 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756672193
