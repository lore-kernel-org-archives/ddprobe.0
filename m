Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1F62F616B
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773987894; cv=none; b=lIWi9aETCjgE0EBhfQp11yrbhjqMJHJ2/+S6IYLRAxFwliyogXT4aG6HUwOdm8T531J3mMcay+5Nc1DDXcWXLb2wWZmcPPOEzwmI/b/etrEqGdyAm9q/WRiMYwR3VsRnuFzvZj/6EHdy6zMnMjUfwgXCLP0dhfa5fEoJGlKLE0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773987894; c=relaxed/simple;
	bh=hYqAGhRadTI9X4PuEIIqVsp1UiJO8On6UnmsMuusaqw=;
	h=To:Subject:From:Message-Id:Date; b=ackA/lgnQ4FNklMMFzsZ3Uxu9pz5ocIBqmTfrrDZ/DKfAgjOffob2/8tpUR4qBQhbptLMotngRLBbSyBExpOy5trLgawqIpJ0zSM0ciE+FlvJZUoP0x0vLzafUnj/vjbGE4nxI1/HbjjMgZj5yLR55Q8lu6eWkk3n16yGnDlAkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRVc17Mt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRVc17Mt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABABAC19425
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773987893;
	bh=hYqAGhRadTI9X4PuEIIqVsp1UiJO8On6UnmsMuusaqw=;
	h=To:Subject:From:Date:From;
	b=mRVc17Mt2VvhjyoHeV0ax9Df6D8m3HWq3KTxsS3rFTFUUipJ/obigdZOTYARWRNcu
	 JF2LNCtqvrlk8gjoFicCXGDeQEFSQaiqjeLma6xvMZC0wDdv+PYx4JU/1M5whUdrZz
	 LpCFoafwHuCS8aPnkVNeb5lgb60lg4vbFxA578c0ldwfaUQ9S4Rk4IdD3WhgCsoMdR
	 RK9tAvRSNKBuXfrARqtKM6hpNc0LrWn1pWzwojS7TimoEdjE50cfU4BUT9Y9PrY5xF
	 6v9nUcK5Q1+1A1KxocjppKBySgreQ9SVmTpzaZidkcys1jM3ddfueYNSo3vuRAI7a1
	 3vQ4nmk9b0eJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999E71093177
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398789359.7516.4009116751746511624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fccf34a6fd987f2639c8cdeac716c0c576414dc56ce0ead752409b61bc5e413
Date: Fri, 20 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773987893
