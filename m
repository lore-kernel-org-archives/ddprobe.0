Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A55341D23C
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790530234; cv=none; b=Zyc3k5eS/ZwSYYJ3DA8J825E2KD5waBqSpt5aBcUqvER0YSs8B7+2RLb6k+MM/Yh0EVviSpXRn3tOK1TD1JZriN591Y1ippKXsYYG3dbzC5nVl3Yn+HFR5ivsD9PsaOxuIEb6Lm+wg5Ti+7AaSClXA+fpnEtGrX1nfZ0BtJzPeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790530234; c=relaxed/simple;
	bh=XOPLQwA97G79KEnV79uq8ubNmwyZ8DkwJ4BjhhQpOeM=;
	h=To:Subject:From:Message-Id:Date; b=NrOcA2BFd9Fb7WAQVPwo9vBfNgSnxigF8QNYGDDgX+ZlpgbqdUo+zHYMTCvCfqiYrcEd/bFviF3hXnU2/3Np3956gkn83G3LJIb2amGXtJetfBGP92qnxkbgCLBr9PDQCGmONTUlqM3AW8uRZpzv2O5zmZ/yst0JcND8EoyeZKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hd+BG01o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hd+BG01o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF80C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790530233;
	bh=XOPLQwA97G79KEnV79uq8ubNmwyZ8DkwJ4BjhhQpOeM=;
	h=To:Subject:From:Date:From;
	b=hd+BG01oiE5tbjTRNbrb2oXmsoorzhaGEDUEJUen76B+u8nh6n/tA/OevZtbZkKTJ
	 PBeiDCf8aYWF63S+qDO+hm6C3o14rjb+wMdxq0QPzA1jXR6pmrIvkMsUgYQORPJJQQ
	 UbaM+ksYsv0QZrDirCLfhVzDXRpPQkeRwPCupaOACbyGpDIZRaMmYSTobr+N+hqQO+
	 OU3u+tSu2AEjlnLQ8L4NHolsrg1YXwRs4JKxykyD53vZb4pOk9LKGX8LHuzFP78euo
	 BoTX+KLVUW9g3oGYCu4yhzSUU7L0Gdzoh+HLAVDPSfHeZd6TRK0Fb8xvxD8XbuLstH
	 WF6qtQ/w/6dUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48CBC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053023371.22017.13628511293986202197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33eac9116af52915a5d27673c3d708c21cbc9b0afbac513a920761854770b1bd
Date: Sun, 27 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790530233
