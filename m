Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BF534404F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773401094; cv=none; b=FvpM6csIyc5he9TSfcj0vG/QTCnVkkBdthBlFhCr+Y36ywTQ7HM/AkDXNOMJ3i9k8WHQhs23kY1aMh7uBNwU7BTys2C/XXh+BGNNE/6Yao9znwmapgFEmFeC5oLuNG1H3SjTiFp8tO+RkuEisvYykQ+YgtplSWYoJ+l4Bo6joXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773401094; c=relaxed/simple;
	bh=kX+Oj+FtlxWLLlDEN5tc03/6jTQcusQkek+az8DXdbs=;
	h=To:Subject:From:Message-Id:Date; b=eEgAy7PvaSgWGDLSRWT2hwIS8Gg+kEDr05pRzXpU8TkOqIZoMqNvhba7L3tWrdiM/6Te3Hx4XO1tLEETdhz8hOFUTcgk39n6CjuDLACs/HVI6736Vv1QHtu5X4YDOWxoWMSq5x85meRs9PIB4gSICNbps2ZjOSrkxvQiMU8iDlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5nHKUvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5nHKUvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34FDC2BC86
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773401093;
	bh=kX+Oj+FtlxWLLlDEN5tc03/6jTQcusQkek+az8DXdbs=;
	h=To:Subject:From:Date:From;
	b=l5nHKUvAw1GWDLaVXzCfmalSyiElWEzzkGQbh8H/es6lwmH7B7XAKweNXyyu6QUKR
	 x2rVCBqo5Y63RE/enQdMCercR0r/MXH1f+IOpUguDGTLFgBr7CTbvZO300nZy7HP10
	 bEwfJaMeRhbw3rQZWt2ez0NN4kDZRtUswYem5iK3OQ9FpyctNJ/mPfKNl1Xa8zyqOh
	 FxmGzldQ9LUjvEoYEP0tPL6d2Ztqjh37zWTRs1qqmInppYMD9Cyy0gtSIKGgRvWTtQ
	 lqWMTqYXe0sNkxPPNY2qbkYRG7dla+0fL3T5eUOkktVkUtquBV6Prp7L9kb1RV3h31
	 vhKHEaUru6dfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE61105F78C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340109358.7836.329122013365501618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508ad8dc2ecfedb86c61914d422acb3e8a9cf1f25c120e9a9006272bb5505e67
Date: Fri, 13 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773401093
