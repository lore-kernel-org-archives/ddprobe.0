Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8DF2C9D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769645034; cv=none; b=I/VKBWQXYhvg7tgumQelbRtTpY1HW12yV8ELh38s/ehBipOLVf+1QoKXGCNS2HZUCUwWBxlo74pdnoSwLfo/jYfrOf9B+elXgpszsSRru35ay318iev6+pq4c0ftGUosUmTWi66esey0RnOKnpMgZFFBwlM+apFcdjmr1qsCSj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769645034; c=relaxed/simple;
	bh=rAZgeUJfih8cQMBs/qRTwbwqHdIJ+rIsp0S+8T7FmaM=;
	h=To:Subject:From:Message-Id:Date; b=GYnAaYIFzghZf1b1G0ItxWJTfBmuufeGItgrRNG64lo3O3g2BDcr1IOytWyGP9ZuyywYS1wDOHT6AXGaDZdpjfQe+rgDbjP/eGRB2zfyndJR9rBQZ6+DqlTdWXSeB20+/vNgWxCteOtHU7hZxCWtLpmZJM+qmUVC8n4EUH0cF/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaH25PlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaH25PlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14C0C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769645033;
	bh=rAZgeUJfih8cQMBs/qRTwbwqHdIJ+rIsp0S+8T7FmaM=;
	h=To:Subject:From:Date:From;
	b=QaH25PlOxU2LJc2idS6NzDEuXT+JFa+M8T63K4Znae8bb5WpVQHuc5NKSlitgojJy
	 H45HQs9hAfdrmXSTW14zVt4/Nus0Rpbk54YbofT4PLDrjPPxg2k5eFtWephfiLtM2i
	 4XdPRdVNm4UB2mx2LaqiUcQB7YfRLziXUxw8XG0OrWNpl0a9WP6lYlT8ROXqMj8Q1b
	 JctbT78dUCNRRSkAdZ8gMVmM7WRBVF6cvY1v1D2ZO1CE7cadQU5kCNy2sF07u146Ki
	 jjG0GeJcIcXUKj58AOXARpX/0KzszlYezefyMhfemOjG58JuLLkHpKLZIKArb7ACHr
	 kaQbkr8/ZDc9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90019D46C0F
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964503358.27848.7536861701255729568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb772e6ceeb547eb4f314344e8de017a4946b6ba8109c81212670c5a1482ecd7
Date: Thu, 29 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769645033
