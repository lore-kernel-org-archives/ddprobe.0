Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DEF134CF
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784515114; cv=none; b=T3ENPvHdcizxuTy963DC6tpWwkdgQM3K4xDfGDQ4u96Z8naFGcA2+Gee5fL7c/pWGWWCg07wXT2hNUjXYa9bjxnnZkYch42ykXPXRG5exFpFyUEPs8slhJPLdZGFNaZPTypgeSGRwIJDZUfdVK3PWEMjL/XF9lgLPHKmfrB4MOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784515114; c=relaxed/simple;
	bh=hRXg/ng6f/7xN7UM8cFf2N+fch0ULBUe4j5oEk3RWUY=;
	h=To:Subject:From:Message-Id:Date; b=sRtwAuDIu2DmBeHR1NC1/ir4R/yYpfALjkHHHDhKNXLMZdQWRNlb8jtJ8vz41wJ4UbiKw73qPCf+11ryy2SYje5VEoheXF5OdkI6vGrNNjEjgAyn+adYGrp6ifyLgTlWI2asWCeBGalabdDOPNz1+S6XRkZBxyBEj4qJwSBjRBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQX0+53R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQX0+53R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF10BC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784515113;
	bh=hRXg/ng6f/7xN7UM8cFf2N+fch0ULBUe4j5oEk3RWUY=;
	h=To:Subject:From:Date:From;
	b=VQX0+53R8wsUBWoesRIrTdNARFgDMZihEgA1+FE7b06PmOfJ0n4BiWkH1EyqE25uP
	 5VTVNaeBFtQlZZbGSAIywr777I1M2spMEE6CCYf23MIMsz2xAcjs/T+ds/fZtUTBqP
	 dE98FIT9I8HNZrBqJ181LOcwNMg+RXMq14lRLhy6UGRilaqTW6nJTrbIyPxTOkfW4J
	 3W5UCNxMLxMbEnN261FZF3EaOXoI12KlBG67wUmTjTVhHjpY7ezvLu/eUs2pgvQsRZ
	 xmw6QhQSOU2YVxKiGJrfGpq6xJ5ul51typDxNzLdM/20ZvACT5BKgC75P2TcsF1AvZ
	 y2HltpR6FHZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FD5C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451511373.15667.6508868384600630605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f458719c872fb8d48f2b7ef303562c7ed0cb239284f44107ccd4f9421421248f
Date: Mon, 20 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784515113
