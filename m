Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B928484881
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790584834; cv=none; b=rnnWEksXf8N6NQE3lznMCHlmWsojs5MV1WmbBOllHcWaosnulReCoEmT4Cxd4H5977mxPIjaK5c/Ck6PKORJgwy3CygODibLQOJNY+bI9jSW+FtJeCMOYoqSy/SzcsMXjrGwvQ2NeNcqlD6P5JpinTVPDLgCiFU84K6P1vogzyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790584834; c=relaxed/simple;
	bh=pHCqSBhDcSJGEPbCTuLMxlrj4MB+3AmVKynMW5jjEYY=;
	h=To:Subject:From:Message-Id:Date; b=rI6NxlpYPYWYzRSMk2YhcD9Ue6Rn/s73Lzsm0mwuy4LW+xWG2dKaV6iTsqsqYby3G/gIwJJFBPtVsGy81OZ0SunckWhZ63Nd2OXKq1X8GVc5qGwMIAFWpq/SoS58yW6KhrNGMiUVLm66/7mOvsW7w5gws0iQOKVHJHTGFiYS2vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lt90LHTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lt90LHTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC756C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790584833;
	bh=pHCqSBhDcSJGEPbCTuLMxlrj4MB+3AmVKynMW5jjEYY=;
	h=To:Subject:From:Date:From;
	b=Lt90LHTN7ydZjUo1aEiOeLqaWnEIiGeKDVV8TN/bku6/n20F1LsoZXZ+6ZcjNs+uS
	 /YKJc85hj2OHQKwO7w+jltH62JAiBYPci9zYTkccq3ZoERgdfuk12psWLGiHoG6Op4
	 5XVELB8UqGQu2fAWmX06ryLOTvM/n8bJ5hTLuJjuG46V7G/DZwrl3DszmiwY7L1J78
	 tD1YS5e5pvjXbYZWq98XFi/GaJwWeQdfdJdTYVczI1FR332EDB+sOPnHwZaTlZfg3D
	 G9u7sPkzbILy7mOCcvUcNM6OAD73kVqoN/5O23uJz91RSV2EmLJsTJDEd7M/70zZsD
	 beocLWFwKZUgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90BDC9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058483374.5155.1536041413422905063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2a80562a0fc1435ef9252596395b41f942ac2e57be50ff2f8dae4e3012c29f
Date: Mon, 28 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790584833
