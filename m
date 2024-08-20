Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0894595B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724144754; cv=none; b=WiCJWby8QD/qcvZ11UcQL5Zb+DF9MwllDZaw/CyI8Uxnn7+jdLVm2M7CoqNRXzVcg1sSllAmhbPh2PFjB9xKhyHsZGFEmQBi9X1qmNvOGf6372n+SatwLFWquA0PRbMk/TsCQlcS/w1U6EHMXRUCpfZiIgrZIWIQOOwZTg9sio4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724144754; c=relaxed/simple;
	bh=tad7uK1noEk/bExswHsHPkH6gC/9ZJosV9EigqsxiKA=;
	h=To:Subject:From:Message-Id:Date; b=entQoBgQwjqXB/TCKjI97pVHeg2XqDQ/2iFlby20lbhAxxAMF5DhUlHtt4DwyqADfUXhkB1ycaYeY1CIgmsSM1UNQiJU29eOp4zTdgPi76Rz5iS+SR5ywhcx/hjJT7BTBwd/9NCLQMxnzrSmmffWur49nevRC4knu2AyLskeXdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pmb+olKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pmb+olKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF1AC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724144753;
	bh=tad7uK1noEk/bExswHsHPkH6gC/9ZJosV9EigqsxiKA=;
	h=To:Subject:From:Date:From;
	b=Pmb+olKZM9b000+wFt7NOFd6Jdnq5ocbPoBxd3zcsRoLKgpEM0OsFeTMDDhcGd6MZ
	 DGQQqzdURzO0eu+LENOtwEXxR85gjJ2EymV+hOxhHfsPmZeFdl3VYxOiXLkHfRTtPe
	 +6+/lzSSnfypverGcrUI2gIHEaA2kv9Gylf3quFT+eDbbOmI3gN5UAKEPAyDSKVyDU
	 VdvyIpFcmgS3Pc+7kN2P1fDCbyC1MaTQwJ02Kj6nHLonMoBbqYGO3D9zyZ50rDNcL+
	 FYaJXaqxqwWPK8VihOQzqBs7/8PfEn0/GysSK7dex41SYrvsTWFS7WKyiuhFUvwIws
	 aAEGoLHaJQhfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD427C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172414475369.7683.4522057187197284781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2f52b3845acc2ea280a1531d4277c508dd0bcad24f14988b850a317c589411
Date: Tue, 20 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724144753
