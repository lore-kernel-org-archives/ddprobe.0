Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADA95A0E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 12:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713357563; cv=none; b=iQ8v8x1qNeybFP5UKzGf9qYHX/evBoEx5iBLq2z7fTzF4IesLarnocGe8xwP5tH5krOgGWPOEVHdVVde2emf2u9zKkSVOKUHJHHWqpUKDC5dM5nv5pBwo2x/0fbz+1BvkSzcGI/q+/OageBujtfJQLpT0eVupN6SdMUpWDw4UKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713357563; c=relaxed/simple;
	bh=KrNaBOqCtxYVnjU8Ngjcbg67UJ1or1/YgoJuXqnwlYg=;
	h=To:Subject:From:Message-Id:Date; b=gYf9uvSWzQFr82ySK8trvXaicE9zmlXtHVMvOF8/BpB1Np+BGHHOU9hR5m0TgmI6SPZgm4FGsBtGms307ZTSNYYaRblzIHRhaaw6vPhp2tiwLO+uSN6XUrlOyG27t9IX6dxWdqPOzpo1Q9AM5fkC8niXs0/A0Prh2hUKtzFK+k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuvfMcNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuvfMcNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C0CC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 12:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713357562;
	bh=KrNaBOqCtxYVnjU8Ngjcbg67UJ1or1/YgoJuXqnwlYg=;
	h=To:Subject:From:Date:From;
	b=EuvfMcNdEKsOwg9+t+5U0VAs/7ziKbWdvHP3DWJlwb85eJzZboj9QP/paxP3AoFMN
	 KRCxuejlTa+Ac4dfA0sgsLoJrHa5rIC4P165s5z2LXGjKgowAF6iwblk1S/9PhwTQK
	 hFCO6BDnR0bf2OQb5nY2RPJB/ySWMzYIzbbdof+4gCl9aTUBzntnzjx6SuQCyUDkDq
	 +V2+DMjDHQPkt6DoyFG0Uy7xoUZ6eMM0BkFnkf7ZsfYyzP6EWup91B+d/6CAmwlzNG
	 5lY/pQXg027jUPHeTiKtU9G2RjyCoib6TPeqIoOC7DNuXJXi9fN4o447Wb0LrBjqQU
	 LDb33swMS3zRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDC3C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 12:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171335756277.3434.10838312427426781915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5056ff2fe164e45082a70b37a7ab1b3146dcb263e419f2cddbeca749553596de
Date: Wed, 17 Apr 2024 12:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713357562
