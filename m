Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F33218E91
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790939434; cv=none; b=A5Do7NkP+0lyLQx2pVjDOKVgOr5pW3AO/qJheBCffetEkWrYnKedat9eHfxte9/L+oSyrBzzmFEYpZ3s8hpN3viljO85Icn9fCXNpdL++IHdsFA5KA5g/N45bx7h/pV8oh0/wi4xtbBSJqO3xz99Q8paqFnlHWoT6jM64sQW9IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790939434; c=relaxed/simple;
	bh=SzvU9l1mmuSeU94+hKbMjig+ygQBURk7pfiabo8Gu3w=;
	h=To:Subject:From:Message-Id:Date; b=ZvHNe5gENPy7E5ar4qyPO+wRGuyBlphPQFCtMPp2elr6vejDtcjOC96EXLGHfje5DQ3oloDpG+OQVsWN7Kf3gmGuG98a+NRPRfSisoP6iXDNChu3Dzkw8R+z8kSRdmUcfeYqL+Osu8k476R8Kg6EZpgEbeGlMmto+pWhz2C8l/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjogBPbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjogBPbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AD0C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790939433;
	bh=SzvU9l1mmuSeU94+hKbMjig+ygQBURk7pfiabo8Gu3w=;
	h=To:Subject:From:Date:From;
	b=cjogBPbllkKeVwqmp0/IM3mbIQ3YF2Qgc+csxK9PYalEVr5U19OUO1gDis1oLfYKQ
	 WNzSgIphbwHersnUED4Erq1GTBU/8T4CVOAYzQoM7sos8jKDWt9wOQGwZTFmtoiAZ/
	 LUVE8Kt41QyiTw04PtR4DW5vNSRyNLkedLpdj0eB1QG1D6dYfpWBCz6peG6yGWhuP+
	 z/iI6EjSfdotIPky9QkCUnWOX97dWimDu58VLGb3QtjSRcdX4smKos/J14sbK62b0x
	 ZP0+FffRmPey96+/vAPp4pR/PSY1oOWxb+kJTS2f/13CUn9KU153JFQVfasO4tNH+v
	 OSo+ZU7UHceTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94B9CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093943368.15361.1035333881854660326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7fa5e60dbc6b1ce67217e1da6de420ee1a75aa00c39e9f3d6aff675c5cd42f
Date: Fri, 02 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790939433
