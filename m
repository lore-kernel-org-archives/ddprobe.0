Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4687D3093C6
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781255794; cv=none; b=MT7PreW7XOSKFvnDc+h4q6HiV3BL+ZDMoh6EXCr0Q/9iDhCDt5eGcoaS8awxItf3v2ZMwokADXRukCK6NkZlJcvIwa3LonJR+iMl7gfhr7YaFHi3fMrymGpU9Zjw3C/UnhrQ3e7l7SGCaVhdPhzsklAg7a9RGM2vdpBiVZ9RZMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781255794; c=relaxed/simple;
	bh=tNVRpsLxFjxnrPwe9cN1TIu49DbXkgbsJ4OcYACPaRk=;
	h=To:Subject:From:Message-Id:Date; b=FoZqJl1vJ2aJ1kgvNWkLpOMknpHVkmHXFmCdUjr7Ivu2xLZ6dzl0I7qdRPEMz4pVhO22FYdYaHm8IJQpBshWbgWApj8HZSPKC1Js7vqjbabDgVTiy7mvamBGJsmtCMcedjof4ekJXDrs1zOrYI7wy/bA5s6PoIyUfBeigBiZzzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLzu+U0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLzu+U0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23C6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781255793;
	bh=tNVRpsLxFjxnrPwe9cN1TIu49DbXkgbsJ4OcYACPaRk=;
	h=To:Subject:From:Date:From;
	b=qLzu+U0L9XWeZ353RaljVhJjH75WVwxSQWXZGkXNrB+ZWnYp1vXuYWKZfmq7KXGrY
	 vC1Qns7D9s7/uAiogWnVWzYPoRDsthb8GoklmM1kP7cHaSNHFf332u2KyZ44VRTsCZ
	 Dzazay6pYNlzOPvt0Z7oBou5DEm589+nWW5FKg5zHk5D8bqVjOHFUudY2dI3wBFwxx
	 LkIgYsRijCZ0gz3VmfOrPiJIA6qdpxO5opR1w6DTmHxx3MI0AnRZJqLr64eWw+Waj+
	 du0O7we0SxSfwFV5eBZpfZePuNPL3GIgqjk0uewzyJhyRVEIcTRLXi96jWD8WWvSLv
	 PjOPu9XQPPkZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EFBCD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125579373.12559.6078922802184939576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf775e0910e236c6c4d8e5a4831b108867013be0a8c0c1e44c8e3e25659cb63
Date: Fri, 12 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781255793
