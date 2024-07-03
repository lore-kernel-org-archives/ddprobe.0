Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CD31C68D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 23:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720049723; cv=none; b=V0qSiLExxaM/wfub57/9Wl0CuKEu2+vvmo0JT4flgCn5l6PZ3thAGmTXLe3APmNvTX4z2/aszGPm6DIwdm2g2dyhHdXV/CRoKPkOSfuHCqNFAp519YRE7rWg3EsrbfR4UxWyOH9meJGX4sMM+l/rrczz5oFCYkqZK8zYhF9CE0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720049723; c=relaxed/simple;
	bh=f6ys39mx8ZL3LRpjY1eWxgcCspU+NNEp390kQg1Nlkw=;
	h=To:Subject:From:Message-Id:Date; b=Y4JAgA9nCYGLCHR+jNNgt4CXJr4jm9cbl2YmwriJ3VDcJWaIFtgIb5NGpeKK0x+qz+MT2WwK0wTsrvFO9Ug2hc9cvhrMCchh8ILbWUaHv2MLhQwYp6W2bOYfH/ORLe8rKuwY2r5dc/08zXmuhsbvvgjjS/oLL4JbjbtcORi5p5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwVWC+lS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwVWC+lS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D935CC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 23:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720049722;
	bh=f6ys39mx8ZL3LRpjY1eWxgcCspU+NNEp390kQg1Nlkw=;
	h=To:Subject:From:Date:From;
	b=rwVWC+lSCUZWJliIvSXDGIzpFXesG3euqWtSD8hIFBYufM2+TNLaVENYqFfLePsgY
	 a3y/5feZ/a43aVEMQKtrchBO0xp0OHRq6zXCFeLzV59lAvFiptD0APwavIjk3edCji
	 QcdsuNDkVG4T7mfEXxvfrmTeUK+dVBlVqRyOCFEesWy7kzE6b+S2zIHAPxDlmj9v4J
	 ODYfPPWwifmom7CN7L4wSGbJnGtyhEJjxRt1eTKefbISmCC621apjyrSdTCSLo8PM7
	 2FJd7uU0cc0vTF+a0MuwhFAn5SfFK5xsRiqmwP6BR9tdkxdfXYh/gP0vWxe+hx4FLE
	 jhKMuL/uzWlBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33F4C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 23:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004972278.14896.7354838019329930946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b749d99d2363e600a50d1217835cde6e387b0651ebc79bb6373650c6cddf0a
Date: Wed, 03 Jul 2024 23:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720049722
