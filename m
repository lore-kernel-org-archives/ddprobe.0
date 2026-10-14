Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6772D352C34
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791958234; cv=none; b=bRe1h4wvoZ25SiizeQc2K0vx3see8BWaciwBDFvfM2kcEsjry0aSLr/RjEaOWAxuQwsLHRMtzxWFQI4wHRVbNBhgI0c3q4cxjFTgDykYo+/rdpHRtFwBmsqbhX6smIx7p7iNoDpxX/JlH4R+rIv19muFYhi5EJ1UuVNo6/mHe54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791958234; c=relaxed/simple;
	bh=AKeH1f/9aYwfIpAGx401VzyeRbjwokHEQuIhyu5iT9M=;
	h=To:Subject:From:Message-Id:Date; b=gT23xqkZbud+potG02MZrRwpyIa/RrxI76RHELYMrB2U9d/fKDL5nTVcO4C9UGy727lIa/RADS1cTfM9F6qJ/KGhlexqdQimQRllnO8Oq0p8I/bWtNImR9kcBqYewJGrSEpzWPHUgf8qKh+3PuEffjg22XQFDVNhGC4A/g3Ss7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShcVqkfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShcVqkfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD77EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791958233;
	bh=AKeH1f/9aYwfIpAGx401VzyeRbjwokHEQuIhyu5iT9M=;
	h=To:Subject:From:Date:From;
	b=ShcVqkfw2ROyCChET79QttjgLQDd8BbskGaDNMSCB7CIe9hJzmJHq4HxMYeLDYzYP
	 /i14DB3qCnqVDdbiaJGKzY7Ldgoso73oPbh0GJRG7VCq2cAXmamM33KUkboKCggwpW
	 R3NQ7j8g9B7xryrRrxV3yRfCb0zPE/da1/qmPlJywXoB3vODnpto7EBM7qp/GmmOZL
	 C8NbC45MFeNvUluP6b6dcxbCrxmVlGlEXviyVGRby2JaApG6FKwgca6HguZGnLoXks
	 f8PxU65CHmj8RncPJYARUFr7ZXrYVTRnlWMjRFuBxPZEKNxbuVhbglq3a1OtsmQTik
	 oaJ3LjStUT0yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B870DCC6B24
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195823374.9894.1879302458439148729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f675852665a69db6be4d1cdc8ba1c50d3ff885efece287b033eebeb2ff7994
Date: Wed, 14 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791958233
