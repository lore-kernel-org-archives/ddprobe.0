Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3143612D8
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769891634; cv=none; b=OfP6EydusY5CtCrG6tus1Tch+xuuhsNu2tGAOjw9ozdrKCxEc+SQf1mXeVs6xn2bE8jh3Ls5OEmk1taANLx/cKSVomTycZiF8HvWlkE0Wlv22Bsj2DxD/YwkJhsECudl+D1cO3wqn+8kq5Ozj7ydqGz8U3Fo408r/bgAEPp8rUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769891634; c=relaxed/simple;
	bh=5fbtTh5eYMqw6zBtylCOCAPw6j7kTwrEzAya2tFYQd8=;
	h=To:Subject:From:Message-Id:Date; b=OTG8kMaWOZ+fn23cR/6orsZU8/N8vA4eZ0FO5gsP8jJM12WzvSysPmzSS/oxYUCjeXDaguvagQQVArFuIppJLzOyR7qEJlVe4qXo99NvyE64j7PXkd4Nz6BRenKVkHIXf0A4xqz4CredBo3wrDmxTPHeEkVr9Q25YRjiobSwwGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDojFG5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDojFG5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A193DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769891633;
	bh=5fbtTh5eYMqw6zBtylCOCAPw6j7kTwrEzAya2tFYQd8=;
	h=To:Subject:From:Date:From;
	b=fDojFG5U9qS4e34S5tZUhqZQ1yQwTKODfMZpJ4rcB5SwviwdKnK0h6EESb7UbkcMF
	 /cp2pdnHCa5H5exxt64DHGxZtNQsdtmYMUcpzcgujYUTtEH7lKY9WywfPxSD6yinCI
	 rY0gkV7hPQXMWl9QVFqt5DFr2CVEp5PKzTXcKheBGREbTi6Ou54nd8AXTO36rBlqjA
	 0UiCO99fp/N8Yx+r0cea9khGwRIWenBAneDMjKh/k/W7P5GFZ2XiGHYHRaoMupPXAB
	 gt/n8WBA12gUh23EIE/3V+KJb7n9VcKGwwaizK6ucCVEADHgVdpCaJSz1iCBym3D8V
	 EqGfHNe6/iLDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94643E7C6E6
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989163357.5027.7257669466719701831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4d1f1cb187b8a1d2a17deac79c17802b74e016ade4add5aac38716c0735363
Date: Sat, 31 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769891633
