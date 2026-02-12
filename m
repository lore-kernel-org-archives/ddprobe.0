Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2481C335072
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770936894; cv=none; b=Wv8vMQjvhWjkmP475eEDusxZLiWPJX5xa5qOi2H6akN/zqTgQxXKLyMH4ADjJRYlesbJ9smmQagnXpixhPaFWfElbb6lCbkKugeL6LgTHZC3RELQCNexEY0045vX158fy7PWMNi8LKCgryuevMRPxbN9vHFrlW17cgL3nvXGLNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770936894; c=relaxed/simple;
	bh=vJy2hcGZHeFohdnY9pWiV4cxOhcC/m8iP06J+/c3e7M=;
	h=To:Subject:From:Message-Id:Date; b=Tfo2dZnJRrvFUEX7urTSG61UlXr8Wndu0Luy01/kvs0yQUQQe1QdN/P0cGd0aXVrOsV4mWrQf/r7iWpbDPOLtekUffvakj4LhjtB8fkuytio+xF4n2djYmsA5K1gpvMxic6NQQ0Ol0VCzG83ljO7Jj99KIMeyDfXmqZ6aSBAXkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M82Qf8U2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M82Qf8U2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB40C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770936893;
	bh=vJy2hcGZHeFohdnY9pWiV4cxOhcC/m8iP06J+/c3e7M=;
	h=To:Subject:From:Date:From;
	b=M82Qf8U2GebzbUYIEiy90MTMu4oX52aL07+cWuJFD2OxllyDkQsQhSsOwbr1H8gpD
	 VNvPTnufQA/JHDiGAWLe8WSIs1Lq6QuT0cZCa5NYjehn40Epgx5xg/M8yKnJs+mEJ2
	 WTvY1uQiLqudeHCiDT9Sp/1rFEcasUZmDLgYg/rkHJ/jON99eb0gwdwtO56e5Zff5R
	 fMt6YnviVE8nbIl/8l9xeeXDPMIHbThJmqrxb6OEL2vcdVCPN967D/JRCi6evhJ1Qc
	 tjaIbWucJh9VAo/S7DZkXMLT/0lIDLh6NXqZ6UXsps5rc6AkyR/viqU2NlvSmPCEtV
	 ev+CoRAuZe/Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C1BEEA869
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093689359.11163.9958841258111586533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79352361b747e5f4762cd5a44fabf417bc0bcbe48aa886fb773b93888b3b21dc
Date: Thu, 12 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770936893
