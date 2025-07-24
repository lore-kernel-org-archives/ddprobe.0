Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4461F1C84D0
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753352995; cv=none; b=F18Olr7aiBwhyDvlF+6DJHZ38sihOUA6g1F+BD+arXY0Je4NvlPyL3WKKFcsbgplqm9yhmAUC2aDKRUrOjwa8WIqiVeVwN/0ycCmKfIoC6r4Jt5uyP97zzqnG9YN4h8+8nJkHXVlb/ktHal+Hgc6hynh6m749keMZhqDp7Bq/+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753352995; c=relaxed/simple;
	bh=+PdWP+tHLeu28lFNrUsE9kqajpfTvDf1vbZe9C20PGQ=;
	h=To:Subject:From:Message-Id:Date; b=J5bIm/pQsJtElJY5TuP4vqoRWtjnIZd47d2ZSIz4FE5fiR6m6lbFZVtC6Qh51RSgXcrGL6g1oyPFW95MtRs4wWRvt5aTWIfpn+tuEjf038LjpYWVec18jDGrEctLAQP8tu/V9I7pPzNVElPMSD3kTlWFxgi/bViVB2ZtVt9XGFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MylF0s37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MylF0s37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DBDC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753352994;
	bh=+PdWP+tHLeu28lFNrUsE9kqajpfTvDf1vbZe9C20PGQ=;
	h=To:Subject:From:Date:From;
	b=MylF0s37mmwvnTVfufWjt+mnnTC0VLiH8cHaOHrbISPFXGBD1h4JtPCLTwMu94cHK
	 ScUb8KSX2Xjnddd1FIthEUmCailNlr9rPBCfU59UUjRByZcO8wYC2l+i4GBg25DCLU
	 7PM3rurC8+XW42qw3MYwaPgzXrlvz9xDFupbsI5+oYDr1sMHXA6eVV2vNwRwYuphf8
	 yeULvM+5D4g3qYsI3k6gh7nBVzf81MzmVAOUml8eg7MEBdliGQhOwAAK5jvr9h6eyR
	 zCpuDnQvZPvffZpH4L2RFqnl11FWMQ+Ko+k5J+KivmYP2Dy70O3NgUA8LJ3+RTVGcL
	 ERLB2DCIfMjXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C32C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335299361.3347.14944280566570195257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822e43aa28d21cc434637fc3b0041a4f736ccf1d42ff716affae3caf6d53a8dd
Date: Thu, 24 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753352993
