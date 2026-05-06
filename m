Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327C62F745E
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778102254; cv=none; b=t5Qdq4MjP/syg/wddALAXbNEvJdkIPWo0PEMS/brnBk3MBaSdi4NxdGXdeY7uzSr5+D6+dqKHsb68lv/31RfGYm/a+h43WLmoFpLeDI+ZjFmULY3p1nRUUmHkro8sdNlK+OiciXuOcxTyjx8u0RH0s5cxwitsrMyc7UGlvcg6VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778102254; c=relaxed/simple;
	bh=aSJVIgIf5jym8dzMuL+qfbp6RiTqyT0W4x8wyX3kXbM=;
	h=To:Subject:From:Message-Id:Date; b=aQ1QpdlQS8KvgGxYVsZD40dWFaiKOxXef00ft83fQGgbqtUtHIIk8kyRAMNYQ12TAH4CeIT/1/jZP7BxOwpW3S+enlv6AleoSK+A+xVIPAKKbUT8R4aOm6rbQvZphr401yjFkE2nrQAhI9+sAc1jPq7v+hsWvSpZIz5ZD76hOfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTGQABR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTGQABR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEE8C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778102253;
	bh=aSJVIgIf5jym8dzMuL+qfbp6RiTqyT0W4x8wyX3kXbM=;
	h=To:Subject:From:Date:From;
	b=BTGQABR5u3CPa9F1d4OBrx/oVsGGMybUU4Dc42q9VtXArBMprQOjmQO75FRK3YRI0
	 Jjq9v7ZAzWJQyuF4XAReepkKh3wySSQehiCFd0WO+orjzNtRt8n2cbBt5wmDgxHeIg
	 aouQhjWxAlx3R9hXPgrg3cj0kTkuPbSLVQy+Y+FU7Gaabca5rHUT2oEBBsmO9hD8fg
	 4QLTlWYrzefdn/GVKIehsiixniFw3/wlIuoaW/mnF+BHQi9nltn+Bs8o0e/0HBqKgo
	 1e8UdtpmAEU5Igqcato+dxRQZC3TPwZTrrENFnIn+VQOQ85P+VVscyqyFilY+YG8jZ
	 qdiwc49I9VRew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB51CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810225369.24202.17807134322338029170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d30a84390cb74629bb1bbd5fa7d4d50069b18d31ac42d2ee4e4d56d24bfc09c
Date: Wed, 06 May 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778102253
