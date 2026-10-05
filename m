Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373BD3644C3
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791226234; cv=none; b=iqMm0yNwPx1HBT+vhF+EWdlnilE7kPDUzPGKQgtBqgXbmgOl+nvIzb3nEFGgHnoZ0lCY3U3hL3HBddTjOILf3JCnVXejWwFr04pUbXfCBWfdxWXs6girb+7v1VrQQRAlDkrTqSwTUjN0uVZMgprY/jl/Vo8wj3X0HXSWNcLh+3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791226234; c=relaxed/simple;
	bh=WEFrO05YtyoZ+l7cl33LezNte/pF0saUfk3DqwAnIuA=;
	h=To:Subject:From:Message-Id:Date; b=kI++gSVi2Cj7S6XenBffg9mfAdpJuOcxftGqCAr82uQf7PEckjT63sWKJUeN80T5keGY2/4Tb1FkBlW8XFDZm7ucNfJpS5XskpGFPwyHUym7r2mapYvgyH7RItiXQkEabF5tUUKwG4UOel0QJKOlqFm4VQK6RcHkhvxCrX/nsQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B03fBnTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B03fBnTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD081C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791226233;
	bh=WEFrO05YtyoZ+l7cl33LezNte/pF0saUfk3DqwAnIuA=;
	h=To:Subject:From:Date:From;
	b=B03fBnTwGUy2NCNyHFCchbhyuwaLazN5g+hhrKJ+4TcllLAcSaaBU1sCUBZ5+wXoj
	 OhYJf9aVpqiTs4ktgf48/jp25B6f+QXxGQFKPTDo4nlGqOJwBFsbX8JHa2TmAx4Xi2
	 4FbQx0fVDUO0of2wly7bolmxqR7Pax0t3c5im4d7LClHWzu1oWH4eeINDlKajlAgCi
	 aUfR2/09MZk8W77xRD1YH9s9g1vtxMVdYYdFi6Dej7xdlmTfOCtsEEvLO0fMzy1YNf
	 zok23I75negGLri7IqEdTPD+9k7QhcRGYUZlpemreA3aqK1yD4m/+Yu3QJgd25aW7d
	 u1FILtrPhBG4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB598CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122623369.4979.4940350958693579175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c4b1e5bb1bca3b7006f90d79846d1258d6d09d707fd4ede137089b48252710
Date: Mon, 05 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791226233
