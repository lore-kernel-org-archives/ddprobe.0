Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFDB274FDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763008194; cv=none; b=p5cs13ZRdcwH3cTOimw7fyhIwU6jmag9GS7bdR4e1YLQC9a8dOHA9ids0BGatGM6thmLQOEoP6gLRsYJaTrK4hp2P1Hs7NKcA/SalURZJ1HOA+XnKJhmC+E9czixWinnKSkbhqn07IoqmJQH3KSBWsSyS8JDI0QpetEpOlhX4Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763008194; c=relaxed/simple;
	bh=0Nd2gtlWu8J0J6d/CEMdT7OE+z9qLaYwAGoGhAgXi4I=;
	h=To:Subject:From:Message-Id:Date; b=iYGKQLN/bgQD2aFfcz8ITk8Z2b+sM8Bn5o96t+yxCSMvIHWROXkL/poQXYjAJAhdzBfJ0rs1mCem7awwETJKRUdvY2OTUZh5naaAxyI6ewGMPeCVXyNGY9to2iiIGpVyo+VB08rTUjT9t4fHT04KnZdoyYA2Ogl7xGVn5tWgFUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1WT+agk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1WT+agk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E8CC116D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763008193;
	bh=0Nd2gtlWu8J0J6d/CEMdT7OE+z9qLaYwAGoGhAgXi4I=;
	h=To:Subject:From:Date:From;
	b=P1WT+agkYnx9WcVCUGMoHJpSnQK7ubz0I37Fm2DCITfGMuUPATqJa1BWG1y+JGD7+
	 4ZLp6x+isvpwQMF9FmMXfQ4WgJ6Ox0/Pq9Pz44lkImq3AemB1H5tR1gMmyd/73fuk4
	 +yX2se3bVCXi+RoIBUJOB1zatSgsF5xTusvDZU1OYEWXRHZIKG5teIH3MX7R4x0S4X
	 Xrhx0Hrt7nf8zKXBWXkYRPoSaAa8feq2VCAou2mSbM/bb47NbH0qMxQko/Y9Li33Jt
	 PdAucJHDlr3CV8EM+6IEi9L0mzCaCcWjtPaVUvUl1EvAoukLZmSuNnqnov2vKqh81P
	 lXx3pH/NM6vjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B34CCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300819358.16294.6404444643234669967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db12cfefb64a505561f1f30b6c6fe754c646b624204a65a1622b8912fc41fff7
Date: Thu, 13 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763008193
