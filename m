Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E174320A0E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773650694; cv=none; b=HW5AyqBHs4HrFyTxbXAVtK25OjT8vhLm43vamCiCYhPhRsDNl53RwdLH4TaazB0QBPW+DnqlsngLBoZ0iuKNfhNsJYU2pVpd8M+rNbBR8DI5PcIg1Cww8D8rmexQ16n0Q5iNpvwanmPjBh6dISu6rpYClTKEJM/SLvygCAFtaRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773650694; c=relaxed/simple;
	bh=Mbpou2b6Yd1J7VGbPTNjBBXu5PdryTxP09bPd1tyzD0=;
	h=To:Subject:From:Message-Id:Date; b=QSqfhi4zyuZxOQC1KLcaQRrL28iHnS60Oi7+8hYrFiHp3yfFdFv47TpE3PENFVYHEKC1uSGJnQVjCc4jTbtR1INi92JsPukmzjJ22ufg8cMDZfk1dOxRKcAhZltmadABfg9oiXeuVwUhoha0mbG6YGMZg/NUvaYD67+pFAEVLjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpCiPLGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpCiPLGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA52FC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773650693;
	bh=Mbpou2b6Yd1J7VGbPTNjBBXu5PdryTxP09bPd1tyzD0=;
	h=To:Subject:From:Date:From;
	b=CpCiPLGtQHkhHfhavXoEPPseF9J2cqTqudfxHEtGslpPgDuBjaNbROa1cSvNJ4lTk
	 ijyBVJgwnnfDHirgKmesB0lRfFp/2u/PGvHsO6wErxl5j7xa454SzTqw55LclrnOzf
	 n87OFw9n7f41qKu7n0S/8QD5QtnNUw0BL0lB1ytbhK/5UXovkMB0Dd2IvejCTzXMEx
	 mhSTaKWzcfgMb/vuYAW2aBIt96i5dMtMKXIdZEIBWEQszyYEqxdWxb6PBNXUr/veEJ
	 6sYmbdwn8ph3zGq54AS8AfXvuY+bWwKUcDXRjLFz2Hi2oxlfuzsQODBMUqFotf1Wii
	 XIs7ypFM5Snzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A83CF013DA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365069361.16357.5760446311377898779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39a907f98bf5a392c869dd8984684414bd9dd4d5001b7652d1e1a3fb4fb6a91
Date: Mon, 16 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773650693
