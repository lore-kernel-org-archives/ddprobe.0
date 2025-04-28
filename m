Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3321318DB29
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745879994; cv=none; b=Qrm+zJRkfyT2TPGJyJskfg146tof1F66nWanrXnielCVvLGjRLx18EikrvqSrxNgl40o7+vM/dgb4MU6KSgsTex4CJnp7+ztobiT6uxZ9HmvUQfWm4lQeg/Y9c8WMyaYzaYbI3CwyNPjaZQrI/lRVy/VoEC7qppuBAk0gCzTPgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745879994; c=relaxed/simple;
	bh=6E7sHRmE4KjrduGkOoNDK9MWrEvY9hSnLkYalt9RtcA=;
	h=To:Subject:From:Message-Id:Date; b=WZAlQf4Eb+qWUfa11tHotQtGS4DyDXgTrxYURdlIyJo3rsxJkTf7zzLcE/LEJvst3JMjkOyzHOR09SPXNQGdTYPGxtCgCfNhtG5+iUdvMDkUoTbAmvRl+G8KNHoclJf+65COVzdB9kFtmHXrwYcjdH0DUlKAYQe5KqNKC3Aw7u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoSdvXns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoSdvXns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18B2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745879993;
	bh=6E7sHRmE4KjrduGkOoNDK9MWrEvY9hSnLkYalt9RtcA=;
	h=To:Subject:From:Date:From;
	b=CoSdvXnsVdMH2UdQRj/hvrcdkJvi4XBCZxwGmzF/dzC3+rf231emSeuT3lWxlGMy4
	 7Nw+sG6myfE8Zo/96GVCdl+0uxyWVhJ7vmDHUH4Dx2hPLtDlGBubDQ4a5wT0+KlKqa
	 lkU3kzZmmdpmTxAGbV9O0EG02EL9uB+QbF4vDYje+/KGu8z1ZRcSjlv4gBMpZy2wzT
	 8DpA58YW2c5Lsp+jWE2eZekXFbLRGc4+ixBQUcDjha+CxF62zOzRyUi06fZepYjBcc
	 EGgfTRrERfXayFeLIEHBFf4i9q+9GzINXK3eizleJP2jgYE+F/3rX+zQFlSYyWNoBj
	 zdJ6CG1ZglVww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EABAC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587999357.30650.6424616287504157613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7995e13d0f1a38cf84b2a62a158c19a866cae04fc5d883a8cc327c37f0b3357b
Date: Mon, 28 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745879993
