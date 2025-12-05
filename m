Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346B42367D5
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764900175; cv=none; b=N4MMzT+2MOU2biS2VJAmpaC8eZroE27N9DEUecf98jqbJiuLWYBvk68up0ew5XHXzPjBp4zrzXAii9czBKcSU89fdhBFqbI4PQgouvcDaIFTR7pBJqsH+fTvQuDUmCe7WBYmEX4+Yxlr51rLJgT/34iswTbxdfVSkpPuM0v3nhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764900175; c=relaxed/simple;
	bh=KtYkYdfDRw0eAS967Flsg9l6ZbNvnAKqHb/hG4iih/k=;
	h=To:Subject:From:Message-Id:Date; b=XATcPAmA90MJxekWczGdl5wb1Mtl/zlP3jalvjLWxpJ80tLLttzlBW4o+QnOqzn6aqN2DM0ZTx/CsPGg1lZ4Dn9zWz4vZJs8ngSgqCvg1WTZl7MRE4Hu4DlRuYWW1df6eaphkXm0BSk76i9l4tlx7LpajfqNM7qxdMuKGbhbFkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzVgeqF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzVgeqF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE0AC4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764900173;
	bh=KtYkYdfDRw0eAS967Flsg9l6ZbNvnAKqHb/hG4iih/k=;
	h=To:Subject:From:Date:From;
	b=tzVgeqF7MFfUNbnAaJGu7LtsH9eVizKHzew6XztfkjHb6qX1HRIvaHvXV7E6hAhp/
	 4c3i9ikzC1nEoyNybJkhVKAknB5EdH8Yqfxz/fdGWqgo4ZNeJdhUfMHDXBNSE5BtAM
	 DpysdGLZlMJJkrqVOf3Ic1r9CWexY8ds5HJCZBk/o/yvT0aQbfFCJeA6iDymx3Anb+
	 Uwh+JbgkPbD1al+pIEVVkQBAiuFslkCGcu6PHRFiWWQ4GfDNJxL2yUAbG5LQq5ZQ5S
	 MELHfrWmtCUfoPT4eueuxChIEmP1OGVfaMRRkl1WewUNeDaq9B4Qx08esANtTov7Im
	 zaPWVyoFhH5fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB5D2CDFE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490017358.9792.6031950511108681229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524baef51a3e5b8663bf55c5ac78cc60baf219c0bf8d6b29ff5461315b2c8245
Date: Fri, 05 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764900173
