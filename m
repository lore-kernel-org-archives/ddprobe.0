Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629BC15381F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718701163; cv=none; b=dJb4KBpdtoF1RTK/+/qnrMOdGxyq5pMd3OnBd5Y5F8AO894M7Pz6p7qy2Bx9mSM+dIgn2JN0+9bg+4anAzInYaD7FBNkHO4moT+MBG8C3hiha2c/M0WXa54eF1IqcH1zIzhkFbUURoo6DcZ72fOZpIY10l2fcdcBnACZ9wz8aPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718701163; c=relaxed/simple;
	bh=hFcmqPHZZuLEfmvZtmutRYDh0s/pS7lmlbPatpgPro8=;
	h=To:Subject:From:Message-Id:Date; b=YaYFvIoxhREIFOrePRruKOeVCN0mSzFuwfDHA9isNpMjtSFkCLKoNPW9hLYl7we7RMwZ8r+cylgoWuQxI9zZxBT5DobkHdgqcOhKqJqXoefl/8UF1sFTNlow+pHVbWlapRF/YIrYeQnYcUIsSxU/jR4/s84KaCGSy9YNS72pUYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPXlCWg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPXlCWg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 019DBC4AF1D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718701163;
	bh=hFcmqPHZZuLEfmvZtmutRYDh0s/pS7lmlbPatpgPro8=;
	h=To:Subject:From:Date:From;
	b=fPXlCWg9HBvNjYrWF8mpRvXEbGZqWCnmyx4BjtFQ2UA9W7EsVvnlZyXOThwzdPGT8
	 Ilh4sdWwzhuMyP+a13r1HOcGqdFg1NDdgV9pe0EOaF9eX8M0YSJjbkzwHiK344WWl2
	 mC3o0Yr/v4Jzb3XPu3LtfroovdGaNuc+yX0Mq1fmmIDbl5X9GhvNkq+z9gViMP64Xs
	 Y9E00LKZ9GU1yT7KeFr8mrRwMmIP026MogzC+P7hqsasPRA/pbBVLCIdRoHs0jyK7u
	 07JoV0C2x/UV/fBpBQm/rGYi0KQDUWvuEmC0VEQ5k0S6dCXOd03RaI93whOx4OP24y
	 qhnQGkhJBg/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF3CC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870116289.15973.5251442100803859631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86dea7f335915925293183f350aee53210374180c80c3349f9772c4646e06957
Date: Tue, 18 Jun 2024 08:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718701162
