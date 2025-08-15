Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F19275AF6
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755239994; cv=none; b=cNdMXTKLQ5fBMOKfXHKpSx0ifHscfSB6+Dw6y5HOn2JVUs6f8lEWMl2690rrMQhU/yvc5VXfXIR7h0R0u9D5Gckc5ic/zLSaPGEpgC0lqDC22/6VeBtUb/zL1IHl0NNjQuojvwipUK1bL9wj7cOAE7IvvQFydh5y6/NLVR0cbrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755239994; c=relaxed/simple;
	bh=vPET++HKyAE+oRZV28xf37kWHwYDq2pypt+0pMQqmUc=;
	h=To:Subject:From:Message-Id:Date; b=KCkWJOYTGZBUygOmug/lkS2ZdZXl8sDwQH983gtHBaEx/AN4ynIk6z1lSOxsa2oQC9gvXegfKLok2Y5BSeHZ37XrsUOCAsHkZ3nYO09n8HssLMpUrX+HH0VuPB/7MbV+dzoqchfHvNH15bYy0fi2qqbElmZ/DIvKd9+VGN9mWLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+rbrHaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+rbrHaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5084C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755239993;
	bh=vPET++HKyAE+oRZV28xf37kWHwYDq2pypt+0pMQqmUc=;
	h=To:Subject:From:Date:From;
	b=s+rbrHajaxHT63DcTunLu4Pl2T4aXFxo7/tP+UgLJBE4dRoPS9rACPtN+XVGoGNnf
	 pgRxZfrFxcT5rJCEVvZQBCAZkMgRWei47rJF1tB1eEdVF6K2RPRR/tGhyDL+lAa+hb
	 ja9XM8tXuMSYGo6L7jlXF6tv/foI7JfsSnHiatJClip/Isx9LBeXBeov3Yupw6bf+R
	 gnQ6kxi1+YPjgOaWD11AhzNlymCaB7NNSpKnLWy8h/gwpbZIRChS7b+VW8FG1X2p28
	 OpSGG7wAB3pWWTcHWN6pKVRPH3YQoWH/VjYfAbt6RatofsyUEvE2IwKBPRmn6PZIOK
	 G0GdHOkP3KUeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97624CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523999357.3967.1582711190560813513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3c6f6dee5f5cd6b69a3fc015fee9719120d408a7c112f78935252e96d1eab0
Date: Fri, 15 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755239993
