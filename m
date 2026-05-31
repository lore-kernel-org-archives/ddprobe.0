Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493EE37F730
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780217674; cv=none; b=TUo4N6mEq9NBtvrLWhXiqJNDFPtfXxXKnQgQGESUpbpjm1/x8hgdbuOJV1zFV3wns+Nk69anwS45s2Pw4p+E/BaWvD45D9xKxHQTly+gSjlDZBP6eh5g3lZ0lI1g/5EVImjhlLi2SXCNTkxHbcFWLfeVEMht5ECbG481Kqp6asc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780217674; c=relaxed/simple;
	bh=z/91UOoG8Ns4EEsfjeGIrX4Hw2DDxRe/nx1+ZYB4pHY=;
	h=To:Subject:From:Message-Id:Date; b=frAUBkSteWoeLnMi2oHwWTlp9e8ejzyWeVWq0t384r5rQtWDCaostiZ7c3nHgjHzaFKJLedcPQXqfCtshDhxO5frup/poD1PkwDjXYxTm+tRP5A9c2IyGE9cHqrGAgnLUIg1exVnz7JA/4Y+VvjpZC2p0DGWNPqFEnnRUm3teBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5/kLy/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5/kLy/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBE9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780217673;
	bh=z/91UOoG8Ns4EEsfjeGIrX4Hw2DDxRe/nx1+ZYB4pHY=;
	h=To:Subject:From:Date:From;
	b=i5/kLy/Qop4au7it09GZFuSenedZgQFVgBS/SnzM+6uqJEgpdwYTBUaJJ34+B9vLk
	 qZLwc9Cv9U+FnRBXRiY5xUjKZ19Oi5kjZ8U0oWLPNw6apLD8WS6tY69r/FWg5XJ4zK
	 IvPBMpqRI8vFzxp1aLsENrjl7QgZWPsxG/EYMaL91sGrwjnH4gGUGRAUKdr3Athrf4
	 LHoJkMwSbIok+UI4Y5kWhubPhjfe0U1tKm2TAkwW9EGRbynVAYqjoOhj1DNe5vLDqK
	 /S5LNFnq5MfR22NcuySrZo3u3Vjy1C+OkkoWQaqQeOEbgASNTvExk5IvVKvTxaZLpd
	 1oSUJTcw7gJzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1D4CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021767368.31497.2124183859287755795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c471f317bdeb8de4b3f326e59d8c16a7d8ea3317586a83bbd81becc81f64356
Date: Sun, 31 May 2026 08:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780217673
