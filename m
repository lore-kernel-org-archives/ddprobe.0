Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3607419CC0A
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746571194; cv=none; b=sbbsep3267pn2+O8PoQCllDHyAOCQJVAZDQ3okYtWag474YETBvjr96Fp5lfqkUG6fUIK2Yx5W3cN+VZQVcAk3X8hZD1n4EAhX0euY/eoDXP0AWZO60cn04+Ev0ZGZWudk0xB9eZUf+HfXg9mSFSjM5/bHTX7rAj3QdetgTTzJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746571194; c=relaxed/simple;
	bh=9fGgOY1ay5AfL41vLH3nAC18vong0uf6KEkdjD9T/ZI=;
	h=To:Subject:From:Message-Id:Date; b=jMgf8ismSLYTGSuMMQ/R5nZKa5hFjZ8uSPkn9yDG9u0zUFX5fOb48i1+4az32Wkoq8kHZn1RqqQoTSi51i+ZMeSLhqp75aplJ+MsAK4+Bern+7piv0xZFrmaGD02txfbXmkXvrfB4rXAbNwo6IIcm6nw6dxS8ILK3WDeciVdHq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=up+cTmte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="up+cTmte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3807C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746571193;
	bh=9fGgOY1ay5AfL41vLH3nAC18vong0uf6KEkdjD9T/ZI=;
	h=To:Subject:From:Date:From;
	b=up+cTmteHmZg6zmvh5oPjbCK1IZO+ofCkaDhRqrDDIKMdJKjkW/5sVeff66q6+SZ2
	 0OY3xcGVstsKm+Gp9O6lCPgwEVsqS1/0sCnEzwbM7GaeMcO1dSa1otUzjFz0QVgWmD
	 JnntNVS+3dJuPMmRUQBfqZyiBAXL+GTJ3Xyn2EPoBbcwaHjR/zpHuYAoNSyBDBPp4W
	 OGsRxnrezW98d1S7+L64hQ24U3ssb/SGdsACfQ4A7O9DRU4zuGCLQEvoIcQEvWTj+s
	 l/ZzjOpllqsDSVzBxSRBpRNcP8zlGSVcZ6a2ZLlWlbFNsd2lN6M/R8U02qwf9g+IX8
	 ZnGIifo0nPGOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9028BC3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657119358.20538.10767078097593220294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4701dbc41b2adbac85a8a598af2473b9dcab4299bae385c1e8fc9a84ca65409d
Date: Tue, 06 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746571193
