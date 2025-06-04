Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38ECA2F22
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749012594; cv=none; b=A+vRZvzggCNY0Lz6uGDrulCtIxq4ns//cOr0Fg7rxR58EAkuiFOiRTNK1Ys8LZYDzCYQaFD7ki6nuzlmKOlVIZo5MrGTGmez7EQNO3FFgz/dms+9qekHa+mU/Im3y6MO8Cui0hw8IEWCKd41UOtZuMI742A8Jhk68+201Hz1jNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749012594; c=relaxed/simple;
	bh=1C4LewJ+3VBSu84w3sKmnLLQHA9KchO2SDC8CDhvVZE=;
	h=To:Subject:From:Message-Id:Date; b=WwikRZo3Fy32eix3LM6u0xqPhfvFLEyo0OKQemy2/DPlUHUVxUTk75Zh9je/yyDpSngCFt7Rl80RUqaosINaXG0LzlcpSciP28VoEdxYLP613wQtFmqNW+5xOfM11ZuwlP0PWMz5SWg/cFM+0n4/OLQzRIiVT6v0uvmirJwDy2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3BJYw5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3BJYw5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42B0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749012593;
	bh=1C4LewJ+3VBSu84w3sKmnLLQHA9KchO2SDC8CDhvVZE=;
	h=To:Subject:From:Date:From;
	b=p3BJYw5/JnhT6uzKjjxof+BlIydOfIFEGzo22zL08CL8++obeQdhn6VguD2m1cy81
	 6o6l0cw9CQM/OHFP8MivJ3iM9Do+CXW1M7rWoX1ppnh55GEGUlScTKglK1J0F/+qHO
	 4ts3SEq04tw3BqEKSWYMVGuHoQ978Wz2RncucaYl3OeDjnoYZGT2BUWyhSA68dV4ay
	 Ruo/+tRZDFA+hnx9ETfoq1sbm5dgfuJgb/xCKGZ9ewN/tgwVQ8HbR6BNR/N8rnqRmz
	 HDZ5XVaJnLZuUIL1vC9fbbF+u4Hc+mJUZKU1NeZY3pcXecgpx0EO5HOW7o1qIJeLyx
	 5xsMcppy49AcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA5C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901259358.10405.986492444402746441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3003da6108eb22ca6e55fa13105bce6a5ae763b30193cc47190acbf8e8982e
Date: Wed, 04 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749012593
