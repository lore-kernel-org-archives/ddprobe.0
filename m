Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673721759F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 20:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718482703; cv=none; b=qBTZeKYOqgC4SZ62M3wNtTNx1HS+1Ge3W8GIgCLJq8zhUy7Zrw1qMFIywhygyyKfrN8QMmguwXYYXVqpTNmWKffzPBVyDScxsaRQryy4a69AcTCL5m31G27wizssCkVLLgrmAI1f9KZJh1Xn9w37RyjRQFxpH9yTiCeVAFzhBP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718482703; c=relaxed/simple;
	bh=/yPzwWkPlhtFl40MTegXuIWPJvDRv/CprPrC9pc3agk=;
	h=To:Subject:From:Message-Id:Date; b=qOSezlRJDYp5oMERz/2nL44F9ey581Zpwls0y4QVVJCW+8TQzH9rjTZW07Xr0gq39OOwy/vRyHrwWfbBmuyoM4/z9ylAheYc/Igqy/kffzYV3btWnPUdVW7sDuOiTHIxJB47l7OrrAd81bcx0aeQ9IhJLPMHjhAxCkgSzjvc1Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1bd2Onu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1bd2Onu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3DAC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 20:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718482702;
	bh=/yPzwWkPlhtFl40MTegXuIWPJvDRv/CprPrC9pc3agk=;
	h=To:Subject:From:Date:From;
	b=N1bd2Onugp2bFgsAJVrnV6SeMZphhVrHuSKb21eCaiRSULwiUG9xyGsUn9W99bQWm
	 H5Z6kPQAXzHvRpD/knOXpHr8h0+zJxyPVJtszBv2CMuijp+J6QQJfXNTd3H3bBz0iu
	 jnxhKzOEcY0Z3nFfYUF+mmlUDnO41by+eEb6KUl0HBU1YNPwVUM6qdqXrdTrMd7e6C
	 zU2C3IYW/4k/B0a1gTfELoHUc6IIGW4VUT+Wct4KNBM10EjUosfU/AXXHdbgYEQ8pJ
	 5xrLpLV2gus7e4adfsGetxLvjmMusqBlXqQLXdyn4UO7bVz5lXZsOAErj6JTrPAIHI
	 7gvozpfO0ORcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1DCC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 20:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171848270280.18867.2004999792394984004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc9e03420283a0d1acdf26a820b03e0a411aca70522ccde86d5e48bba2f040b
Date: Sat, 15 Jun 2024 20:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718482702
