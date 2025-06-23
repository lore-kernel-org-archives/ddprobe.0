Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7CA248176
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750681194; cv=none; b=MqzWEXGR260kjvM6yu52BFc5cGDN8mWYUwhVM0e6u5TuV68qngdhpPV6FGBTd/G8dDxO+SjgfD+XIUr8x+Dhr7Fn/oJyJmMLYUAyIt+wAstpIFKoR8Q/ZCSqyhcVqQbgEcV/0s7BsRKRpoWziWCKNdOg6kvI7aCtHb49hcfCYg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750681194; c=relaxed/simple;
	bh=PapgDdqLZqnjy9vKLl8U5GgD+zvtgt5GoFbmW+Q+UsE=;
	h=To:Subject:From:Message-Id:Date; b=omk6E0l1Cq3emS7IFaxSBJhO8msLOU8eKMX5oIjzNydEmt/3Fp/YKbrpcEl3l02z8Jbv8t9tj8LNEcfJ833nujSbemsobA+sH+yVv6xoFeLK5Bll60IAkxszM7TQ687EoJrzVi9aQ+8/9an0r0b+H9RqzHYAAfjm1IL8ndhgBNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F25KTs1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F25KTs1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E10C4CEF2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750681193;
	bh=PapgDdqLZqnjy9vKLl8U5GgD+zvtgt5GoFbmW+Q+UsE=;
	h=To:Subject:From:Date:From;
	b=F25KTs1fMmB6mTvxL7is0YwGpbl7pr/C//mTZXeG2xwrHFTb1JutBmLpkqhy276gY
	 6doefz3L0/QV+/pU7Y0GQ73jRbLVMThRAhVXIEfDjYtX+f3e5oeALnhwHBvLzWFbX1
	 ZR6IvAoiBJLTfsD0AT/vjka1itQ8mKGrIo10EKZqRTx3954DY9oc8aPbJtW0zUC0Kl
	 DiLOqZr9pm+92lBB0wS+Zx3i/EWgCuw9dxEcxHm+gBoGPH7PN4jafvQvUFUG4iZxbS
	 ImsqgXCb+6AadJDypxVtXc2a3tGOh01zslrEMRh0kwQ2GhUzjcKVxQVkO2Ch4ijntg
	 0DphLwh7IbYaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90056C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068119358.8985.1439883413176000786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed0128435c6d0a8a87295399813713e436a2e060ab0979bf24a545a69703f7c
Date: Mon, 23 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750681193
