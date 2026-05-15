Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE124C97
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778806234; cv=none; b=GIGtDIxPrb56cyn5Rc1T7j/QCSAW3S19MOK5/S9nurQzMcLxYEPlr0X5URYhX+CPHmXOr2ZWp6NzUtPsFEYvq5H1d+2m4In1XDGhbLH7bTEI11y2Ham5oF/foLE4o9mH8XEot1yedAKmkzbljdknFJnVxyF8+iWqDk6esIa6uCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778806234; c=relaxed/simple;
	bh=4y05BvsyiNcUhcrBFXd8/ydNuKfr4Vnmfxs2dJJwYjk=;
	h=To:Subject:From:Message-Id:Date; b=ZO6WN5ulmXUI434U1OiHZFk+Waaa0i14DSqPX0kd4Q40KZnhprC2w6EFGYpkpI/YpIWIJ14kDtmwVGQx1uN0QBf285E0ZyDag9LmOSNRF7ZxypaAN5CAAXeKuDfK4k4nVxooWXzJUPOjhC6OtSSLhKavm5XZj9bE6NwdfIkt3NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJ96zYVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJ96zYVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51A4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778806233;
	bh=4y05BvsyiNcUhcrBFXd8/ydNuKfr4Vnmfxs2dJJwYjk=;
	h=To:Subject:From:Date:From;
	b=cJ96zYVNwe82uIxMWj6vfWneph2xi4Ku81ok0qWkBMwoeGtDWMCnqqEzxlGhs+tyf
	 ajbsOqw27tmLtBWRzi+ib0O7byfjyTcYw+wdIrvSe2U0PgAKmbTysfCWjGOrF3aSrx
	 FsdR6bHBNu5cJ7SZ1ThN2Ctj1l6s0/yvueYgjrpozAZNUwKsCpI9iIQ3FRPTbybQOR
	 4ku4MU//EVlLRFiLQKGgiU5AE2/nrEXNV+6i5YNrcGAwHa0Sc5PsYW4zVqyaE5ljuB
	 IDvUQbMdzjowdhAMnMYTMfJPy2rtM2NYU0MGOuJjwdtklmIN2yWD47FAtlB6s1bnOA
	 EjEyAGfoLrmcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BF4CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880623369.13699.13301505987242225758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283914da12ecdc8852af1e21c4000a5c59f082c46b9cbf73426aba16867049af
Date: Fri, 15 May 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778806233
