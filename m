Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D881204F9B
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745920795; cv=none; b=em6yO7l3IEWdRCEVJUp53UbpNM2lwhi3qCtZrDjs+n6KYnSq7G5XSxnMsP8wAwxEMlqNZaJ/p41KkrYOwae6mBy/rNBJPRu2NIv6DLgfoEjLVVTLXAHpw1dII+GaNTKyxjCQp8AMQdnXfSwscFblFf1Qyn6xMs4bS2b5og6SWVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745920795; c=relaxed/simple;
	bh=GQCg+gkK6CWpz2xmm31VYrTBL7Yz9foRle3ZIHGIFTw=;
	h=To:Subject:From:Message-Id:Date; b=aJVmIfmPC9spM5f2ka8WDf7LHDCMOJyey9OK9+Sz3sJosui53F4MQU9UC1o/NIgSEfNokocm7pUeRwu1JOV/hwiVPmPaQl1bOvr0xqpEAN6H3dPudxbmgTM8SuZFRD4J6jh05NZ5a2D+BUCShK9iSaXzgXdoAoPssDkC962Ro9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIEN3r87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIEN3r87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12DBC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745920793;
	bh=GQCg+gkK6CWpz2xmm31VYrTBL7Yz9foRle3ZIHGIFTw=;
	h=To:Subject:From:Date:From;
	b=FIEN3r87juIjAV9fEdMQi7Y0Atzy56sasnZwM1QO8+B94XusmdDQc0h6ASO6ROt/C
	 kzq5yCQsUTOQEAhrP4YWo0Nlo9VbrozS14uRX+82PCdttyqnQrsICNOe0m3LR4owTj
	 vZBK4yCdubsfNeX82GtRbNILfsZ0rmKVjRx312LpwjBfndXVcmqHd4YAphiL/TedOt
	 T8FNtqf6RvvwwGuaNJPEbyDd5roOOTLdXchUSzelI9BQOpbcUPmFGAtt8S5iikS9s2
	 L7HHLCqWeGXvrrHMj1X+QQZT55MljSvzToFInkJoXecy0NDPuxvWd9m3RxvUngOvkg
	 JmdtvjIt6pkTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E279C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592079357.3724.6558656933954206844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd707b6855a0b9987d00e3f8f5a0724afc7a913fcfb3564836bd8b5e78b460c
Date: Tue, 29 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745920793
