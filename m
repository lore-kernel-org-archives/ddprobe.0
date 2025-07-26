Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E2B18A6CF
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753553994; cv=none; b=swkQJ4A5q0JvMMkC8/P2LKH9DDjul0Wg9zgRtXS+zlu6iOzGDybM6opT9hsaHIoda8xuO5LcLRkxifaUDJg3gBG9YLr5s9Zgf2EXolZstqSkYGVXmJpPdJAW9Ebab5+Idp5SX3KwYE45SaYuCC6nHOefDjoETxXBPRAZa+Zv9z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753553994; c=relaxed/simple;
	bh=qVwZXwfSDSWOl4HeyjhvEBhypHCLinmD3UFcqh9EIPg=;
	h=To:Subject:From:Message-Id:Date; b=JVUPWqTr24l7i8jhmMpEcflgafIw4VD/1NQ7esJSibWLlxYtGslyfAtqGW/nly+sa5zGwud8bOYEnYFfH6sLimPggkD0zHlSuc76NlN6KLvhH3U2Dwvg85OVPBsej6ZjMC6n8UY7Oz1dt69R+Uss79JEJ3x5VH5TdgEH3peaSCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nj1L+ThR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nj1L+ThR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FBAC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753553993;
	bh=qVwZXwfSDSWOl4HeyjhvEBhypHCLinmD3UFcqh9EIPg=;
	h=To:Subject:From:Date:From;
	b=nj1L+ThRnJjC9SFULpO8zbPJrLMyhfxih0vWtmXZMOrenCH8/BBQgd0mGscOM+NLp
	 opP/8KPfJPVrnIBs26754o1wtQhcmGrKfbi8q45t1272mUssjP+IK8DL4bjS9S4wkz
	 loBejzXjR1r0tRv47V3lgBRbKGSxmdHiG67S/i6X59Xxy60NMjhQCcwtWiiSx06Oqu
	 pOUTmfOuFZEl4351scS32I7SZwS0ZugPTI1LDMrkBVUTSs74FX069KOu1akT4G9GyZ
	 4hvt2s669zjLnXfbgFkz+S3lcNtqPsgelSpb0K7afHi5+YGMrlw2fOaB/ZXymnv4JC
	 9V1ojnqPxFv1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962B5C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355399358.21792.654904969038186389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21d28f04f9192ca840fda3f6f241d75138cc14d18e10c039251d4685ce017a3
Date: Sat, 26 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753553993
