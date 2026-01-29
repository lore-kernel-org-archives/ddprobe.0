Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388612DE6FF
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769652234; cv=none; b=mgoETNfxcrjEa/yEZ9h/F0l38JKHKYHATFC8gx3OB4ni5HtwX1PtbM3/QBnftwrOWxvYdWwiH3Yq5ei+GbK1PGxFIPU7mK0TLjQg6pOQn1dZy9tn+cpizmr7oPon13+AzZGn4Vt9rkt7Uv0dyQLgdF8N0drKptFx9cTwmeDnTf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769652234; c=relaxed/simple;
	bh=CsHhwdgB0InYphDzdA24EiJ1nAG0fMG4TmP/bEp5GeI=;
	h=To:Subject:From:Message-Id:Date; b=NWQGH9PqSXKWo2wJXi2/YK94TnQgF8VwnofO47nuftcR8APmSCdKtrpQ73a8XjhVb0mw2V8IWnXICnN9aMW/WscWcQ8CgCmUIpwv+6F13FgVUS08IRSymGgUK0czmUUHqVpib143QIV96AGjPEHrxl3dqYxbi25KYFylqEWX19Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENIi553F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENIi553F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE28C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769652233;
	bh=CsHhwdgB0InYphDzdA24EiJ1nAG0fMG4TmP/bEp5GeI=;
	h=To:Subject:From:Date:From;
	b=ENIi553FoGhF9OCoc2T4n/+gJFwXdYH9sRD5Y3sYIudWNjKKXw5CZ5HiYLTVEW7up
	 C0C+L58eCie+xQFY7AS37Ljh5usYD4STOGl1bTmfh01U85ItjZatrX2QT1EzYTsXgT
	 O7mQYbTZxx3o3Wkc35mH4pg9DRPBfos5UZSkM83rZBTOVbhXwHivRSTDXVvy0DBpuQ
	 5Hy3mLb4qbSeEAm8QUdx64blQEF5agSNgydGaQc6nt0TzUbVvK3BOHARES7jU1HlcJ
	 h7Tm/R/+ihRQp7I8l6ZeLY2Kw7MrCaY2IH5aj0ppAamDxEKvM+pbNtKh1J7qmGOFDo
	 s4eS5qonQ9j7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A360D46C16
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965223360.22855.16170502348046983776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69cca61c519efe509d87aabb915917e1e200c13a2733831f2201059220ae496e
Date: Thu, 29 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769652233
