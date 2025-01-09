Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3023237160
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736406354; cv=none; b=UgqCDeWEufDggW5c7r/p9R3ve5d5OSZ/53m8S4Dhtvdqv6tCXSz/6fb8suAmo3xhf5NZmaQqgi9P1b6qJ4UZgpxR3q+ebn6fR5ba8kdqEGZ3V1uoheSW9KDEgQzd5tbOmfiU9cQSM/yrmWNuV7JzKr3vKh+YvJGrBhnMaRcmE40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736406354; c=relaxed/simple;
	bh=GyUc98MpJET/QcHwVspSO+x/FDqqyGUzmfwLkIW0e9U=;
	h=To:Subject:From:Message-Id:Date; b=ANXorzvTHg7apEQgxnykDHhhx7cKVaUZRo6fL1qS8Qi+uQeHXc7sfCLU2hjaIe5sFOODwr9t5lqYEzfTiX3LAEcSPmF+esJvNm+OWb3dRVEdJppBIer4Oi6WZ6+3aTnwccBVwj2AzXJPv24nFct+Yb3zzCvVw7PzyX2VI95sZ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxdOQgXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxdOQgXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65B8C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736406353;
	bh=GyUc98MpJET/QcHwVspSO+x/FDqqyGUzmfwLkIW0e9U=;
	h=To:Subject:From:Date:From;
	b=NxdOQgXP9zEz5ddGznM+vGbXAi34uL5VIHWUCOwqChfyCGDeQaQJMpV+jYKC8/k8R
	 zbmkH9MLQ5POxju2c7Bjrl8iNNxfCuqr7UnGDn0ZiGTmIYQRTOMfbPlcPfTdmU9g+j
	 2y/9hGmkCYLi2Me4Ie1Z0EG9gPeQYq9ypfLpDRqP3Kqrl3uK3pZswPv7sOXrwvRRMD
	 8SDFoeutTR7HElIEjmwmfEOGzPC9zaWQY1g73bVMKjk/QUCkWAC+SBa/nQfB/gzdwP
	 K7Z26YkVeHCgpoe/vwMKNuW1zHBHWwK2H16H7s8NXPfawHtStcmXjlUVGAB7QNM0A4
	 lkY59OiGglpRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97478E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640635361.4116.10074475768818735670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82de310a5784cd3053b1d7be42380d65df4cc946daa814662430a8e9811ede7f
Date: Thu, 09 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736406353
