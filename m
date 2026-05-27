Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450283DE45C
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779871354; cv=none; b=rOr13A0p8hRz1g5H8K+fcmvWFTJObo3xL1/88dCGI80kphAryqExIr8dIjVNuS2BJ2UIqJeW0ldM9iHXmz9Aqc40B1nu+8IUHaVblXodSOaPtiGQCINl8Hnc8V7C+lxqVFAvz3C5GSIdEfYCqFkHyhnCDuiVyP6a+UyeBz8oHdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779871354; c=relaxed/simple;
	bh=kupq3hlf0LEMYpf1OWwWw0Lnfl4MzifAY6n+qvqk22w=;
	h=To:Subject:From:Message-Id:Date; b=O7bKVoG1XeF+/4TVAT/7Wpre/dXvMnPNsci/9ES4bbE5tRvwtfwmXWh6aJIem7ooIvKRbpOklcGbSgzQZnkkMP2tHRxvSONEPhPOYOqp8FZ/JXBJwAozFs4A5QF6eHIut7zlY50bbbIXoOYPVYOTzdBrfDMBiuFybHl5HrSYqgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/UdseSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/UdseSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F8DC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779871353;
	bh=kupq3hlf0LEMYpf1OWwWw0Lnfl4MzifAY6n+qvqk22w=;
	h=To:Subject:From:Date:From;
	b=h/UdseSg1K8yRUEm26lbR5vAheytRpr4rWoHgiL6mHaQWVqjZlVVB7gN1DOyQ7ac+
	 FTVNxdngu/k7EjLPXiuAcpcgwwLWFyH8/gMa5H2eMVzm8Tkt9Elpjg6yk7wVOvZK0l
	 g6/FwlNtcnhSqNFXa7WF097J5KtfQNU0KoBhizE8COMx0xutF49G2n+omVe803M6DU
	 n5JSuH9hm0m+TW+oe0sGUCYiZ1jjQdeokzWJMtfB1QpmwYzA9u8lb8QwJf5vpiYeER
	 Y2uPcCqlzdinezI8lGul8nIh5af5ClpISNP034aUl5ffh71i71L9E5vx+Hp2k1KYNH
	 fplgTYk81kPRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C9DCD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987135373.13166.11438518371151108368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb134acf6352b323f465ce8504431b249d76913bff74330009dd5a3082989b8
Date: Wed, 27 May 2026 08:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779871353
