Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8723CFF50
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783540714; cv=none; b=np5oymdD8B5eo130rUmIookb6jOUGt+dHKmKIDbyZCXWr9ymaQ8kPZ69BJLj/+MwW7AFp8QBFMxM15ZHR3zZ+A1rHIB5Qm2LHELvTwIcr6sDbBiAGcjQGu/O+fWzMxOU0CvBh/xQhcBGQhTYJtLLO21or+Z19GKVguKI/CTitOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783540714; c=relaxed/simple;
	bh=qdSFkrKH0TWkgGK0csQ4Q1kOttahKnewuG3dsPgdFdQ=;
	h=To:Subject:From:Message-Id:Date; b=FeRQaLIxJE5BQeAY7tQYDJ4NdNto1jfZzjLu43jPr04GpAq2L6thlwgV4vZjBtvhNNPRIc1Le5/oYUovIUxIjAtGBqvU7fCIURWJNjUT7eVG5cWC6Zk9Ql+C0YUaRIfeSMDXgTH1iWP0VZ61kxfOeQ8lWDNpth/4/NMONoZxPRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvXokVgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvXokVgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA71EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783540713;
	bh=qdSFkrKH0TWkgGK0csQ4Q1kOttahKnewuG3dsPgdFdQ=;
	h=To:Subject:From:Date:From;
	b=RvXokVgO+mCx7zEaucQ46rltN+BA/PXOpMDDFhopP8eMk9vmDrAWcdj9Km1Jr5CTG
	 7ODG+7t8HJp7awpmp7vMRTnVusQle/L5UtfCIJiQdG6FfsleVLn5VmdEKh2mK00aQh
	 9E3RpyRG48eHUS2D/rHopCv60ThftlPtKA5kCDuySVXrn94x2heKtyuq+GYt2XmNio
	 mB3r4XUNhlRiFWzKN4VRnc4CJnXGI6RJjKq2dhaoKJJcnqgwUTmSAKBhQHKF1hv64l
	 2NVOZDF0M6pj1c8p7WIv8XaqO5vCxaULwL3Suwwg8pbJIpX7O863t1BJ0/MNCRAHZA
	 TtA9QNfRWGDrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D77C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354071368.7463.18311511466614880984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c55b98d6c646076357d190bb4b8a1893deb27e74bf49e2a9c2d9a62ef6e0180
Date: Wed, 08 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783540713
