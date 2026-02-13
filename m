Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7554299937
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771026893; cv=none; b=pEiaZo6eg9hGtAuLVWyJGjDGUm0b8ILqAy4MXLl4aiiC3wJdOXEO4ihc6p9WM0QgEAj5Aer9NGLDbwLqFvTt0EDu/A8Q7N2GRNv5LxqMc16zYJvCBogXT3U48In3fbAA+P0NmAy47zAwS1CaQt5Ls9CPWEBt1RR4mnK/CblVyL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771026893; c=relaxed/simple;
	bh=EaiFR0wlyuyRKsl5mqOxqYCkZbkc+5gdRCD/Qe63yNM=;
	h=To:Subject:From:Message-Id:Date; b=fQI5LlO8WMVLanqi7gKNxjBZz/9zpXiZKLz56DUkP0cS2qZE9RNcEDVqPKtGTcVFc+Pjl9ZZgomtrEs+Sw4RFxgGF3MDSgC8fhx2O1N3pRVODbSTaIYdHczxxMXSos+AiovQMpvd7kHpckCQB3dgSuZ1eqcCQmzbZBjvO29znO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKUM2lOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKUM2lOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEFAC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771026893;
	bh=EaiFR0wlyuyRKsl5mqOxqYCkZbkc+5gdRCD/Qe63yNM=;
	h=To:Subject:From:Date:From;
	b=kKUM2lOG6MfkjYwvVICvGRl7pCsqeajYxOQoQ7NgDPbDZJt20Glby9F2LN7tyF9tg
	 Yj/6bTEKeDbaFUo6805KnfhO8OxXJUG+3nxFS9WD/Byd+19EuY9rEMLBaA7/kA29mo
	 HvgdnH4CVBQ4Z2YXyaqteR1zHSOVAC9EYoHr8OXADAbB+4nSznjgLzCucUS6KTeFRG
	 ygTbxxHdApIF9F2FFvfpoGKhdnxP64s7iKIDW0vonxKNrufw9I1XtMn5789wRNKfyA
	 65OLvwFeO1Dn5P+7wvP5AckUITJ6B/7PSqhA1k13l2z5Is+tt3L7Y8/EbwvbVE+4GG
	 FFzS1yj9QkGGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961AFEF99E5
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102689360.19461.12083152586488131875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a783b0f981beec10dce660f9e9bfacb7d00d3d2314029359ac2009c9fe862352
Date: Fri, 13 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771026893
