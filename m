Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1603CB8E9
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787123434; cv=none; b=vAE77PHJ7sbJx2RThH6pwyMZfR3XZCxNVH3EpENSVE7AiUpUVNI2qUTypIU89TZpQ2x4MH0p9sK2ICB+O/zek/BPRa49krLiyKRHULuB9s3o98L3v6LDTvddwlm5Rr/Jxi51du/IQ9Z73nBlvaaxrztyGuFXQRxm0k6F46XLSxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787123434; c=relaxed/simple;
	bh=4t8CvzPbWn/XCkIMaOVVxh9LwbfMZzdQKbmdbv1iUIc=;
	h=To:Subject:From:Message-Id:Date; b=o2DiQ/KD1L+UtDRCHBt2pAR6CGWYcvaIfQBuyPIZS7IbMEGlUNVfihcs3wpN3wMCvAo386gBdKcGwcd7AtnJSOOJzuroN1vQzj9p8vjiEcqQKgo6qNzIQcJEr6eYozPHvu6Fn1K3gmhi6vQCY6BpkwSfIWzSMtTCAemSLIz1T84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ni/eOksq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ni/eOksq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C662FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787123433;
	bh=4t8CvzPbWn/XCkIMaOVVxh9LwbfMZzdQKbmdbv1iUIc=;
	h=To:Subject:From:Date:From;
	b=ni/eOksqsiMKAY59CoXFot+pSoIQL8cRZQ39LBON4SvEv/1Vnp9GSMmnXSwoj5IPu
	 cvfJMNmL0bcPc/JdFlbo4omuaja3rBYWUZ64G/KpTwD2yjJhj/OIxinpIJrA/bspdy
	 YBGBSLhtE5ZsdQELiz4XtmABgAbzOTzn+dZgua+Wpk1ePeNAA2ydqnf7B5HeOhFqAh
	 a5cQfXMwHw8Ew0K339jLKr9djaU0bwHsjzV7q6hCRaz0YV1LLfimgIM6Y5ZRs3RVgi
	 QS9Eqj5kc/V3cwN0PIOWY7GNO+nsfwU0i1Lm4Go+Z7rpH9Ozbg1Q2lqRimzWKVdFG6
	 pFeYcxh7HnIyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC934C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712343369.6314.9346600714939742132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69dea0f15f40b2c7ece6b6acc02565f1dc5983caa8bef066fca853872cf15db7
Date: Wed, 19 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787123433
