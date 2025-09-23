Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D045316191
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758613794; cv=none; b=jIXIrJ0Wvi2zs/22JZWHc2PFzQ+Qq3f8bOgCrXrkpdaEhe8LR9ZETtFqVqiq7WPioqLRewnhRFBT9k9g5Qzg4VBvox8dfT3nAys9Es4+SS2JpjX5kXTwPoY4xTTA+GCw8xDvRfkDu34BELXlPUuzwwMf42+3f46WEQuHxNbNjQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758613794; c=relaxed/simple;
	bh=2mIFhUBEohNZ0Kvz6/92wzGykb5Bp/29RWpFdBrxxVk=;
	h=To:Subject:From:Message-Id:Date; b=L0DUdcZiSsvx+WGyTEXf+0Tfy5z6gKSpicjyhQUMrA/zsmHRo4et5gW2upxK38BQ2QORmFx40j4aIe5aa7sSvsmEsxHdJivuaO/YZzCbxd5oCOaxllSftrfF65R9uyjFJKzUYhiqIicxPIWVVcZsS/wzH2F63ERpe/BXB6rEPrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJNhCHTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJNhCHTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8F4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758613793;
	bh=2mIFhUBEohNZ0Kvz6/92wzGykb5Bp/29RWpFdBrxxVk=;
	h=To:Subject:From:Date:From;
	b=IJNhCHTU3PhXBrITg0nMcvyUvWZfN4mKzB0LT+T0iPsXtOAilzTCRs96IIfBjySgS
	 7/wqcUIEE3cp6TT01oqh/2EyrYxULC6SwOwsLa1un8t5PvgxGmXAtQN07zF4uHc4Pz
	 yrMKdVYOMv/8a1IeouVB0v8+Jlsrh2Mt2cVzQeaHR3jHKzY1xbIStpNMO7rWTw3m7R
	 kNBmsPBlpEa7SxvSXPCEAyryNEkcIqdzAvNzClx3DyDstvRh0qgO8ogkP+uhEnlUzm
	 b1p0ali6WWx/BTkvvksiag2SJ6z6N+WWwrF2MUJXczlj8ojfxpfzz+FH1bvdE2Sr8Q
	 YaaMu5UF7UZhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F157CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861379357.20513.4197123835827642834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead594274cacd71770f41eab1a36103782ca368bd726756eef16bd6fc64f8f46
Date: Tue, 23 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758613793
