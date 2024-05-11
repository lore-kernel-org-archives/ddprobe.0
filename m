Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490FE4DA10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715440343; cv=none; b=sa7gs1G+S0Js7eq6JBbx1ZS3m0NVQ8ZPNxjj//UHmryXn3AXKwOjLNk6UnNecq3+WJmYj3nAcbg3FHShZ9jr6fopmW6AcPu2XjrfFHh5Z/cMlnZ8DlBbone6U4rWz7kDPnZqHZTo5aFRegwRRFm+kVoE0TBFjB8rU3oxx0iEsWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715440343; c=relaxed/simple;
	bh=1e1U3lS/r28lCwxvMm/MxxVWYD/p+7d+qTaqnXqyItM=;
	h=To:Subject:From:Message-Id:Date; b=FqmpuOlaAr0b97es9HbTj8f1sWVQAvXLdzuCRAQJDqC2+5eLAQmAEBwopCetR6RlnVFBFnTsjTo4wVS3a2x5MbsL4CwMxF76rAWllSDvrcNPpvX2Py2i4BHq5iLE/KG14ubuLrVqc6TxWlO9t/tsQ21b2iAkNWf+mBsT93Uk/H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExFvSRS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExFvSRS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D430CC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715440342;
	bh=1e1U3lS/r28lCwxvMm/MxxVWYD/p+7d+qTaqnXqyItM=;
	h=To:Subject:From:Date:From;
	b=ExFvSRS08yG08Nel4ic9oMF6kr02XlOSFssxPdfkM0+mmEd1oHVT5TGu/ds3ZjF69
	 3TqUwbT4zvNkeoyZ8yK7xVYjJo2UovswHUUZKevjNktJBvK76rJaausejARU3/vwIq
	 Q0k01s0KIGkWhg/fVflfCDjgP4YskaI1J6oE2PrUy7VfMEc20au27nBgR7YxyT0EjH
	 2RdibLvPETbD7PMnhzfGZpBz7GqCvzly02aiGA9XErCwIYFUHtDt90A/5L08aagSTw
	 0es/5jIMp6prNsXsRWJf0YfsyZqeSVtdloRyh1fDm5DZIZ3cPrFfPyi4Pmrzk0NAS4
	 k3odTyzElIApw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1237C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171544034275.8484.12701639064333284878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0832ae3a56650d3702537f1e314fa47778745713d8933cfb8cd1718190a9a33e
Date: Sat, 11 May 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715440342
