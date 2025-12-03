Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E143433A0
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764738174; cv=none; b=svxq8Hi3H8PM3pfVlZhMpZ9yb11x1mkDecIM33/Rj83D9dfEvTYI8K6cvVphjVeYYP+F2Aq5r1asjygA1dLTcM7eDHi8wYrezf4w/YJ1huxWccpWGlrpjYtSBXM1hDhJn/1S4So8SEUsjRsg+5s+/PPZRQpa7wpaat+IsvXTjKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764738174; c=relaxed/simple;
	bh=f6fVGl8PLDZpTViNVJNqF7V/u5iKCuXL5TNXbuzD0uA=;
	h=To:Subject:From:Message-Id:Date; b=gG72Xv1NC9y88y8NwmlD2wBLlzy658V2K5lxKiFaDIdw7SrAN7O82qRYAvHreAyv6DO9DXTQzDkkLFX3yHbqhaqvFmDAZxEqufqr93JutnzSY6sAcRiCx+Ft5E0lmo9XRq2REOo32H4EJ5dRANFQB+nKk/mveMS6G22hAtbSc/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7ImvXRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7ImvXRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32F7C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764738173;
	bh=f6fVGl8PLDZpTViNVJNqF7V/u5iKCuXL5TNXbuzD0uA=;
	h=To:Subject:From:Date:From;
	b=m7ImvXRMaJ3VaABjyM8ONCUdcBn2cRsDDOjeeerLVXrMTvcoyFgwiKWLu3iyN+wwV
	 BZGZ3OOfl2VimfLMADpMp3QQL6AvtGDgTjH3kBbrL7O+ctVtFsSLB42X/4GAZsmssU
	 KQUd4cz8+lHu3A5aZKsxTcsy8VbdoftVdEd6Nw9PHEi+BJDweRloHjFM1bQPZ2SSlb
	 01CVbOvm75Dg4zPgIrsLufB2FtFXF+fRJ2BFPnE0htQBWr0Rp7WJhyonpQc/IM36Bu
	 UWg1IXJwI9yGR5DnjJ5qY7hCacaa9EGp+kwb/JVTnKb91jbCV7vbHxLquVQXoaPYWf
	 otrq42sruRKSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F5D116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473817358.1762.12673892400952128144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42fa940e2a9082aceba8862197015e170eda08ab0ba23aa9ddb4ce9af5712bda
Date: Wed, 03 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764738173
