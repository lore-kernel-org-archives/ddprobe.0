Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2307438A28F
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775161534; cv=none; b=qkY89LQoGwoWTxnUmDDWFca2ePgDGXYy+TZSxIjP+MmdC+2dTDVlXFX+uAdwSrHOxt0eqgwrcf8hhol8Bfijksz3lnnX2RQOY0puOW6orT+bVV9QmkgOO/xnRuv8fCkPd3AexH9uD2JYROz17QCS7tITkQYl0OL3lwhec0GUosc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775161534; c=relaxed/simple;
	bh=nFM3xbzsJ4ctNVXyQnaWvhKjoQXUjwk6aFYbZEATAVU=;
	h=To:Subject:From:Message-Id:Date; b=DA334JWGnmXg4YnAZNfH1Wx3o2hN436L7yhJ/khndU6p7XtwE8M1xiTCdJ3OWbCQ+hZcKRt/Z0BVV4It6i9/CTB5Dy/W+sybNvb/x4rCWs/xaeCHie8HvIf5ZCE+eoCsZ/H0g7jLCk/vpsmnStHzj59sj8sOLyEiH047es6HBf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOyk+SSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOyk+SSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85EAC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775161533;
	bh=nFM3xbzsJ4ctNVXyQnaWvhKjoQXUjwk6aFYbZEATAVU=;
	h=To:Subject:From:Date:From;
	b=vOyk+SSF0+c3inCgdZnDuh//YVLvJpqDjju4S6Gx8wfLOHigWtmYdoai/16ihyWKE
	 +wxdv7T2QqbJ87BYDyTWckV24qeH2tIJwKnBsjOMGU10M2qtCjtDTHF/Sg9MfiPo7d
	 RGRT33AlZQ0+YVrkeIXtR1Stp3Tnr1TcbHF44PYmk5MIqW6YqBU8ln0qV7reHvZMmp
	 6JpkI+WRsUsnX+e9itLqKu5Vzq2l2bfc7hH7mg+N9/wHrywnxPTMLXiI5WRdN0IMQ7
	 0XMY8WFu1sW1RfZg0TOVlPeCmrzAK67bt6iFMErACo8HR3jv3jRoNwabPt9+jmty5O
	 0DEhRjTDv/9uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3CAD6AB09
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516153369.18397.16321120455830793173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1982141cb4c23b6e7591d24c22454f6dadc22644c6ba6d42ed8dfdbbec940f
Date: Thu, 02 Apr 2026 20:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775161533
