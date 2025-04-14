Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3554218DB1E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744631995; cv=none; b=OTLDfc48RhPghL9hWr4mojPnPeZleB8mWKpq/OCBEz3IYHs2DcHyYC7Opx9IIDz6P+157OuIKScjKoTAGsA4awLGiZgDPlR2Y7vcCfWDIvB+mAA30tK3pnY1nQqSLP1Si0R42FXqaSJbSagaEcNbf543i2GCuQbZeQdSelMynbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744631995; c=relaxed/simple;
	bh=JKhzzzr244FVtOVEEoMFalMOO/asiToqSlzBJrXoZhQ=;
	h=To:Subject:From:Message-Id:Date; b=qjXMJriNmUbIO3dl666DCcBAAif00cU291kcQ23a/33+ginRcBlU2IU3tWjS67jaz0Ainsvwpm2wxeGVonVW3Axy45+uvU0Sk99zqmPBpQZiyQ5zfImpLyp+FN67ZT5IjGJk0AyJozO0dMgHaC07gLMyfE/BSXNVH9B9QDP1SRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7FwkIAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7FwkIAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4869C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744631993;
	bh=JKhzzzr244FVtOVEEoMFalMOO/asiToqSlzBJrXoZhQ=;
	h=To:Subject:From:Date:From;
	b=a7FwkIApM5qTBRJNvruCGxwd18OBTNi7cxMhlLvFLu4fDVqTzjEBHeozd8dHKQhS2
	 tQ5Q4rwHx2VPNpG6vAx3VDmGGzLfGDHjfXnpHmlQc8bDZfrh64oeqeQUbpuO5csEOW
	 O1g1vbnFifcIo3DQq+vv9qKvRY5dqN4PdJijVpeDQ6s7pvwJsWwQV4dyX3hqH5/x+8
	 /NYhm0Gj+O0lGT+ShyC+3PfsS5H8HtK1TUXAokD5ZtjSJPkhHxbK6p/KS+H2dZLNxz
	 HBWxFPUuuSql3k/R52izOb4ASzVMtgPtJHMz9+Hl6MaC+Wh5eHVefbUM9TCGVzb5cg
	 k5IxN5zjKTq7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D7DC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463199359.17844.4489117476284881484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfbfd2d37c989f285e449d5f56e3cf934218de79bd0943a75c2efc598ccd928
Date: Mon, 14 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744631993
