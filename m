Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3876F12E4A
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733827554; cv=none; b=fC9nDL2ku5j/xcTjfljwakvvsFZQtCA+0UwMwgMTBhhu9dx9HCONHtvVxWnXmWf+nYGTNsmnInsBpclngrzKZ3S0txLxk/GKxy1aPZhfQfHtxeXN1dirc1g67ZHTgFMvbPvllt/uNXaHHcR1PNI8dOuWnEGS7Ibsi0Kj2buT7Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733827554; c=relaxed/simple;
	bh=RqYlfEMtpEy+6VOPnAT5cY0HMVEVPLeVD/uO6O9dwx0=;
	h=To:Subject:From:Message-Id:Date; b=KWB9UlxKtDl0UHjCTkwfsIPkHgeF6CJQYjXWVscycF68pX2yrc6eJiKfvJdES2mOaUNl+KaLHbKuI50Krs7OIiycfTtN83L7t8VI63AXphGhsmDXNTZBrZcE3pm7FPOSKN2wvXrf5WcaPZQRuJf6a/B8pbbraZcTPzmF97br9gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWtvnmfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWtvnmfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A94C4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733827553;
	bh=RqYlfEMtpEy+6VOPnAT5cY0HMVEVPLeVD/uO6O9dwx0=;
	h=To:Subject:From:Date:From;
	b=ZWtvnmfsrabxLhX4BtLDkCrkJwkeC9PKw2OJ9Tz7GzOmL1bsmr9vxTC6FnGlu/ZGJ
	 THgC61hr9d8k6a+dgtQEU5RBSGg48D9vYnhAklj+cRnmQXbMIrYTKrL/Gwyug23xxf
	 J88UWKJfPWTYYmpWgip8heHB6cWFtZsMVHstIRNvuvtMxwH8Wfii/epaWw7jYDIGR6
	 vOBRrst4/xtE2vIzNnzovvSp534eqY8VLll6d2RukzfugEd7XKscLl+JvxgvScLayO
	 kdRJoSIqUnTC8XUxJZPIX7qE6pmCf7lLAScZr3auBGU8v/PSGpHTlRnQ3u7JytqB7u
	 7UwKlnqJnCd2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B051E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173382755362.1802.11938127695758114353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac54a1a107cdf4794013d351d7ab7c49fd1b4c3db0feee1f7a5be5547da0408a
Date: Tue, 10 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733827553
