Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1E226ED41
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790040034; cv=none; b=S6aJsjgCGooOpyFkQboX8wJk2yglQ7ORGudSbm4Td0FowB9hwF5hlah/zfTy67GJ39LxBaAN1Lflrdf1gA5xzMaduJ8ystdtaLSGl4RA8fMNO430BiWFeb8/xeIvFEQiYPW7RYvdnuuhEq6o/XpFLcYUXGu5YppafupLKjeiypM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790040034; c=relaxed/simple;
	bh=HjO3ZpmzqtTrjUuYPo3zL63F7s8Lsk5tK0d/lvgEmuY=;
	h=To:Subject:From:Message-Id:Date; b=bKqLmPtjYNbKbxYtT24k6gcBltsxo7yVZDbGD6/dm+ABY9TAWUzPEZPifP1DtLSuPfZKPCDjURFfYD5Myx/o2GGDODq9yJ88IbM5wGMZjiW9ZBah3iEDXv/Gr7jXCgwX0nU8883EM11G7i+Lj4jO9bnPQPxlo5vPIUBnAfwKC1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1DC4H6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1DC4H6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0A8C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790040033;
	bh=HjO3ZpmzqtTrjUuYPo3zL63F7s8Lsk5tK0d/lvgEmuY=;
	h=To:Subject:From:Date:From;
	b=J1DC4H6s+g19BABAbH88BxHp7ZuUpHC2i+x8KwxAqvu0PLnhTzQXnQ5Uxbf53ZJJS
	 jJXX8BJTNAM3kpO0m6yAqVcCs7CuZbU2e/xnDLvnkzDRoGAcmkuEYXItR7LwS5mf8Y
	 IN9rfH0FOc88LKMzzCP1DamBfPMUsq9yhodwDGCr7FHS46vSYOrW9D6NZS+kM/9uIA
	 H2S9DJvgUnwKtQ4CBORjXdgGPw+YCQ9IZZ5vSTJ0k/mMGDqChVjGMdesO1Oob1pNV1
	 idi5bRpuzNYi9qnChTXWhjWp+Lj47zjMuGnLpoh9tt6rmUblUc1LYas6bF55w99h4K
	 0HM0XWvmX/OTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91EEC982FB
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004003368.25544.16251351536462158292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb9e935f77fb3691f2ca4b980a9cd949621f98fc977cc8027c7bbb8d57f80b0
Date: Tue, 22 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790040033
