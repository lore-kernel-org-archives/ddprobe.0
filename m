Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BD844C8C
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717797443; cv=none; b=fIjRJTgBds5BW3cvOxFEl7219WBCGnax48QtqSX/6Z3uA6W+zFZRWWFq0nsu2MCqUGlDTW+HWwP+ubzFNsBf4oVW3+eE4EhVy6JFrc09m2mt7XvXBIVj8LLdDtoAvVFKcKh3f6YumUiMas7lR2vB3/YvEdt9kqmandiwBmFzJic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717797443; c=relaxed/simple;
	bh=wfjjAmltpm9x9wSGE4U5+nIPFtQNEuqI+p+40eT/sYI=;
	h=To:Subject:From:Message-Id:Date; b=IQR+XsDLxpxn52HusA7eRoQ9yHbYcZ6JyzbgHM12EuuPUwpUp5OH10XdbPXce4S4jVF/oD3aiDOB8C9O2PIwtn8tiWgA8vh4L20HK2hHZv0hm3DP4msyB7eBZVrJYyp4nIRFXv0FQFGDUC8PFWiki50QnBdTA/QRiLx6yJp9mOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LP2zdKO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LP2zdKO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 162D3C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717797443;
	bh=wfjjAmltpm9x9wSGE4U5+nIPFtQNEuqI+p+40eT/sYI=;
	h=To:Subject:From:Date:From;
	b=LP2zdKO5jnZPp0+tvX84WfbLb0rYHiShXJf7TzShBSmKh6nh1ldXncYWbDUnV5Z1D
	 YqgCYjgLsuRgMoamW9HpNsP3wqRY0RQVz93V5Lyvaykk8u8Wl6iVkLwj623CgOljAC
	 PyzCt9+Dm2wLe50YI8zZGRBlCPFWaxeruhOnwINsCKN3VaQwAbPcgRId/o7Amt2TOh
	 jU3288Gx2MRYfwSbjDzJtHc3eke4DgGi3oefIzsdoNiOYTWIYIKzd8SJGV+l9BCY/f
	 EVTdijhIEeOfwpn3RccS4K3/C3vKzdCdrJa6RRLtWFVwRvlwRdOnQLJv/MR0Z0KXga
	 l4QiF/oWTfkaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA168C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779744288.22135.932359872354946989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20453ca26f65a6398d602c5c59d4d4f8b6f8f79b6b22dbc52fbb01bfff56ec1
Date: Fri, 07 Jun 2024 21:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717797442
