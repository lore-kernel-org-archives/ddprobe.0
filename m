Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEDE2459E5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763364114; cv=none; b=N92xxuO+uyO/al9FdFHwUF70PmV5cTH4w0qZPvM1nPj19tFfqyqpOnC4n/kuHZKPdiBDtIMmRfYEOdya4dqGn4ynAH75CzrJk9cB6bLMfDnWylUoLxu3FdxqbBIHFK6WBez7hUPLkaXvNeZJvDYz6/gkivTyfHiNYsZvR0OMl/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763364114; c=relaxed/simple;
	bh=rSBqF68BMtwUsu9smHtUTbHss8xX2CXJZoSMaU+fu2M=;
	h=To:Subject:From:Message-Id:Date; b=gc0zmEQFvoZanBsceca3C/eQiMIOxMDgXzYRUYSzQ56Wyklya1jfIIa5Xk+XxoclvsaP7Jwsh5g4s+meW0PBm0mFY7SN1yhKmQLmNi9+FIP/wru0d8/uo4Fe9o/CKCWHiJX0fek+kQHhYDNx0jhc3VIr5JUodI3vGVgyV0mHouI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4yuWzzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4yuWzzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A475AC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763364113;
	bh=rSBqF68BMtwUsu9smHtUTbHss8xX2CXJZoSMaU+fu2M=;
	h=To:Subject:From:Date:From;
	b=F4yuWzzEqL3aJBWujipAZcDI5lbxz9NxrLgSeukZkR/Z8+toKTLJi40IqcpLPfxwG
	 3FxljcqhFpjV0XA+lz3zKXqC9weWa5TKZpwdEBJTJrX3rDklGV4CY5TVreKHzcju9b
	 EWUMIv6qT6olifbb1FQsBOru/hfAXIx8N05EXwA/0U34lGDX2PCgrhG9kGjE9AoGQT
	 p5vERzLSblrrhgHfKkpmawqJ7X+MSCi8/5FaaMrCcjgAbsikzIxdPr3uECsovOf6xr
	 tzrzshvlvpKy6i+Au7HjmSNoZDGHIrSA16udCANuKNFSZyL7a14fwGkUUnkCE9xtPV
	 F9zys1rglPdTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F5FCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336411360.24209.12888675558650102960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973f62db07351c3f46dde08dd85a575e3a7fd31c0a0c20d3dfdfb029600ba839
Date: Mon, 17 Nov 2025 07:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763364113
