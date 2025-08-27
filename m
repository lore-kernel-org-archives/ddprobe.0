Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C5B1D63DF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756256394; cv=none; b=j6o6XTE5qdT+84WCiqNVjg33a9iUhRm91WL86anKXk9CYowhFoMEYHFoKO/OaaR4E2LoZMrepMfP4suWAwqoIe9HMcueJ7+MLTFhiIPsB53nOiUEXSAUSFS4Wlyim1c59HEtWxB0riJqGQWqp0ug2aoujK3aiWFTGVd2TLDocN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756256394; c=relaxed/simple;
	bh=RgRrD439Tl4QzgpnUbgGkqM76pt6eajkpgOD9ev8uIY=;
	h=To:Subject:From:Message-Id:Date; b=ItrjhMA63Ff2FBGciUP6Zk74LqmMC73JZutr4LjQ4t7NBRFmEdqhGFsrGUDPSu1LM897cQ/eS0E+l+2QOtCgkjOn5QYZ7fymZEcKO1Xum/XRnXECWPZOfudsqGc7GAXnO9r5PxlVtJpKs1pGUSjfHv+Je65hTCUIO3LUxUNvlJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlKicgOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlKicgOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A200EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756256393;
	bh=RgRrD439Tl4QzgpnUbgGkqM76pt6eajkpgOD9ev8uIY=;
	h=To:Subject:From:Date:From;
	b=jlKicgOpD/lz+YoqaiEpnlmujuei/AcdppEfrdb7+att12MxcjLh+cy/khEnktrul
	 xnSFn2haGDmNvSUakQgDLN6T7vXPm5c+moftXj/5qAxivZrfP2kzuC8yi32AVa/hVa
	 FmUkNC3KSGgCtiTFGIAmwCj/2qYnYLBYseHBFO03XFJYnpmP9S20t9R8Yv2WJX6Hx0
	 oGQHfjn0DZyH/VtdOTtCGvwb+AfEpFYfAgB5rfRrfDcA/LuetVVf/oaEfKkxcn7fLT
	 RN8cYnvzvfK/K76k53XNydYv1NTzLdWW8O6Y3fmWQFN2qCvAeMCzRENm3ll3Ju9JpB
	 Hb8aDpfWHdruA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2ACA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625639357.9163.16948908439731910920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac5318efa1ee9782ace399879315bf81f5c98f3ad860c5dfde80d6d7b70105d
Date: Wed, 27 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756256393
