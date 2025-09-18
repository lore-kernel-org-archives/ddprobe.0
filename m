Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB732236E0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758215994; cv=none; b=mZhofHhCQXStD7KqtwLCIx8bs4VQdsrweirJFrRer/0fGPLK3SwcN/xpAu/8IsQrST9iBi5VcHAUy3fnTpb/Hb3LqDBF4SgqbkM8aCFKlzG6OhqyfevxBmL7RV0k8CxfhF6ROU4XiArE9bAqdLs9f8Y33D8C4yZOQ/snKobagQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758215994; c=relaxed/simple;
	bh=KjkI1CiIOADisD59stc9417EbIvU7kbgNwwvq+LypGI=;
	h=To:Subject:From:Message-Id:Date; b=Ihv13HerG6YF/Ypj1C6koVHOQewdIh48j5CkaS+iBNv8USY7byZ4Tq3+oB/xfyjHwCimusK7YQgYRfEOfu5RDna+fo3B8t/3B/gS4CLXs3ZenHA3vumH+7EwgHiHtKpA8XAarsJkfBey58ig0ENEZevaWDZOtTPiJVlr3ZY4+NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMBLnwiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMBLnwiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4729C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758215993;
	bh=KjkI1CiIOADisD59stc9417EbIvU7kbgNwwvq+LypGI=;
	h=To:Subject:From:Date:From;
	b=jMBLnwiVzHgoKr9/pQ3evQpss1mhunO81dDxC12sfs9F0y+IxqY6B8JoYWV9BP+gv
	 dOt6KRzCBZKEbBfeAEFaFQ0HkkDSxRwuipZRravvKLWKuoNJJHht1D22P4uQh9Ia2z
	 oaRVxAROYHVpONFen177zO5kjrleukWHv8F+09hxQIugcLRigR1OkeCDW9JdbUS5L2
	 RjzODnqfGSJCfQ7oYw75jHhppWZpa2OVFr4o/PdN3B9g0eOUoUEZVxqV+8GABEGPAm
	 gtugXhX5300qj8eEj2OkzCHtXmjlD9xQQmNOomSRRewliuPTnoY5y+p269YI1M3+1w
	 +FXXR+poh/eWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9295BCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821599359.32401.13708393344023252145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cd1fd3340ec602417950889f4719b874755996ba9ebb3cdb47cb0e0152c4804
Date: Thu, 18 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758215993
