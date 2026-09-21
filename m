Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3060348F024
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789995034; cv=none; b=Gqj2EZgwcd2sGYiAtPIycj5+wesaDTTTlCsq5N+lrknd/R/U+cz4YHidtj2HlARnwLqShw9etEb/BBlTNqbDM5+8bpFv1ol4NqjEopqoWbvuXNKAim3E3OhUO8LvaP0yAxD7CgudFOTwdhNNsORiDKHD2r5FKtgnANlS+CjDtNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789995034; c=relaxed/simple;
	bh=gx8WX7+4f8wZ8Tg3o4vTaqWPTvOmuNO3OIfVf2WCcNE=;
	h=To:Subject:From:Message-Id:Date; b=UjUB7f0rTaUccpfwEqwwLGz3UTzwtvTe4DrYKeVepHDzrqyUR+F0gS+Iodog5o5Q61C1tZqM+JwxHrSfik6rH2a/tVP0dQfE3qRPAGKdycLZzq3fgodaUnt/C4qPhXjpSON6v5sn1uY1DS7LAFivRa3pBM1C06I6AWd4RjGy/v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6x7gWcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6x7gWcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C683BC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789995033;
	bh=gx8WX7+4f8wZ8Tg3o4vTaqWPTvOmuNO3OIfVf2WCcNE=;
	h=To:Subject:From:Date:From;
	b=R6x7gWcz0lJMQsvoH1/wM+Avx4bnzGUBzA7Oac8qc5xLJybWqoFnHdTXmLpjodIUm
	 ID1N2of7/+arj8SMDYIwJaa/liAuMTcKFKWLTTUqLjcCNmfkywGXf4Vlc8jCase64j
	 8vfmpAF8sVduVM1m3xWUuxQuG/OVUW2KcLCXMniCQddBhgQ95fuf58lbcNbnHLParx
	 0e78gtZAQeANZfxn437qEnBi3bFy8Tq+ajyyGNTvtt5YiIiMt8O0fcECilowpd2jFX
	 RfqWkDwNCJ3Dp2Hgvac7vjP9zKCQvDP9o78b5BlMwFqY5ebrWi9+beTuvknEy8E++C
	 O00DFDimXK6NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF22BC982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999503370.10849.9833926273080310638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3781d28d3c53faa111dbe82d3a11c2175e0f7a329faa051fea53bf8be1fb0c69
Date: Mon, 21 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789995033
