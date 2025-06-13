Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125BC28E5F3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749854394; cv=none; b=JgJKxdkDKTLh5MJPzxx0g37f/F5X8s+R8zTv03TNQc4oep95jggNEfKAaoDxhPrnNHV9lWFnzX+IxbLOtjxyxXuo92tggr6JM6bmk70IupAxHRsx43Jg616yntitn4M9gTEBQI6W8Kat7Y8P6Oz0auaa6WJgpBcwZKWw2RNlZdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749854394; c=relaxed/simple;
	bh=QUOP61Z+Riar9A0IPzJx1ACpCbkTE/1YPulftZRJvp8=;
	h=To:Subject:From:Message-Id:Date; b=LGMD25TvDJdMLB9wgOXlwN7/xlkvJFR7ygnc31333lfRph69vOfeIQb9InDnzPR9vGie8XE9UNu4G7xc0MCCFIwjWXpGtEZE4oNIN5asnW6bmIBusLIenVRcaWBVsuB613aR5oR65Z88K26zcCNcpGmM3Y62kDO2IKmUMTbDf9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6JdaDtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6JdaDtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E40C4CEF3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749854393;
	bh=QUOP61Z+Riar9A0IPzJx1ACpCbkTE/1YPulftZRJvp8=;
	h=To:Subject:From:Date:From;
	b=G6JdaDtOR7a/PgKHUWC7y5/2Ma8unJ+HeTMt2vEiSgpEu5PvT2kt4vYUaU8KNlxj4
	 4l8yTPoVqimA94ZjW0fpBnkRqTKyp04cO8G6mH/KBt81amYLs/iXFYqzTd84B2ZcoM
	 9Gxz7iagoBrdQHebM3wQiimq6iOk03BX36b9y6FnWGUFWfCn3GTzeI0jskdB8imYyx
	 72HFP58w8pGeMCEl60/8t00I7pB/ToMdcIG7Y3MYzK2x4afz01188LBmrg/pkEi1eK
	 xsoAvKFdDxWZiHpi9rZqRdBsqjc5Le+y/CzPN2XWsVFGSWbPoZJyURsDQUyats5jxP
	 0NLdr0KiLtzpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F15EC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985439357.3973.15881308877476236873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5650f900f75b1e6205a1c4e98ef0847f3b18c0377a7f14f210fcca9595200ca7
Date: Fri, 13 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749854393
