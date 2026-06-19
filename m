Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B415846F
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781867194; cv=none; b=iRuJ2EbwXv6MWdrNNFqiD4nLymUNBzZ/qUuctit1+QjX2hus4lF5U3VLYXLuVe6JT3DvphLYn7v69/Ai2t6SII+TxgqKQJwtEs4/6XRZb/XlLZDXwkZcCNc4fj3uRzIgkwiFBgjeS39CdS2IKDEdEfiWZnT9rfXheaNx3/FV49M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781867194; c=relaxed/simple;
	bh=A5P9E+5rCyl5r+X0rxfPMcGIfM4LB+j2jwPlrqpoixY=;
	h=To:Subject:From:Message-Id:Date; b=Ey+G4c4phTxc5MIaDJ+yteo4h7cpuTFWG9g/mNZpimHvc03lf82c1BCWisbUtbJhiv/tRhcJh5YolzvP6t98pbgZN4grm/UyiAFPeuO8o6bT/jB8W9OlarL64BwNf9aw9yK/xq/XfPFa17xKnG80wJPegNtv6tVOwWSBmUjk2Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaEjdb6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaEjdb6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02A9C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781867193;
	bh=A5P9E+5rCyl5r+X0rxfPMcGIfM4LB+j2jwPlrqpoixY=;
	h=To:Subject:From:Date:From;
	b=FaEjdb6BsmLBx3d2pJZryDOYOTlrdfS/I+8tOVWNPU5Opubk9EUW08A5fEk9Ni8Hp
	 thyAjRHAf3xENpMcQiA86f7ABAThHRjwn2SECoSpG2w78j4xPxqtcTgvgCRiVFQM1X
	 8UUTuoEU8Bw6S4JWhjvDm+8CWKBZZULEbOwR1ZxObn2+rGpu09KumJ8eayAHiBhi6R
	 7LNvDNAafigBjX66HTpv2tuWy5/WaNepbRofIyqR07YY36sp1CjMPj2VjWIxN3tjeF
	 fT1cNO3Vaz2/0ObTmvP6HWV32fmWFE5qKlxKV3l34GSHnFB1KtY7mLWVumIke2JMw2
	 uhsK/nQldoPbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E27CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186719371.14807.10451125641272981868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964667298a53c4897f625cb8ded739a6f965a7176f0932fabe780d44b0ecb2be
Date: Fri, 19 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781867193
