Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F966199931
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763929314; cv=none; b=f5f+hGlEuYVSPRsylvWXHIpds4oYexlBmMCKJBqaz30ReqtLDwg4vmhPFR0J94Dq0QH4+JhTSZxMNyLXy7vSYmMDMdsOctQkLKJ/Sl5PEZZBmX4RGX8BJtoFjMA921I3nskfU3tOqDhUHYD62HTJj7y651QTyhsamCjLF9nZhKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763929314; c=relaxed/simple;
	bh=ccPzPPo7nU32tFAECoVIiNc784Txc68aXUUB8KnnFM8=;
	h=To:Subject:From:Message-Id:Date; b=jnDAyloWJbw+6qs00sJnkJrV4E6uPCfxW7bpKEfkQzn2yo+PEgGiXzBPVDFgpAOakTxGM+mKdrf06uOp9DCQmNAO3Oe5tRSzQ/fbF7+TLd31VglZWqcvZvTmCKN0i825934YaoEPMuyzlfj14bWg72aQ3qainTJXvS8c6c4EF+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZ11ZWlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZ11ZWlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88A4C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763929313;
	bh=ccPzPPo7nU32tFAECoVIiNc784Txc68aXUUB8KnnFM8=;
	h=To:Subject:From:Date:From;
	b=RZ11ZWluG6NjM++YiQ+8x9f47VhATZW1rGMd1VkwVrUNWHcdpzZ4UvadAraLMGM7B
	 3feRiDNO6bys64edEbIZSwWbkMtg4jjYNJn5BxkZXgTB/xPawmE/CIL8ajvuC+wFg4
	 N6RDXRLsgm8tmq5KcnrZRKiz1g3RE0na41puZ43XDRXHD/glNAG/nHe9jDyjBhQ1eP
	 VKrsMxdaG7oOmWK+MA0GZZkqZ5cWpvFJjb9BZerwinj62jFHcdA8A77HipAeLkTPk+
	 7ZRguiktISfgl8AxiQqy/Hk2wueGJcUWK2023Y7uiK5ZiRb3qtQdMWifxLZHLkCwBk
	 Cwegz3cW3FgMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93599CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392931358.16877.1550748189285840311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13efaa7ee8e8d3645a07fa8c4e0028905dd10b6755475df5e33f3499e4b631c4
Date: Sun, 23 Nov 2025 20:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763929313
