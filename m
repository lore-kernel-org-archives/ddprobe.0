Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1827F4D599
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757012994; cv=none; b=mMZgV6EnHebwxKrKVdMck18UvkT5sw97HSsY/p+SRtjWRPUN35zpPx3GXmcimf/bkZ9GSzQBc3lVV0wScR+1UesmwlPuIoOpNtQmzq/BCxQY4FcmNPe9M65l8++tO+jj0sy0vmGPCf+IvNU88HOGWG+YQDR8OJtP9yLXMix7tSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757012994; c=relaxed/simple;
	bh=p+iLJZ6ItWVvTXipEkROKcHgozgJgTkpJ3uONQVx51c=;
	h=To:Subject:From:Message-Id:Date; b=H/xrMnJWTwzkwLnyu+P4NpzTyo4G34khl3jObf2jYDzDm6fMCgBlGbDYeAabsAL3QpSEIfmUyYny+XldNBlqWNSZwb5GN83sfA61eepkdF+4NPwD5HyXM6SsCoVLXLgmH0CaPryxS0VSW5LKboa2glNUdJ/mZMwTL+oz8FckBpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIyQF2fi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIyQF2fi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10DEC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757012993;
	bh=p+iLJZ6ItWVvTXipEkROKcHgozgJgTkpJ3uONQVx51c=;
	h=To:Subject:From:Date:From;
	b=aIyQF2fi4WvXMG60lS638pf4/OXpvjh8HJAOqrPk91yhyb0c9EiMJyHn+26Sr2wzo
	 1s4rcngX2eJ8+4Xl5DESdjaolnIllnd5Hcih7GlzLNKjYxAp7NJmI95DkiXXUN7i1v
	 XhMdaMeynptZEcZ+BpaNhsVUucxT5FM8nYiBSOAdKbWWu4P4ijz2GTFaRAA7OWfNh5
	 woP4b4HyCtv85EaSt9adCR7QeCh+YLeleojVsYbBqBUL+mErEhbLkp1b4FXxwTuIzE
	 G9Qw0SR24XmynwmgNugzqCeM1a/AfdoAy3DpFTVOQd2nMQH/TMSBZQi5nEdhmxXWlv
	 iOrxHO5LVICHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F594CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701299358.10478.13843407746348071992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0bb86a18bebdb370750c46859c1a49db4f523fc21ca04a5a48dcfd4723687c
Date: Thu, 04 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757012993
