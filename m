Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C65D3A901D
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790705434; cv=none; b=LNsG64/fiBbNiVlUO0eTCwC8TCZo8zZCOeBq+YwC9Les6UBZnkofkJbpcvca3om+Ka4/HKl2Yrf1mJDMyl32fiXOBXUu8aBCe1VQPlT8AEjpEO2pkDvKhTPseIXWhN7L44MGVrPu6Nqi2ngKqGZQwOlAmdrsxfOf6ExEpQc19X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790705434; c=relaxed/simple;
	bh=9LgP9E1KfkPjS+cRnh3kF6vl4fEb6UGlXjhG3M03Szc=;
	h=To:Subject:From:Message-Id:Date; b=bDOlxLfJr58Rh3MXEr4HJlVMY4gLSXfkI+kebFYs9tqVanIzT/NSk0nBiIzx3ZI8K+B87xmMZvctx3zKO41+f1fyDXwuY3xu+IaF3T1OduFUcnlFh8MEWC2oBxNYKt0119igsL9zT+0aqHpaLpOa6rGQ2Gk157gm1LYjTtQ043Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFSZnleI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFSZnleI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C2DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790705433;
	bh=9LgP9E1KfkPjS+cRnh3kF6vl4fEb6UGlXjhG3M03Szc=;
	h=To:Subject:From:Date:From;
	b=hFSZnleIHAlGfXpcb8w7dnBw/ZJu0cCRYDq8LPPCeGNfTRdAmwsnND6RPAw2qNnK5
	 PBHlrHcDmMRwx5hwopQTqXpXyE6WEhZUF5+eQ+hEgbLfA2ReO66Q8Y3HS+gCi6hTc7
	 WPx9UPr/GwrJ/ezyFRtD7M0e1h1pgB+5NqX8KB1osGvB0CPmqRDRBUZHM/FOnn4X7s
	 G6+IOLak9YMtSRGRLBFpaRnFZpfS70UhWR60To9FuRGZhzwYGsfTGocVk/pVRztFMw
	 nLVjJYeb4/GXB2T6CeSV5w+bVOGxg34l5qiS5spp5VA3Bv9criFRylhTTS6pcjSpct
	 kNJceJ/PrynTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFDACA5FB4
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070543370.1484.2296207567961585054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2596c8e37a581b6bb6ddbbc93a8b67ba066f304902ab3bd322bce3b1e51b4bd5
Date: Tue, 29 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790705433
