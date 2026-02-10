Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141A338A728
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770747234; cv=none; b=jgLRb4v6kggTdxgaBywDF43efztjqb03S94d2oMpeN/4sFXqGsx/4ZdRArBqup82S2j6GYsPYgC1Va1/hMF6bTcjMtLSa7Ce3PzG0TvB8ZGWQ8nz6OBXtwtzA4cMJMB13LPLlyaVYWZfdirklS4P74UMd+yZe0TOYKxn4HSkGE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770747234; c=relaxed/simple;
	bh=ZPG7ht8pI5gK0hCwg3NzPAqg4+SGHwC0cc1GokA//MM=;
	h=To:Subject:From:Message-Id:Date; b=nmNDh9Zfk/n1ZwgDBkCibpgxacr7qORt/BVA0ztPkOf/Ua+uwoio5mpQ3bzYymb5U49KBQM4DQ9civipF8BfgNzUxtKOWQ0yvkxzAzSh0XmHg+L+LccqA1QJP3OrUAZyxGR6Ugfox6dyur7J8l6BwS6yBHdk4V88MZeGMmlePhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWar6pLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWar6pLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2465C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770747233;
	bh=ZPG7ht8pI5gK0hCwg3NzPAqg4+SGHwC0cc1GokA//MM=;
	h=To:Subject:From:Date:From;
	b=nWar6pLXziPzcZp9BUBOIj1r2YLb+EVB/P0FXgc+Rza78pybUAl9kaL5Mp484l1lP
	 1n2oFlwtzQwaSrKOy4SFMEVajkVN3ys8nhaNObaVuZMswguFzEYxVX+FUbQ07mYNut
	 ym8wXRpdhS7YkHSdSZBCiH/E120BHgH/9HXoanTURZWV36Pro6+5NTs2a+HMlc1rk2
	 h7pSGw1ZhRyorU4pqh52NlBIwwtD8vUYpvTZWlZn/kJw7sFthLqZkocB8ZZLkJmZpM
	 qOAIXsY3JehWtFWNDNta8hc1iHD2yi+sol6St0O5tBBxwiMK0KIw9acWuzUiXQVGVu
	 Q3uTDyO9fnUxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C030EB26F7
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074723362.10543.18255454433882803679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98eeb86398572173d1f85a540c9a4bdfec824604132ab5516cdec47583a1b572
Date: Tue, 10 Feb 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770747233
