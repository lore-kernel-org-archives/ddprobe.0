Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2144E28FD
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749601794; cv=none; b=jbJxFIV6ikzfwwNMDGNABGHhzMRfo1fx2dw0ZWUw6wCRit//vwUKrQDmieAcD7ta29vzMMAgyNQaEBhbTyBWZVmegK5lliXTE5xRmpnDgs5UWtHUM1B6XMH8sRhAJ9p3wfouTxJyRu95OTxiktXXMOmTY2me0/N0dn9IE0Bo22w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749601794; c=relaxed/simple;
	bh=RpyVxZxd88Lci6mTJemZuLQHABwm37MXZpqe6OBwmgo=;
	h=To:Subject:From:Message-Id:Date; b=fgbQ+11yQ4qj6Rp7gvayObKsM7WvIYy9K5JHW8dTZIAsyedeA5sPJHjk5Wo3N4721U9Tpe2mc4rT+YWKNP4wvzbcgyj1oOn3FUW2ZahskgRp6LpKOxRv8lFjy2+Y4dBqmU4rR6wUdvlcQPR3T1mYYVJNYhjArzg+fiyOum1Sk+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPUG7evp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPUG7evp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3758C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749601793;
	bh=RpyVxZxd88Lci6mTJemZuLQHABwm37MXZpqe6OBwmgo=;
	h=To:Subject:From:Date:From;
	b=uPUG7evpj00EWv4isB/bHIn1Ojljmfh/AABbIj8oBDyvp9cGtO8wF/ZCLF2x45vLy
	 xrJpJcEG6qC2gohq4bXBuxxWFK1IAb0E5vl62MXrLNCONjn/iFCT50sjE1SdWLM6dU
	 pLL8eZNZtRxxuDuAFzHaW07UJ/spEa0GfNVY3G+sChhWyjJvlzu5SlNJomdU3jI8ZR
	 1zJKFp+eFGwpurgUwKb06caKTA+AmwraDJKk7mLFF9vVyLwr9RGd7pHM+aUrWnFSqi
	 GqF17kPnunwMpK92053L7fVIolGZx5kCs7vbyxmCmRlvQadql5lEDOk1U+CE+bp4uN
	 mJmTjF743d79g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F1C61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960179358.19463.7276445878782188113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f12b80c9d6ec7f0dccd750d55995e36f687c50a6fdbd96d407c417f20cbb305
Date: Wed, 11 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749601793
