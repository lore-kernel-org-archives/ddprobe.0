Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3807F31A55F
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764003114; cv=none; b=TFN0glL145p2rSVtdauCfPO8guLNdrOSlkE1sW7b0ytAjD2lJEJslrqWuIU92jG5WMsAGGErE6vPvJFHBkzsSSOVlDxk+Q2R7mnpTacxUdQXbHj0oQgrYtw2Z3mVy5nxwxPpHv/rRdtKvPuKRySRgB2oq8r7TMeelrUPCBBjkEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764003114; c=relaxed/simple;
	bh=fzk9bcOtmmQCM4YkKFxn+NspnzFGQDF2U26HNP/8ouo=;
	h=To:Subject:From:Message-Id:Date; b=j9zxQXxCbp91R7md/op2qHjSU2qF/pzyjTgYhwz8jg3wHhOMg0Q+n4AQqlAyvSvJW56MkXuSXh33q5KLpAaOQzSpeJZWkOOqk5kFA6Equ+5uq0ZZvFZqcTdfcu//Cxppl3uciBWujSNiHYe66QeQngje61AUVALcZ02M3UijVts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeSxNnHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeSxNnHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B271CC19423
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764003113;
	bh=fzk9bcOtmmQCM4YkKFxn+NspnzFGQDF2U26HNP/8ouo=;
	h=To:Subject:From:Date:From;
	b=CeSxNnHJV5u0tVJMx1LPdHzQJlMDQaU3BMhB6J6LjjMjchmj9tPak+lTNZlSE3+Ry
	 5P8d+IiR8ZV9bUf0uJXkW+2wSykmRhkkuQjYSJ4HQy64c4jkGF9BrmxCjq1job9pOC
	 jDiDIzvVqEX+NZdK3r5AC1Rt704G+M4dnD9FlDxhWm3q3/GIO8N6z6ivJ4EZnuiC0i
	 nABvdtZQy9izeSZ0mBSBP3nkJFfTT9i/v1/ODQ31xJJpVjv18zyU+FeeMtvgdID5h1
	 qQG0MJH6Im/CyvSWTgT4CFA9DYvTQEq4/K/rVDfQEiAr983Yo/gObq2A0dIrAky8SD
	 1dNGvU05PDMEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD86CFD318
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400311363.13361.13109558245841746903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c028a0d1847a5812174821fc753b8ec09ae63858bbd55675597fbaf88e152ce
Date: Mon, 24 Nov 2025 16:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764003113
