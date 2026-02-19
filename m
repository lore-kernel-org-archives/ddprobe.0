Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9E12F83B7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771511694; cv=none; b=NFAD49HCsfzoErgtT7u5dLm6czxeD8/Ift+U6KUSAq7GZXgOsj9cone6Yn9ZDMraTNpolSSxX83zmZC+jc/elyc6gbigJjDr4+M/cnxp7Yye0sqOoxsnHDL/Ddxk1y3X8AeA6GC8bCwsy+YGV11lWvXkx3eeWbUUb2hoOL29SQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771511694; c=relaxed/simple;
	bh=3ljIdrMf1N2/0VX4739kpKfQksae1PG8tAExSRbBse4=;
	h=To:Subject:From:Message-Id:Date; b=Z35uU2HGDodwPR4anzcJbQp49RPO85BzvOPkGQDch8d5yUs7OKWkvNPL2BnZAhAqEjQ0q1l5NvGwFvVB1T+e4DeadigiKZlVGJ6YjqVcon2AOmtFHPb+PHFFD3GZQGDM3WSBECul3/sr63Zo/aNcn59nz5PJZt6y6/CNxhOwhKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R25JEhhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R25JEhhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99F1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771511693;
	bh=3ljIdrMf1N2/0VX4739kpKfQksae1PG8tAExSRbBse4=;
	h=To:Subject:From:Date:From;
	b=R25JEhhYeVjwIFLpOQf7GhlFlGYvRvFa/Hll0QwyoKZBRw79wVkS85lGpcnzuUgOV
	 4ezPrFe5hVgq3B72Qinzv0DuWFcmzhYn9Mx548tLf++8/qft3T1zeOyNPUiJyddtp0
	 BEOkldSs3EoB/2dggSPvlFukjrYATme5kw+m1+rLyrSZffnjbTwKWKjZuZbxEs95uH
	 3ezvD20R7PrBqDO57q/9oDbj+xUGoKCxdZRNM3rVsj1goF2mLqDPgrtZ+6uWS20Lvl
	 8d+q+4FMYLBjzPW8rWZCJ5v/hQcfC9hvW+ZLUEEdnWfO0ucpspTly287P87AoU1xtQ
	 JcEZOBcx4G2kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A506BE9A04A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151169366.32437.9359551190374287536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53222bfbba30fcdc6323e11454ae2b1c263a26b445cb2d73eb883a5616f410c2
Date: Thu, 19 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771511693
