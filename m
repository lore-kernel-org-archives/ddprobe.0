Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586DA1C6FF5
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787278834; cv=none; b=OHVhM1/O0weG7PnwPyZQu6g5XCz1W124bDrypmErWeDxqusAQc2v80h67sl5Bq0PLOQoxULgHkC1T7h7QkrlJDncq5lClslNtW9Cnu6qMqmlcMPdKhdj+3u2E4/t4sl1SBh1+ZKSHlr3fx1xIdFmgffc4B5gR7QMG4xJhmAGNh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787278834; c=relaxed/simple;
	bh=Qi9MFNxmK97JtOY2SJb7reIfaj0AQNYcp6m52jEkIUM=;
	h=To:Subject:From:Message-Id:Date; b=aREUqZhQgreZibdA9GWwjirJiYv6aZ7btG85FNtgO98Wt62Y7sU/cUbUgUHklHDupz3SPMjxU82Swa4JUxN0PxzSoD/dCYQYIUdoKB3L+ZxfRi/yrblkgUQ2xifg81p5bkaFUHZcXKQeWpajzTxuZtvpDh3KgU7aSyclMv7OT04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNpZlxD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNpZlxD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDE7C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787278833;
	bh=Qi9MFNxmK97JtOY2SJb7reIfaj0AQNYcp6m52jEkIUM=;
	h=To:Subject:From:Date:From;
	b=RNpZlxD558v14XSysX4bxfIacFQwJbwdBNLiuGrjOysRQ6nxcJnuYJd6g9azbK8RX
	 Oozm2/F9wOFVA0lHoYFmoql37xvsxQqNWZBLhWLVM3vER8fj+EcMzMclyeie2vwUAz
	 +CgUkkC47rDH6ctOUNVkXDo7StBvamXy3FsRRssYpEhfUur9cXZLX4BGBWVyeoNlwR
	 XcKJ+KWFc/m/mITr/w0MRG4K8gOGXOwtiarJjDupOBQOdB9MXR9cwET27SqinpT0j1
	 CrXA95FiRJUTJSUYRk3fC3RPA59jVos10bgv16IT3tYvy93ajkhr0WFT0Xwod32mo5
	 AIBjTTqQGGNAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AE8C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727883374.18169.1296507548338597925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9e52797bd82cb7ccbc4853225e5a61636f298931169a0249f9a7fa68b81d96
Date: Fri, 21 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787278833
