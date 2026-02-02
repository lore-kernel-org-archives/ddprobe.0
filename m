Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398411DC9B3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770010434; cv=none; b=HGNe0mJ62T/a+60b5qjrxB7rIrjrVtHVr6A+CC4XOatYwsODh9NezG+PiPUf74ZJOQ92LvvNoy2XEWaElCaJmmYM2FBxGAcMs5vmuB+LpbdEKXgspo+ge/Yw3u8TkQasV/6a9FMknBhTXfZYA4T4vJI3t1r/nGk+7k3eDJ5VXgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770010434; c=relaxed/simple;
	bh=CwDR/pfuRCanw10wxblci1CGfo6eN8+KmpX3HiQxxvA=;
	h=To:Subject:From:Message-Id:Date; b=LjJGIzV2BIwAuFHVki5GPybv4o5pFvf8j+L5W43Es7xKU2DtpRWj9TDu6exMnkTxQFNVBKmZ9VXibsR/qfJq+VzOi/UnOdCtbDPD/t5GlwNdwzFsWVsJTkb5ZVZugStHhKfB9vG7bLrNw6MLJHjwMtMLsv255HYh3gu4jY10phs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJM4uIkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJM4uIkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C8AC19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770010433;
	bh=CwDR/pfuRCanw10wxblci1CGfo6eN8+KmpX3HiQxxvA=;
	h=To:Subject:From:Date:From;
	b=TJM4uIknpYXb5bFqfqYKOqzNvAMthtDhKymjIAutC6jXXCsNCX2GE5FAbbBtUeLIA
	 nPF0gUYQTzv6uEC6DHSSgr9jC0hUE3gJ+0jRKb+q3edTzUCd69nhd3+zBhbbT1qU4d
	 HmrY3EDeje/sDn6ZSpQvDPs2ZZvWc9WHRYdHAcZkTco545w6sZ9nfVuzFhsWnrTKcN
	 70bHGnjtgXHhxoSMPt11aGuYr3Vglr9eM1dL7B6gALkDixiGiTw7HhMgC5GUNra2Y8
	 WuM5BffX9a3i2fX8KE3FPpQmktzaZ/EwuNERzC819ubClzf+UJqCZMpIqi7rgwdTlO
	 l+CotvCGyOm4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8B8D172CD
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001043362.28864.3671321645669540952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35077acb490fd36667ff956185f27edea13bfceaa4b182a5ac7b1c3f95b00f3
Date: Mon, 02 Feb 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770010433
