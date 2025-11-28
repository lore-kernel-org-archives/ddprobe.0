Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2044518A921
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764343974; cv=none; b=hIc4prKG/7X0BqB9FholmovRNagxD+6+DMcdQNkUkkS2pQicE7yw2KWUFaB5OMFCMYG8eTR72GmO20+fNvkYV3FNnA/ZGs6fNksQYBkDEQMGo3jSy97EBBiS0BvyEQnD6+iN+V0i1L99YPxeeqxkNpWaTCLwV//kIZAZk1Mf58g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764343974; c=relaxed/simple;
	bh=mh/Rp7po/Fw9MIm2JSAcO5iToLn16NcjIbhiV+JWHf0=;
	h=To:Subject:From:Message-Id:Date; b=gZcK25G31RRYYMtQAbhjNz07hxG4sfN2mJcIpkW6ewsvHj3n+IsOShwM/KMhIhwx/5pPIeesefF9I1pA5CH8p5GS6tdCVeBvnGoEpTHcCJZTjV/QDl3qJHOfaYAPiXFwBV08jADQJ61VmE57K0BHVr3L9gINF3vs0LVgAxIOtkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A77/+OKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A77/+OKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDAAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764343973;
	bh=mh/Rp7po/Fw9MIm2JSAcO5iToLn16NcjIbhiV+JWHf0=;
	h=To:Subject:From:Date:From;
	b=A77/+OKVmSe+L+zCAblgyModwL/2D6Xaa8WPfxVbWaSODgd957S2WSERVnwyZ5kel
	 WVg2ixPh2z9u7VozOLyKUIh6TCp0XgbvyZbzltwFlpikZZV5cT5EhuUpEwWhzEy3qh
	 R7+fvLPeggrz29FFldzjtODmrJ0Ze74yGd2XRwbPrfnvDKT1jS/S7+RDQgYZmsw9yt
	 nvB4H6eC6MBoDy+mBlFPAvYUxaIduyo/h5Z46jB2659slp+4Ib1wgwu//QrRnIwJeR
	 Ah9L4e+Cyec1vzmUHTuuPaq9Oag908SKaU12zacDXlygl27jlUvOWYUTsdsHNJhHOe
	 yw2MP/6flib+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90456D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434397358.18168.10949368182135175656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff61f6aa70bace0cc6cc8e402ea111489a976d76aec2374e49c25faddd0a19f
Date: Fri, 28 Nov 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764343973
