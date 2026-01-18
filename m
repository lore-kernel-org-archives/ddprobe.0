Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0846023BF91
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768706634; cv=none; b=pggUtid/+sszG6IzpU7DtclD945Z+y/QDAth65h7NcotzetiLPu3SX0w/m4tuQPSF12Y36i5FefkVG91nMo47JXE13Z/6480NzSmitJGG5oIFMFwg7mYZD3kXXIB8VyNyKoNRNvnNafjr47XYtjAnMLEU3MZPA/zbMbhS2Ldeqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768706634; c=relaxed/simple;
	bh=76fZOxLF95JSNNaztl7UnXOnNLAHoxDJCen23YT7CC4=;
	h=To:Subject:From:Message-Id:Date; b=JHESDJr5UC13fm5Anp3jIcFad/7pryEASm65BNzVqb59fkvP3tzDnTyEU90p/rLBIsmwFyxRXzVspFqGqqzvfEyP+W5aq6ic2wjGP0lRvnhyKjVbaqf63SEq+dkuFmJt0rxNNsUZGeU61hrQ0/Mv8Jpyu3KC76ylXFvGVKfZqTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxNyFKbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxNyFKbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F28C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768706633;
	bh=76fZOxLF95JSNNaztl7UnXOnNLAHoxDJCen23YT7CC4=;
	h=To:Subject:From:Date:From;
	b=OxNyFKbzbjBoN0ZrCBBwpc0196xWYdUv9dwG9lJsp2MmX4WdOIxWxw9AvLdnPPo5j
	 lLt0qesiazEFPN5GJPPdVdMJVNbzNGNjoGvS3SupWGUtz9WO1KxugmCLQSGj9OgHVE
	 1fZIRKTllLGPNTNh1wLUofvqU8mVRuE/1yFg1j/mZhp2n2RgUfO08HU2eK2PXjkhYO
	 cCzPsKbTb2RFVHKuAxAocRhXfh8AIOzo4Pt8joEt8KEwil8DIMy27IqnCHqa/SHres
	 5EEovNWiTzhA8nmUdbcqi9BSdsHuaA2kqLhSGmm1LYev6/+nqMOnpuqD/qaTYJ61Lp
	 UB8jkLmfMoFSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25FD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870663357.4451.12004844363900976363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e417dee841bd0e7beb77fbc66773f0701f701b9529cc0f4db96caf9a77d90b9d
Date: Sun, 18 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768706633
