Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F12B10F9
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745633394; cv=none; b=db8mQivBJizzB8XjEN875qFVu+WLkBtBqQO54kQHDRFtyHjSaGhRU/+qrQHJx6SI7inqPtFDSam10p1glp3p8QpC2Cd7Mh5AidePJjrXudViZYCA0JP0y+r0C3bK5upvqThV2ja4U8rz8tkbDagapycuCFga0Vz0IBzFJiKe22g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745633394; c=relaxed/simple;
	bh=WQlYXCt7dcvroZhC2YlgGPZf6N9eSqDoSDod52tl4PA=;
	h=To:Subject:From:Message-Id:Date; b=CgRnz0/g+/WnaZRVWiSQ9q/NI1sSnHaFAmOmA8RS359QEL+43NYbvzaQpOchbPACfynsdukWpNP9uohJFlCcOOstlGZf91xEo+K94KNoLLbLRaglopPbQ+QHG7K+BjCSDj3rOUncwYdDXMGHVjBMRi3qhwjohGbv2vaf67q3Wcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/fF8hi9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/fF8hi9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44BFC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745633393;
	bh=WQlYXCt7dcvroZhC2YlgGPZf6N9eSqDoSDod52tl4PA=;
	h=To:Subject:From:Date:From;
	b=u/fF8hi9FANaxmeOh38XRrTrNdpoDmLnSem9vsndFNixPqxAhMaEcuhqNxl9XVcTH
	 rTLtWOufTcMkEnbI9ZzGPAMairl8lUO8yFMxMcbc7TzbuJ1wGUDftt7UWPjfMEGp8x
	 et7Zm5jAIgHvbNl9srkrVIyfxVqpCHs58iqYim2rG33YfJqZAE8/j9KR7B3PNMTKSj
	 F/FPLTeBDriOpL1zIxPEtf6wHe8KP/7zlDW6n64S9EBbdWDv4FSgaUE8Zrn80OxKXG
	 dRYUSMa0G8O1JxIM8ABHfJFfjGxsVHxLGn2qU/wAhXx0kiFck3Uoa3i0KwEZOfKzpK
	 V9GUn24mWA0cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B8C369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563339357.22684.13149224802895242601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2410c8ec8164451593a5d0decc902af6446d4a2f5e4377277131670edd702a
Date: Sat, 26 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745633393
