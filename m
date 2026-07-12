Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286E11A6806
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783882114; cv=none; b=SQta+KEXsbUukOUg7A9GRH0Iu2yqwgU858MlngOGc2s873QLVb+AYMT2//mdDyTC6wjfwY0UfSX3MfK/c0Lq9gsflh20CKPRtVT7tAI+zJvq6Ye47ko3F31dvZcs4k4rAep/6DhdEFqDwUX8/UdO8IDW3u8T1CSNKbIZTNWeNVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783882114; c=relaxed/simple;
	bh=/eYDbF8bsI2PygvATcy9hibXGCjeYjT8CeriODS/wcA=;
	h=To:Subject:From:Message-Id:Date; b=T70z7VLagpJxiklqpsGnFArthowJHHCRsAwvc+wKyoN2RdBKxROIb0sAzxHyB3qO9Ypr3E7KrQP9La6QpK+oLoCl4GO6LNGo1ZBmKI/B/7qAzG8MYGu6pVh1kzRVFrOqME6RIbf9Wj5xGSpRPZTu/fBQCGElhl4fTCZgwriqccc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azMH3eFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azMH3eFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8BDC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783882113;
	bh=/eYDbF8bsI2PygvATcy9hibXGCjeYjT8CeriODS/wcA=;
	h=To:Subject:From:Date:From;
	b=azMH3eFH/xmimrA4p6d29bwh3XrteCofFdeJn8If4jByYICnBNFf3nIoBoY9uo4Md
	 3ic0rtSHooQ+ppu7qGNQ7BAfjDOUETJG4+u1x/Bayxljl3aNqmi2fgnhyCts9ErROB
	 ssYnBquY0SPVgq5e4NMuaMa+ypOHCwZXAZ1xFL4fS7NK1TtHg6q7S9cbnanuz7Rf8e
	 Fik3H4r4MzXrBjaZ2THrlcDrHCsybRZbhwK0kxPKu+yM3FjMUYYmxghh3sxDi5rZpt
	 19IgrdajQzgiKidrllxWS6/e4wim9BTG2YsEdkhFtyMb4SaADSq05kzUQ43mPMtJzz
	 v9L6E/vzfAYzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D98C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388211368.28547.1511486315441973779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34142cf0d47ac316ca18ae019997e269c8660e9d0f8a01f6378d566f1f21d24d
Date: Sun, 12 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783882113
