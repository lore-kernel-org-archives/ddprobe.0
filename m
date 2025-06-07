Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332582B9CD
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749266994; cv=none; b=BkQEhgYgpP3P+m89+df1OmbHv+QyiYzv1D3P5YcqyyjlJQzeMR/YMPe+290O09VPxKnzK08lwXrKGvRJ5xmYrSrMBnnfmGTckdJe2yKC5j7sYA2yUke9nfgdkUlOSighdIAJQmwTis41lLp3OFe9r/hjcagC1pDZ3RavBVwp+QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749266994; c=relaxed/simple;
	bh=vBzpQufW1E0FvFER5234KbD85J8PYcXP04Ic4iViVRE=;
	h=To:Subject:From:Message-Id:Date; b=qynQrkTH1k55Gzcllal2K9zLV3mixoKvAAdGSFVjg3b+soZYbriEzuPJ724gQKp+cr/gdujSaYW4jOaJjTTFMTLse6tg+U83biIN70BB+zUHPzHZLdJeMJgGTYZpR4IamQGcoLElXJvClnGc3iQ2e7f3sfD19t8Q0tQJg8o8Ay8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6SnNA+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6SnNA+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58F5C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749266993;
	bh=vBzpQufW1E0FvFER5234KbD85J8PYcXP04Ic4iViVRE=;
	h=To:Subject:From:Date:From;
	b=T6SnNA+CvHYkT21w+ukOlQL2zNsSBQ+jy73Vc4810ikqPnbOkkRfGGbB3itnDV6cy
	 v9FvdYp2xGdUBc5qglyq4XiGIV9LLBX0i3Ar0lCe/qs3jZHe/JQUGsSvbh9VMLvCji
	 dGfzxzU0L4Dg0xUUleU0PImZaoJA7dAzXW2ZHWoeiOiZ9T5Yo6Od0325x/V8dR7tKT
	 AY1C2zaV4RN6sHqDqfpbVK+NRrT4Bu3URgUHHlTAtAkYDtSwFDQl4B6Wl46xDql2VF
	 GwhwCcSU3Ho1F6syfPyxwuFFTMQg3PbBTT9fDk/wvIT8T06Stgvb/zinWA1q7pK7JI
	 S99tlwz2glPhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FCCC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926699358.16585.5514832204209020673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744dfe1bc3bc96aeae5f89b1ff146cc678697deb29e3dc9f052d042960fc1b00
Date: Sat, 07 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749266993
