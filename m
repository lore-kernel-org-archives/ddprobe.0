Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE827E8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 00:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721261123; cv=none; b=J9kCaKQBxyqTkW2Vm+REMnkMT94bQIU7ZYSHFIduF3Zay8ijucjqlP148OahD2sTJMVcoTtgi4f8qz5Sll2XN6/ryz8+6yUQHeDezCJUE+IIM3ut7AIRwk7v9ZpJCGaiptu7EHiUBiXR4w41jUmyCPi8AIF79bgHN3K6d0HG1Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721261123; c=relaxed/simple;
	bh=FF7ni2kAVlcj/Ip6DDyAb9ESUqDhc/jEL1Yv3f7MXF0=;
	h=To:Subject:From:Message-Id:Date; b=D12TPOvMkXxxEEcmz2nkNmtwUk4DFs72Usw8JTRwV+te7Fp82TP9f80oYslBWcsKxbhF0Pr4VRcicQ+ISSWPbgObp2qUUDfzFkD5yaS9mOXXGaH/qt4HdvThLsVZMR4TB14EJSnB5Uj5Vei9EJW4ecPdQzX0ueWlMH7RMrvXa/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqhvizIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqhvizIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7B7C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 00:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721261122;
	bh=FF7ni2kAVlcj/Ip6DDyAb9ESUqDhc/jEL1Yv3f7MXF0=;
	h=To:Subject:From:Date:From;
	b=PqhvizIEKHAESjhsQrzWJUzaFdc2YwJkYSiMExdJZG+2eWar1wvoaug/NPvZ0ZMG6
	 A+HTSbmsBUmyljtqbZlYWaLreNk4dslOwAQq9Tsk91QNPO/8wdCtvjW2Fa2LTKLl38
	 XdE1jjW7wIGmHp03/B55awaSPhSbU/Ge0UtAIeDh3pBwhhuJAU5yBe21JauJij4H7v
	 LiCERi6QqDVCUyTzi+ZGBjKT1f+WkBAo5w98S0STkcERZyCIV5BEulsthbtqIZOxuA
	 XE/20JBGo2UxZfjjekxFW1sQnQuBWh80soHwFucOmxXObl/rnszS5wfVJqyguYjnt6
	 SCkGK6uHXZJlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC06C3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 00:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172126112276.5385.9309054242112123751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6164c71f7772df20fa3fcbbfe48536dc1c6cacc00af5d56b86d15f3e157ba80c
Date: Thu, 18 Jul 2024 00:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721261122
