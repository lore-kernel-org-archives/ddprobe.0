Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41ACE1E7C05
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748167194; cv=none; b=Xq8PJO8uiBr7h93NW2CJJDvwDuUhXiaemeFkzfWNjwS3/M2pqvaiPyZhfcapIQccSy//ez+xeC/N477v7wqybn5kAtiReo5k3shuBgz1YR71woJKj3XSsziqmaTac/qEXlvS5vxvEWcaViq19HM/g0PMoDirtuXUSPBTiNTCe5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748167194; c=relaxed/simple;
	bh=sksUGbPK6vEvXwUjpgN99d3wLL2AYJO9pl2mzsSz6Bc=;
	h=To:Subject:From:Message-Id:Date; b=eyBx2JqaAYG6jbt+LYU5H1P8GMOT7DQlEP30URgmknyh0E7XjLAZBJdIdzvvWZjaL0zQ94iJ1DT+z99x651aPTa2J2deYoCJDjYI2QLs9H+YZXazsXqL7pH5zub19z7C8yOogcCUJGetWVwzu/xn13JKIAGbczNGCWBSQBs1a3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+AjqodH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+AjqodH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7582C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748167193;
	bh=sksUGbPK6vEvXwUjpgN99d3wLL2AYJO9pl2mzsSz6Bc=;
	h=To:Subject:From:Date:From;
	b=N+AjqodHrJhUziW1MxK1jn7zgDmSpa7x0BuEVWFfkSkm16lmqTRQCPxyO990YKlQz
	 r4zVizxAJBLTH0FEWdvveJldlVZMyo4EfiHwcgx5RT/W4Ho1Q8m7iK7MRDj0jyi7dO
	 NtbXCgODhTYRKmS4aAk7t4m1h9QAlqHUvm8+xamq4gb5Qt4A/JdLQN16xBjpCthNww
	 P/2wy0I/kTya/XmxWpSl9Oda1rbJixuDUEMJ78FrLH5rj1qyyeKfAAghMsTXeMH6MU
	 UH15PfoH1O5XjNX390/Nay1S8KxBz3hWEN0MCmLHJVmJZB93jIBw5mtFaqMLt+L7ox
	 4PjVPTJE1Zk2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F90C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816719357.29190.5337044420811072637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd1a7655886f01a918e1a939304aac1e9dd29dcc5e9041863d71dc5c33334ad
Date: Sun, 25 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748167193
