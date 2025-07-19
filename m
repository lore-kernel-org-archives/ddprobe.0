Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D86029D05
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752895794; cv=none; b=D/qOvvyDCy3gTBVoLy9cz+7JaAzJ2KAmAA7BtqximCAjMVaBO6A59AIPMIZm9p7T6LrzZSnT+W4r0629p1oTEqI0UXz6E/8UVkH0WPnIhZyIrv0sNARollzlSSyeQZ3lpLYCcF4YsX12www0QhO0S2XhnfnwmxGT/VomZYfus3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752895794; c=relaxed/simple;
	bh=0VVKLYPPacM8+Egqpkl3DQqh5BOqrjf5mty2EITU+SU=;
	h=To:Subject:From:Message-Id:Date; b=r9F1PJKi0hDQZL2yprNObNh+DchBTRVgbB8E7dcvsFs87H89wSgQj8/NJUKTCr/kkWoeKB4yMLGZw4zknEdfPXLiSpd6MS/rHj3kKn7IdrTJRRptqDKVsVSELVhsCW8gQooz2fTBAksh8RebkOPX98Hv85c1yCzLgks/PpvRG9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jheenbfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jheenbfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CE5C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752895793;
	bh=0VVKLYPPacM8+Egqpkl3DQqh5BOqrjf5mty2EITU+SU=;
	h=To:Subject:From:Date:From;
	b=Jheenbfs1yZc1CrZ2xEI9AbBtnTwp3DR2wh8hPzf2X4mL4ZTI+v5/lz7kp07X66DH
	 L4ObBeQL1iDiBrNpJc3gq5LuTQCRAICfaNy4u82dJcRMy8UdWOABO3a0hnvn5GC0bj
	 6Lw5ECSsSYQfb8l30hjwoTkuWNh9msfGTVRW68RsvJDTPqJiFxGaxz6xFpBwcnXtkl
	 rbbJXCIdJqpoB5WJ/ddm/fPDqtmVeR2QHp7Ihv6F0Bg7CCej5kCGYFFIWSUZBGmHr8
	 niUTGbndDwpGxG/8oxPetatB/12DAtCjhkxdMKikQc6PjdShWvDNs9hKhMO6cPIMK6
	 EFTwreMbnLTRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD3C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289579357.470.7400418051146943458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1558ec6237b514369ed541c49b4e468f389865233fbee79c3fe090a86f9b3763
Date: Sat, 19 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752895793
