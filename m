Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A66282F30
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781044534; cv=none; b=KF+g/fiTr5GPboDXe2r0PMJYWLx5tLtaFwUNWe0QjYFBPld7ORvuYFWyHjkqGgtNOQ2JpbiguZJnUzQR/P8LpAdu3s0Ws0QP890Y6RE+5qUF37suiVH6PiAdOpcWA2VwDp3Wv0LBjkIEzbHPpBwHOKLdoyztWtP3wwPP4HRzWXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781044534; c=relaxed/simple;
	bh=4lwx0bBB2ePgilV40PYg/lF9kUMNYQ5/3/mwoq4gL6Q=;
	h=To:Subject:From:Message-Id:Date; b=DrFhsXw9nyHIcXdPyMqlxCmBXDF/RXpOiQ0X4V52j/2/g0SFk/r4oTMSPsOzXPGZddCGoKW71SdbV7U8inFiPDGBv/10eYJIQ4G8QabrQpKsFE4mgWZGYtY/MbN3IAgaSiDI1AxA+yzjcPyByQet5yvVCJdoBVJMYdd5mT7JK4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7+RfGl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7+RfGl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C80C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781044533;
	bh=4lwx0bBB2ePgilV40PYg/lF9kUMNYQ5/3/mwoq4gL6Q=;
	h=To:Subject:From:Date:From;
	b=r7+RfGl2GJBgf9USipgd3tjU35ATA+mqVmugWFtHWi4BTXg+pggGo11rBcbStwVqS
	 6gxXEYu+OIhp8jqPMR1JVjYxPoJHB70dv6hUfA5td3tjjaY47TiNGk5YND5nadSSjC
	 jbg3HJy3IdT0SydNqDqegAXpTYbhv1v2sh0xe8wG/9ZUIh+W9qbVkUzN/KTgZf4LmD
	 RZOkgiyD7v2rvPye/kjrdTLF41fFpOnyB2C+v5iQKZLw4/xJhCcAPvLdiIC4VkS+/D
	 iQ1liBo0C/a9GFMAoxUbDhiSIWHxkU4czEEg7/ZjXHv3fY4urQCPx3uqDBWNFdtFem
	 MJyVf81n1ODkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4875CD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104453368.2887.4543464116205650047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44824a3949e1186653f7114f371214d6bfd25088b559cae2d5e55d30871a5c47
Date: Tue, 09 Jun 2026 22:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781044533
