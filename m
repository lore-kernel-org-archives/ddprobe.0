Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325421F462C
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759568996; cv=none; b=PE9ZgWGvdAdLYTRFqZrFzaxi2v7VOg0S6XJLvH0RXYsm3Ha6E2KyYgRaFy2OdIhlcMiDDch4Bma4mDpqK4EHTNVqnsZOiTnHdopcpdlR2vySAUkyZno5s2p/loseKCZyghhRQSKFqojk/4VdIwKC2Z6fH6zKM8if8vFNkeIkHCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759568996; c=relaxed/simple;
	bh=6Fs7cT7sP5q/6Xs1PbO2bT3ORKE5DsX16182m80KkCQ=;
	h=To:Subject:From:Message-Id:Date; b=LvJvdbLWE2mEmrIVD1UclnvA65MxelhPPC2jYFOSwfpSXceGFdpaQkqRwdpqeothevaHyc26CP/7MCGuHpSdwsX4jGrSeQrS3R7PAPvJOsjKGG2a4SKtyRiB5riD5aI4c4a1xi4cVUq0B5Uxtb5X/DjUI5tkNYOMT4u1MfRlt/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUA6a1Da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUA6a1Da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA071C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759568993;
	bh=6Fs7cT7sP5q/6Xs1PbO2bT3ORKE5DsX16182m80KkCQ=;
	h=To:Subject:From:Date:From;
	b=SUA6a1Da/yTweTnjFoMvfCmaVNzq/DBB4/OYnqA2G3bgaVDo53BFQj6gDkF1BfdgE
	 4Adlr+Al2AwqHOwXJvw5GXsGtQh3BksBHabN/Fcv1Loq8cJ4xVrPTq4YFNSKyUe3e8
	 rAJuh3ajo7VS8JniIfUQhIfXOH/t/Q2EeLdY8S0PIIwG9W9wFOxcT/zSPv0BFlvhBq
	 iwRJ8rbSjQvIw5kZ2CEIFTvipdIUfSy9n3o5AtLHG+WXaGHZyyJl3xdfxmG3JFwawp
	 TYN+HqLKZhpXczxIPNqnOP13VbVPi7tEopIHeACK7XHDAnOqMszGSP5sJU7Smyu+e+
	 umvYsJXxgpyiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973FCCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956899358.13441.9421070313077661605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d83719e6f314cb5c5344d81bd8817433cd3b9333121ea93898b804281d3b2f
Date: Sat, 04 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759568993
