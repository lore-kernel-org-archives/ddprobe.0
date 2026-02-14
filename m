Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131A263CB
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771097094; cv=none; b=I5PYP4/BI4TQfBVAIkBYOhUtGRrKAnwDikKIRSHpNVy9SFvsIxDofJz/nNuwr0y2H+vl4i8IQvcgf2X0A9faEQguEIdfbfkrAd82nroly12Cx7svlarowBW6+hPr4tuPYlns5hHDUFc51ilGKOMHJ4pexv0r8anKB7YhEC8axFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771097094; c=relaxed/simple;
	bh=QyhM6Bcr4LJnBrl3xJeNaStiKfSOBR+Od6wi5v7ROHM=;
	h=To:Subject:From:Message-Id:Date; b=rir8uFWS74ZY6wfy2MdtXRTTmmIB4y4Mt82mLdPywT4Out1iw1LQqtRd9rC/B4swL95ictvjhe4OFi91pbXCJEZL1u17NE8kwhfz540gCfUUO6vTINNjGQjB9qLE9Aitelm+eFDEEXJ9U3V4xQUIxOe9DWqHEdHf3IswdcUrXfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSgXMyTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSgXMyTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA938C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771097093;
	bh=QyhM6Bcr4LJnBrl3xJeNaStiKfSOBR+Od6wi5v7ROHM=;
	h=To:Subject:From:Date:From;
	b=pSgXMyThwUYsJsM6njF+bLP/n8JCzTkpgVnTDYv1+BERaxMp28d+nr/yGDeUfiReo
	 07IQFueqi0imn403PLiFIfuBpJ2jrg+Mks5iwrQd+ikM6exHRZeAW6ZSrAxjj1z98z
	 632FrhxldM4mW/1+509UBgCS7OIyEGVZIlwGUaUhGAeERdmrMjc5jTBKgXEbF/+jOa
	 Dcn/iZzTWR0uNK6Y7bC3enreEtRXFYDs0pq3+Cah3v3P2/2IP7gZ5viz+ffIHxpy8Q
	 wk9ga3vltkkPvPwZDT8mqrK1+Gb4rrBIm4qv9JSQKI9liqr0Ga7ynz5BSt8MAEoZVq
	 dYGaQ3XoRs/rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992D2EF584C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109709361.15032.5656019313793314224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd3512dde5a486a2a0f14227f708e486c8c3898a4a2474abbd8c1a1098a068c
Date: Sat, 14 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771097093
