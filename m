Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6DD3E8351
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785868834; cv=none; b=WHHwKfN26U/Ratl4pbUIKuSjCGMfD+TVMfwtmsCiQeWgAcRakqq4UP4Ngv3CllFlYdU7JiQxaeILaknlY27A8nmi/PIXkYKT0tUxRg83g/nu9F8WE02UW/HMpErqvWDuD/R9mm8v64cNnNwJ/f/7nzg2ZOo+XBnNxQISr4D/NkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785868834; c=relaxed/simple;
	bh=x0M3kJNDjus/P9sx3OMgSXbuizc5IKEcOzoHWoLR2Iw=;
	h=To:Subject:From:Message-Id:Date; b=XAk54li34I74NpuVw2BRPp7mx+0qGm9raKPElVryYpamLHaY8ND52FyD4MKzzan+MGRdbJslNRofeQ7na7s0Ck+vHacFCTALs799ZBpXaqFKo27qartwCBr+hIDD/uO01HUsrB55pTz9TWFNbr12IlbRkC8CnkejIUZMihsoQFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l74j+9au; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l74j+9au"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD610C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785868833;
	bh=x0M3kJNDjus/P9sx3OMgSXbuizc5IKEcOzoHWoLR2Iw=;
	h=To:Subject:From:Date:From;
	b=l74j+9au6h9Yg2oiO4tNIE01dGzc3w0CHWtRouWcAqujM0V+5mkNdETUb1jSqwBit
	 +k+OhuKn3JfAcpTC2IyUg6ZTVYy/BKGChmldfiyECSAs5i6GOf5C3ukz6M2/xUwZHy
	 NorRndNmTSuHB6RO/cMWXf+qjC72FOcKOxAtA3G+2BrHwZjvLvYyctCWP8yFQ5IfWs
	 cs4I+6zWddvnNMGJjuFKHg7YDUv2XuRpgJ+1ql3EuPoOJrJ+XfvlPcvnm6DuR+jScc
	 d8PSlENLwoP1wgkBVo/p9BnpMJrTXgpe3zuGGRQ3/CVB43ElEHrGoTzoNV1QAPYuIk
	 mWJgreckksdTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB461C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586883369.7927.3396558121462287611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9e44e5266eeb65870fc893386700cea7f8983f62150fa9aea1cfe459efc379
Date: Tue, 04 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785868833
