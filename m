Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BCD32E68C
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761604194; cv=none; b=sDbHCJkLCwX3DiJCa6kySBju3osa5l6ppPZV9eBHl5POJPx4nvlDxlvmoRVSd6drkhHvM1moR/4OQMGFpnCdhlVnOdavlU7IKVcegnZzmmw78ACxcBkCNk+KLSEu7DN6VzrRKVlXDcRgywdhISOSV9wl/J0r4fWvxf7ktFPot6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761604194; c=relaxed/simple;
	bh=qEG87Kq5KxSQjxbEaotWmp3Pujg/74apqcNvq8xXKU0=;
	h=To:Subject:From:Message-Id:Date; b=rmeWkJUAR1w5O8oA44BF3Ry1ZSrbK89j3ZOC96fBuyOnJUBFeF+bX2o1FTNw5JFXUaBm79CchrzK5YqwFC8xNHnxV59agDYiicRYPM5s6Yp1rGGtsWw6lQQxJhy9NaRgYapIJQJMgRcY83NNRppskJ6VohdI5PYaeJqqREw8Ybc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQVWTdON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQVWTdON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A988BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761604193;
	bh=qEG87Kq5KxSQjxbEaotWmp3Pujg/74apqcNvq8xXKU0=;
	h=To:Subject:From:Date:From;
	b=jQVWTdON7VeXDANKBGw3U6uMnluUAlWTVWo6eIGk5S4AXhwmBWVYP6paR8uiWIsz5
	 oZgSerA80+Vlx8XSbJVd1SK7FSfdfYL/Z4VJ+W/h/9jMWcqbQblfjrV4/jnzvz80J1
	 6djMS6w+O6YBXPBybWsb+kc6W2KI58A/jlx9mxOHTqcUL9zM/0aWs/I/QXXNM/p3aO
	 SnFeiBfDbQ9UngL9AkPm1Exfc0nxYczoSxH95Ubw+h1Bdt9TvjlkBIaPJNbYVt2mfH
	 P7vo38QM9g3DrRu6pHsTKd6BjC1HiFAYy9dalG9u9aExlaI+J9VuiaoUdvli18O1qf
	 jg0htWVwkeYyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A67CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160419359.7339.12381693842711516781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bbd79d20789d11b4e815c160c16bb1d203c565035894f65d8e5bc70b8e9f1b3
Date: Mon, 27 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761604193
