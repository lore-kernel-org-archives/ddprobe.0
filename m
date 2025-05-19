Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD1B286408
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747668594; cv=none; b=Mtj/wameSGxvc7dofJbCEo8bJeCS6oAHs5I++uqyqmU/+fc1jpqZi/AEd1dH9ZlyBeuXBhjjwnaYkN1imL2lIUmKIdU7AkKq/ZPbUL+BkFER+GDEjllFHaWM3KgcVejaW+Hsek4XZP4+ckuRyBwCzca+BOQbga0CatVGH35nFPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747668594; c=relaxed/simple;
	bh=kxQIfjoCpqq2WCsE3DqNf+PxAaKZwsDL5gwQECd3GHc=;
	h=To:Subject:From:Message-Id:Date; b=TlOZaJ8Has/HPwDYpsIZQtaWvXRvC6lnkKtvxbNeIeQFrCxMp3eTRJazk3Pfoxb+o5mkQfq1WBvwWuMk0DSn3CXkOQDthBvGgDzq/M3qyuD5wRcOPRI1hSRYtQbd2yMw5xtsuSyzPJXJXbMFnK4xb/7Hthk6dX6zD25Nmxi1w/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TA3i+0km; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TA3i+0km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D62EC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747668593;
	bh=kxQIfjoCpqq2WCsE3DqNf+PxAaKZwsDL5gwQECd3GHc=;
	h=To:Subject:From:Date:From;
	b=TA3i+0kmSN0AIZiuOZLAt7wcJpaak99739alqQwArZ1wENAB1U/hxlsT20XASKAyi
	 ZkMsBOZ1HFBbvZng7lMPoAB7f/aZvy3Tvzj19nnMvlW3oYkk857oiT9ca+y6Wf09r6
	 vWhCQhf04oe/adffIyEDZE+G3/hYEUjc/kG65ZxDwK/9DjWx1+Y2VtFKYUqkGs6i5Y
	 xh4X7UDhUjOH5xjS8vEwK8Lm2dVGb9k/G9oz8NMj6wZr32QQ3Pm+CoGIMqy7ByTSOm
	 sBofFZZcD4tJH5tY7M9vGATYdRzNT1tXOeo9B3l8x8dOCBXRQQOop2d7bDf1h9BOI0
	 e1R3sQ4uC8kwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B7C3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766859357.31496.11092264909952036646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11086f7a476f9b76d78e4d7a6249f0c6d0608e8112bcf83fdb357f8d0d346737
Date: Mon, 19 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747668593
