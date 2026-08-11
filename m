Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC4A28CF5F
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786422034; cv=none; b=FU7UOtOFUGzxRz+6IPawGV2gxUDXFvW7zzi/nVbZjq7v2Qvw0aHGeFVvH7nRCMCLvjP8RbjKcCmxT8PZq5bGm3RDUyYd+FBv3cB+KK7XRurroARs/sewGrwSLJLMtnScy8N+tfQ3NvgNlzteVtEKawnlpDAQSJOu+dFqhtZaZNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786422034; c=relaxed/simple;
	bh=wCdSh2L4MjxE1jDjRSMjTAUB3hkK+ZHLjE6gMDgsRlc=;
	h=To:Subject:From:Message-Id:Date; b=lmX0g6NH6mcyF+zP3vgGLvWjcX/jr3sgPwpiWxU5MXHDoibDk/SxfHIaEtvnLlAXBcGHaWk4+xzAGoDIIqPu/b4/kXZU1W5ot9mBWIXV7hZM9GqOWoImRnp0DXG+BnqcozkcPJ6RAvvz/h3H41D1VMb5D9b2nyceSKto7n3voxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szDLEAIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szDLEAIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DD2C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786422033;
	bh=wCdSh2L4MjxE1jDjRSMjTAUB3hkK+ZHLjE6gMDgsRlc=;
	h=To:Subject:From:Date:From;
	b=szDLEAIr0D64cVrMSrTrnX4/LKzGRrb6m1cEvgHTa4QYnDoy1t3m5KNcfVsS9GRtL
	 Bilv/Y2bsCqcwYkOr2uoIEPQFqeXJ4gNu8neXcX/lzGu7tWQAOPQE0IOwZJoRSUyGe
	 0trPuPpmA9Y2pLpnKvDLZ8YZbvrBwVD2VsIPI6ImCnzqE6si71++SXl8608WrJz/FI
	 xiVMLD7EKlM+MV1O/MT0AG6Q3rbiiuYpcn731acaFFPDG3y5tUVspQJOKdyZuywWVi
	 RsY/sZvrSqBtHU8KIxG7tOU+VMxd/u5P/PpsTR5WikVxQ6apdkkycyPTZO7wxv592V
	 TA+Bth5JKLmLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD71CC5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642203370.24835.5392444338767050660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f9ca91861f9d69130772da6b3da5899fba5d7e078668d0963b817bf49ec88a
Date: Tue, 11 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786422033
