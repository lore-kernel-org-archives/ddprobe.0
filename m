Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B823F4105
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792404634; cv=none; b=JzPqRuJL4XU3Ck9Zu6oZyygz8TGQb6/z1RjXD+aeNEEHWHzrQUU5kdCi4n/i6W0eHjcyf1q2R1mdDTWFyVOVtvNgDoPxUviOdJBqCgelFXGlZGjShG4HMWimpHD5PyeIsMNJEpO2RhOG9+2M9cF5cQAGKTDCiX/3kFVAZvlhPjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792404634; c=relaxed/simple;
	bh=cT+rl9Kb/JZ/7LL9U16JMyE8GaxVLGIpbnpoK+aZSdI=;
	h=To:Subject:From:Message-Id:Date; b=Pl2grCYlqoKpFE3UvmBK8cyJos1bx3OD6OdC5LWy/zGlBcVpg+lPC0z1ULYEchhEaavN7dEDn6Pb9opm+JlGhHqVrnL1Nzc7TpfF53rE+NEYRdICaAAAH9kjtJkOEACmjMUZJrg0JG0PKEzyNv77fl/4gmJ4BnzYY8B+ntRz+fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D76e8JWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D76e8JWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE19EC2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792404633;
	bh=cT+rl9Kb/JZ/7LL9U16JMyE8GaxVLGIpbnpoK+aZSdI=;
	h=To:Subject:From:Date:From;
	b=D76e8JWRGuWkP7eupSCcFhRVebPq201odjtw34IgMV17RIoUKwqirmXpkfjLP0WXw
	 fDs8juKZq/QrM22lPzLyzcJLUAN1cSSHi+quineEeaLPhYHrMMOnBz2X5Odf5RhShO
	 iw+js8dw2ReWGjKwDlPt7j5X+6f/SibVTClDUCSuI82eoxg36Ufw9fRRnzppmh7OAi
	 iNpr5ycxr+zx6fcb2ZpdFHZop3wRULVA3f2aGSr8YG1SS74XiI3avX9vsO1H/pGZwz
	 FExAW6EStyKxoggD/XFAVEOldwiAt9n4+rLmBH7cYpaLsbxt0PqFB692SkCA4ByhKN
	 dvall2Y2jPRAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F74CCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240463374.9719.13734740941568973499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55b80c768c3e623499cee875610efe0b1d14cf4b01561a9332f4417c46665f12
Date: Mon, 19 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792404633
