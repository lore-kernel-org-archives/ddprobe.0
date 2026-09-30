Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27027525A79
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790790634; cv=none; b=cQ8j3L5xjSDujm2IfKImmb+a+ZO1tEYIkvXWZjqKvlU1Vh8QHIqGkZzPy1oVnAUCw1GQedMuDaDKBNgg2gDC0jERTXx+e4y+gxqhoUL9Ynr5dOHtGNZztZuF6p12UaOXDvZEFMmm8aj9efKPhLwW6t15ChZaWq4uGPxu7s6Vxzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790790634; c=relaxed/simple;
	bh=V+b80VAXvEwhkqvysbBwhcy3cJRrHPlInThZ+/3GE38=;
	h=To:Subject:From:Message-Id:Date; b=JDRnRN8sTEsNAuza33H5hWYkESURH+lPFFTQpq1fSI3hwHkFSCHCQcLqFHRfswHZzubD8wRfpGQMyTE1mbq2S4jYCLog32mlkqus5wtZwJDsGPHD+9jrPBiGq5cnz5gUkZWhRBAkPHdvVqDsqSgcjTsfpoYR0Y51SjJIPx0QABs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bp1PYKPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bp1PYKPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3E5C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790790633;
	bh=V+b80VAXvEwhkqvysbBwhcy3cJRrHPlInThZ+/3GE38=;
	h=To:Subject:From:Date:From;
	b=bp1PYKPxPd6QdHbRY2phrYn1lT5u0p3kth1XvgfLYHCUQhL1WklVbnbnB/sgTAO9o
	 oYv3vV3IEqeN7In213MyFgSPiEl9LSHjABtV2Rx54vopEJAWPJZtmIrMm9OkzcQR7k
	 ZSuDPSNnDwpnuCR0OdjuEEMrnttBfojoSRSXY/Bowj0ssBjYgnEvsDfxxXwbkCGvo8
	 qbpV2zs6nNlhjLnnv97qzz+NDWjRHOXOovdC3byKQjf7UuYzh5Uffn0uWtjltampRj
	 kcopIM77KUxcQiBzFUP8t4JMWUy/BulWNfbyoRI1e0NxONqdghrjohO4+nSwgEZ30n
	 hZrdjMoIIR/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA65DCA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079063375.25972.10165837579931776284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260b97f05e1fa5ba7b05b4e6b0c2a8b6ad344db26ab99d4b5b273e91c9ff05d1
Date: Wed, 30 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790790633
