Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDBB23D297
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759958394; cv=none; b=UE2MvHEjEru5ieokZoRQKG52q4Kjupq3qVqaDCSKjxOyBcXxzPwnUDvF6JDjR238UoOAUytjGlkNEfdoQ2yDh/Oj184++Wsv+DaJdVZvNblEFmuLWKWm/7ZGJQ3Z/D3aCaSUT8RS7YKHFXPDqqPTRhMM4fY5At+FjXXfikQDrds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759958394; c=relaxed/simple;
	bh=TfambssPxnz5y5zq6GX7ydzDmibO8BtpdjqlQOVthuk=;
	h=To:Subject:From:Message-Id:Date; b=Do/DofjsBscVG9cEoFloTdEsoDxlrcR0puCRiW1qspovD7JvBrCE7jdvrimwwhhafkuOigpoon/Fk3mNNQGU5jjBtxyDJtTXQHtJ/aqRio52yZffH27P6Pj+utIlLxvpzbQU3ZK+lGDusval3FTIvvZPdyq7u9ZQPuGOcqATag0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7gP/lxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7gP/lxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A605BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759958393;
	bh=TfambssPxnz5y5zq6GX7ydzDmibO8BtpdjqlQOVthuk=;
	h=To:Subject:From:Date:From;
	b=u7gP/lxzNzV7tZIRIbaiB6ydySfderNwLC0Ph+3ITgRxT4mJ8ZvGAUOau6y4rqXCh
	 TlXCy9/w6n3KksZCQUhIP09jALooqYbXXcB9ZOm1hGfS+6Y0jk2AB8YzQAar3hx0WY
	 ZAq1XdktMbtvpgh5MbCSIYjlervF9zQevZubqYG8qHLPJSSaBJSLo1LxTxsXFEepir
	 3kSg8GsRlVWFvMAd5eAdhGNIHb07n0gYJ8219AFK9+Jjq+vH2kMOSHCDg4R1Jnon31
	 xaLY0wptYWv5ghpfSvQCAmX8IipJfrwUlKst9lzsLtEey8GyXLtQWmQHeAMkWa1kD0
	 08NgXAj2n+Urg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B3BCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995839358.17363.12573254026565303891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2698c8107cb4950db923f3dc673d6e41438158baf018cc9579c57c099a53e3
Date: Wed, 08 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759958393
