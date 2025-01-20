Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B248479
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737400554; cv=none; b=Q77/hlpDf7qCz9nVzHvuTfQlUavQts5B5GR5vJP/VzGD3Se3fW/sQhKUlWkAZv6RsaVcT6nGDfQJG0PaiVYlJoW6b8xqP1BwULAR/sCmekMdazkEDm7gcdIau1HCtlANJGBfjPzSBNnlEAtrs8H9b302SW7sxaEtifIP4ndJDT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737400554; c=relaxed/simple;
	bh=cSTTc6BtrBtAK8kFM7LWDGB+dxTkRk7h2FnFznMpIxc=;
	h=To:Subject:From:Message-Id:Date; b=mtvScGOH3cDwpfTX97GVgyi7syan4Hb81JsGdYSORDyDa8nGYFonI7INVRVk5EG7eewpM3JU6ZMFOTPMSDyh9eDV7WU8PrJOJBf3Ee6a1nIJ7eM9m2ByeCxLQ0iGTlXpPQb7iJkxwjJ09GJ7mSdUNpBAWZ886SIGTwZAKj/NkF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXjWH8B2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXjWH8B2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AC1C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737400553;
	bh=cSTTc6BtrBtAK8kFM7LWDGB+dxTkRk7h2FnFznMpIxc=;
	h=To:Subject:From:Date:From;
	b=eXjWH8B2Dtcg7VuNqGYMCZ52/3vOHdqmSyeUVIILqMcnVQrFuwMsCRdcoc/5rH2sp
	 d/9EAwyonCcyoGUQbtzsU5JOWEGXm2rQTEe4JYcAF0avIfmf60RjMllfxY2Dd8fgEE
	 GtNbNpZB9PbXZAps2j2UWCuZql11yrArTxKIVQQiXJRDbBqGxZXgA/K6gfeuyhI5sD
	 F2uUEidNj+vmV9owJIqOHCLplmSH6QF9k5mZej4ger/lVRrdl6LL/czucPp8lsbNcc
	 qJFk8HJq3sDMVmKrYW410qxzghpxoUGP5tWBW8AosSQBkgembQzpqvLfr936Ipm8Mw
	 fIl1VDw/XQ8qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1DC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173740055359.5309.17107062275015223214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80077824dd8f5ab95a8c632a7cfb39653ac90a3b7a0105cd7e4bced1bcf80ad5
Date: Mon, 20 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737400553
