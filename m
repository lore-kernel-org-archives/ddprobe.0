Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE830374187
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769632433; cv=none; b=NJExujlWDYv7Bra3UXlGs/lmKM/xkzf8xb5rOP0TiZ3h9LzqL9SfeUJ2BqS3sVo0CQmIKIkcFb0biUL/oD6y9rtAqeRxuXfJOckFdh/mymB+83d23riX1m51uhmiNir3z22QOV4tHpJNNw+JK4StrqjxG/9+vraWHA3v1XW5HTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769632433; c=relaxed/simple;
	bh=7Y11yiGSYshqtbcQ2iHFX2lKk3SkXWOiauaPpBCRC8E=;
	h=To:Subject:From:Message-Id:Date; b=PIOxfheNLGPTCUcz67Zxmyx8THIZ7oJwwlA4sjHiNfKxzRtdxB8cUMb0jWDHLHGNBeqcN0/FbPpJPU8P57DC9QaHV5/1pHaqbDM+vlaF+jKS0Lx1NiwJlSU+aaUetdkl8Jah80rCax6Hoq4pBLS4fMPxy01K87iiu0jDQCZ2PYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHv/0PyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHv/0PyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15FDC19421
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769632433;
	bh=7Y11yiGSYshqtbcQ2iHFX2lKk3SkXWOiauaPpBCRC8E=;
	h=To:Subject:From:Date:From;
	b=hHv/0PyC1i1YFsuV2KUdcpb1LAkTm0ZF/BxSpR/AnO01d1E0jWqHMRU+dapaIN4ny
	 epQdmAJBTpogH4Cd+Gn5zAZj9em9PXxIKRkT4xy5cPZIQsArRDTAGrv2/18RR38CZU
	 +74e8c0O4xCgd94eWtHD5cMemwpTJ4oVW9tNFkQ67B7GrsxgzEXkjNWvUYwkXRnnSg
	 RDGHQEafO7/TDEFPqIhjDZqL2GscFrlwEVRyFSHCki+et8HT9z7SLF0X1vuq7RpQvy
	 xKE7FPemo9VO2DpfLODK08HhRMhk9lMTLEozxQmI3HDyYDqLkBb2H8PhAqIr6EJmvA
	 s9e887lRcvOaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9282FD46BFB
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963243359.29287.4199671412781477096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 370b5e2f2347b9fbd59c701456b5e99b5ea8b050909137d24fc090665e88d568
Date: Wed, 28 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769632433
