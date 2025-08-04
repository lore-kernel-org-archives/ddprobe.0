Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AA67DA6D
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754288994; cv=none; b=J2Z5azlJJonPSXTVLeg81OPXyvkLDERtinv4/wVc555/dzMRj44DXx0iW1Hiqogzfy/cZ4LomlWxQLhTuIwd1oWAn5IYN06vNsF8MxwFaAdCiltOPeik5u+5GpGBBMRxXiULuci3bfNarzkKYOnaLg9PjzCdTehZ34ryineR5Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754288994; c=relaxed/simple;
	bh=84bDKUzxqD1VmJt4DMgVyQT1HLeoazDKcA32iWY//+o=;
	h=To:Subject:From:Message-Id:Date; b=WhpArtMgg/89/aRFiygUAtbjbAzw8Bvd/eBN8ROno2/xiF2r774mLSauczushZS0cKC3CETsu3DUCffRH6R8yPBnv/4m576UUzOFrRIC2s7XWswnr8cpyq0jKjSG3a+E05zn6jrGmMbQgmjbBjqPnixG4p9NLCgXrLLEKFTSEEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrUgAd9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrUgAd9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19E5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754288993;
	bh=84bDKUzxqD1VmJt4DMgVyQT1HLeoazDKcA32iWY//+o=;
	h=To:Subject:From:Date:From;
	b=DrUgAd9gC8ILRs8O0GORg7LAKTjOQdrlXEXGIXLEYxoLB7lCGmcLlVb/da2AGLwuO
	 fFzKT7FE2cGwaNdS/qeQSEcaBBCb1MuGXD3fBYX6d8ZuhIL3apjcdK7OIuSsMXQ/Gy
	 u1vsMWmTOf7aEhZ6w5wRyGXI7+uVhQUMV5ZgncKOZbggDYHqeCafVMBKvoA2Kjlyn4
	 M37/Fa8gkVBkpElCIBkE6ceD0nyNKp1qn5YiUf/mXClIIA9J0oBAlSnmHnq0KhLbJc
	 VCi8RrI19sJyqQ34NH55+DFGBJlg/3t6XpPXHzIu0feMC55+dHy3DCHFsNcVVsfC+j
	 5dF8O1z+i4V8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFDC87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428899358.22374.9502370629878108173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76559317e15194c86fbaefcb926434a3609310e84f0b9c22ca81108ca111e24a
Date: Mon, 04 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754288993
