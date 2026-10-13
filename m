Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B0B560AD5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791929434; cv=none; b=W9K/VrlrLQU6AO4JVssduLRGm9N10LFrcsaoi2Ge8+1QMKLGeyq6l3Btc/tWPb8bO1UU6DMYWRtm2wyR/CHT8LAAix7o7fi4GM2qdlb/AkzveeSRsLeEi4e/HPfp+YaPBbqNTBCf143SB5WBROukmX9FaUK6mylI5+pPyKh9cX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791929434; c=relaxed/simple;
	bh=oLwPFky96lsLSKBGMEq2hfBnTQk0b0wXwoOyGHjozxs=;
	h=To:Subject:From:Message-Id:Date; b=XILA7ruFljhcXTcMCY8ehFANJ/W1W140cQaEfRDf6r8tDYXeChQOMjppfi3bwwWt4elzvTAw2uYcaSkvGVuYil67akE6kxJoZDauJWNMHH0kQm+BJBx1NFptoKubL7Y/R+DIFd6vk6CXDFuHZkyTquPdX5kYxCEYRIXP01nTYxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfLVVUtt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfLVVUtt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4ECC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791929433;
	bh=oLwPFky96lsLSKBGMEq2hfBnTQk0b0wXwoOyGHjozxs=;
	h=To:Subject:From:Date:From;
	b=SfLVVUttbhH1bpVjXFn0Ovbz7av43+HHEqSVon5zQHsj+vVnL9P3rG5myMGKLrWc5
	 y13EBidOTWA7r5boOSKWb7G5Ebp9uIBsB87rkBin3+kl3POslVU2mAE4FlU9gQoums
	 PFZnzI9Dg8f7RFcuAuCfbjD0f3ILArrC+RCqhMfz/2mOd5Gx8bQf+t2AbJwS8kK84X
	 cSw9qFCa7Mmhp3sk2eapkLBMAugpmq4yS25kcrX2qWoWlA62UMiQA59jRU59ILEhic
	 u2XCNuIBdFcOukKqfXFj42YuNTDnrGAp9z11Mro7gddbbZMGaj2pGHK1mrwT23y7xn
	 63hFN7/E9YZpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E9CCC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192943371.18959.6247817174175020834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14d704c7767e1379f7152c305e6a459f1b9bbefd0d5dee833ae265230566d2c
Date: Tue, 13 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791929433
