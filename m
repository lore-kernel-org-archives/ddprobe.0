Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C8B171653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719869123; cv=none; b=CI5EQX3NmX7KF6sleqnzHJvP4pg03p4SbC8X29ZpHVvy+PtDebN7etp7yjSH/JXYll5QXww/8RrpRP26AIXOtN06lb6Y7JBJCRL2B+/sC9Olh1C31zZLnR9gx3jhaiDe8p0APBuFxl8MizwsOAbNJui1hriw4HTYGfGpGFx1Aig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719869123; c=relaxed/simple;
	bh=8KXRLk2ptpXy4IW/AK1LopTLGip51GiK5jm5eAo8ixg=;
	h=To:Subject:From:Message-Id:Date; b=qAuw2b1ouVs++cb99MEveWzN23j0Rahk5TK/j5tGwVVjMlnaMhgysHn3hcs13nYpp78BnAV7ggIeG0blC72nxRNMdvkc8qROlVUDbfj+pP/hLVhQBTAzxrpOoOY3TVXoDT0Om8hxoY1kHkboPmBT/3PwB/XEimL7/5Lk+bB1+yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2V3V86T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2V3V86T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAADC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719869122;
	bh=8KXRLk2ptpXy4IW/AK1LopTLGip51GiK5jm5eAo8ixg=;
	h=To:Subject:From:Date:From;
	b=b2V3V86TlobSrIbTeT3y6Dx1W0HxzJwkaevJlP44xjhxxj3gz99GqhsD/CmookKAF
	 jTcXkhIZ2KJ2ey3S6bgfKszQVQy9/8oequD8AZWTUeGCTwuF5AkvKfAGb5K0YlOzxM
	 /zAD1xt4LQgyj6gnZ079FYrfYSrPhCptpmjpv0CQZJiZL09zR2Yd/VkahR6UwIGKUa
	 Jk9keuiekSCSIraptgtVx7liipo63P/QIDcD5eX7ouqhUvlJ81BDCiaTGHaUMtrCJP
	 kZv/TlEE+x/vW71zr4d9fET5EAXF8K+ed3gIKHsbePBmIweFb8RF/U+0Vt928YwLov
	 sCaMwkkRWfHeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2B8C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986912276.14288.13534407455875825431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee998266c674089a895ee8b3df8918a5b1b520cf24aa0a48ccb109686a27197
Date: Mon, 01 Jul 2024 21:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719869122
