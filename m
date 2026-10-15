Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7311933D6FD
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792038634; cv=none; b=BDHr0TQNs7m78+TlMjNPUvImwH4r3YB9pTq2Acs1xAzxyhcLj15kPtKph2B2tl6D130qPiUh8qV6hU+xQZqv1vyZ5Ryw1SkwcT8vb3940OTyLOg/hOnE6kTj08SFKANh6X5TaVFdYLO4uyZLDuZ54zXspe2OKH8AN509Z9SwZB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792038634; c=relaxed/simple;
	bh=B6IU+OEFaZvpREcN/hWhOlqTesOFtrdhT9hCYoyE8J8=;
	h=To:Subject:From:Message-Id:Date; b=P6rX/IxlLBFa4PEkn8Nd09fGFnktU0krmTPRfwgC+J7FyvNAaydAnR1u/lAaLjtEzvQDXTPtAmtJAGw3TWehSnIBMgOmEdQD82iJXwZEdRl7/oftnN0pOpJeRBNm8e4T07AAUXbgkoXMs4a+kTrraOwizCOyW4/ZZyp1sl/hsw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGwJbmQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGwJbmQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4BE4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792038633;
	bh=B6IU+OEFaZvpREcN/hWhOlqTesOFtrdhT9hCYoyE8J8=;
	h=To:Subject:From:Date:From;
	b=OGwJbmQUTEgm37v1eNCluZihsCoTdJJivwA7Nd9oeRw6uyZoG8Rry/t0bWr7gv+rp
	 H1tbEbCheJp1Ee3tjNS0gQjB/K/vlky4WxBau75WvRFmPucFjvmem0m+uXI7L1wpXY
	 9kLWY0mSaMg8U1kJE51y/UouoalAxeW91Sa/Ysaufq+mCgmWkDODRaL5gGhJqaqAGD
	 gRcXVeddwsQ0ofYwfA3NVN8i5DIZg2fTolQY+LlP8ZFGwt1ZYBWR8QS/qNwFaD65Kt
	 gvLSnOHgEma8WBU6QKLnmrWLPjCF7W5u/j4NSAY2MOjb3gUNgFq8hqzthsIgPy1zbe
	 8p2fOnVCY5Fww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD19CC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203863372.3629.7640679799837322951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4d523e37524cdf9537f4b794516ab99d4fd4fd24293e104cec48e6fffe368f
Date: Thu, 15 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792038633
