Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153EA17DFE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771167894; cv=none; b=CFfZgKchBrdBoEQuzsCrXMG3MABNudlC1zwJ7cJWGN7wVPr9BVpfgWykCn/M4Gi49cpLRtScrPuc9LKrDrallHbDcqk1BAmAlaHZUV5wDIPaEKxDIapeZKJA1IeBNHT1PKZuzRZxGcHKGTPUMtUmnvCO8MYavNSPVNw25862mGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771167894; c=relaxed/simple;
	bh=zhS4BlqBmsPkQQ3Y86ms//BMmxIuetPOe9SZy2tauvs=;
	h=To:Subject:From:Message-Id:Date; b=PxNeoIv6hhAV3NYsuWY3Tr94Ian9cayExgRfaE0X8RijQQQTXveFufgfjkgqkXb6KVJLLoBQ35xPiY6ibFQFz6sAdUmaSR18p1hxJ4yhdA2QYLJeJGVgZuyoZj/WXgiOmPlZ2Vu1Ro5kdtTi9fAarSOUyZ+asG/3rJ/urtBFFdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBZ6gEs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBZ6gEs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BB8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771167893;
	bh=zhS4BlqBmsPkQQ3Y86ms//BMmxIuetPOe9SZy2tauvs=;
	h=To:Subject:From:Date:From;
	b=tBZ6gEs8Lv3cM+r5jvFN84aDH/tpT6/jhl62XtYeXh6pUUEk8WM6H6sBh2deE9MsI
	 gwZmVwYTgd1YxuctzfVTxkvgYJcz2Tsqe48+WQ6Jxm657OJJ57mwmO82xmM0DmQS16
	 v2Zdy44qcGcsx5uPX2rRclBlHm1lPHrzYWSS2RbNJQ99NUnNUoaL6aCAzJ9OythoUH
	 KGzMq/6WWZs/UvYVjFhWY+yccsn3OjFiGf6LmeS9IJTMkijA+zeAZZdIC8TRqjMtaC
	 +bq7FzY+268xrY9xus0lBdWw033CSkL86RBDqCujlK22F7tLG978lglkAXKVxQBp0q
	 bORvnnM7AlwcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF5CEF587C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116789363.23305.5977350282051754782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4910a994f2d03276585b339356cb284e62abff020ef2a219df1a8d0584c3820
Date: Sun, 15 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771167893
