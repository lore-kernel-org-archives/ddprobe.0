Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC34743CE5E
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785833434; cv=none; b=KFj7oQDpVlmGxHCHQABVx8Rd0xwyG5bYoXFuj3Ri8MK0LN5Q2RegSzY2jrumRH56M0S8qbCz1LB+sLFRoSwO8yOWjHDwaAr7D6cWRL1OD8rAUXfOT6zJVxQD75rZZUeVQPtcm5qHIQ/sZXyGxoRksrvNsEBgI2ITHcB4a8Ye1Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785833434; c=relaxed/simple;
	bh=GpEIzzNZM0+rR7nP9YX5rwzIxgnv7K1/ArBoTrmQQxg=;
	h=To:Subject:From:Message-Id:Date; b=l2E1rU6vQ0FoNeoiMgblhllj3LE2nCnYTHKEn/m619yQvIoDorQr2nuQTlfj4soLsBFPR2Z/NySDxEFW8KNpByqHnp9pgYNX6cxHuK0rhp3alkb05pPMPSAS2Pw0O8QNCTSBv4+EthI+PUVqOAnoi7+cQw1DLEk6UYX09Nz0GOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hH8U9KqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hH8U9KqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C39C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785833433;
	bh=GpEIzzNZM0+rR7nP9YX5rwzIxgnv7K1/ArBoTrmQQxg=;
	h=To:Subject:From:Date:From;
	b=hH8U9KqOE997DR8tnCMW/zIKBW83/tel9Xa9IbN1Ac1UD+lGq4vBCRu2iL3ZKGXcl
	 vqNPHd8zQeb7sl/p/BuCKC5PjayULX/GVTb34AJRd/QfxyIkZ5Vd29Rh0VaGMRVOAU
	 qfKPoA0GQVM/cusNz7EC2s/FAj5ZLDf7Xa+gU7HcmKrzjgSVbc6k1qX8BsQAOqpKh+
	 9fh6SAc+DyPTxGGoZxrjk0W1ie5D6E3PYfm9h0dF5GXPOxMCNXBdAHX9uYNABSWCWM
	 LQkxMPbJx9UekpsMopbuUK0q6kr5ns9UmO3YnTRUNrIJCv9KAR9cFzxw9YnfMts/5j
	 /viQrF/LzNZNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BF3C55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583343374.4508.2901162910024705341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a92804c78c60ce8189d2ac34910eacd7ad8ea07c48cc6b6e495c2236641bf66
Date: Tue, 04 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785833433
