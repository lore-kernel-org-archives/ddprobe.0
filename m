Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55382156246
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718208503; cv=none; b=cd9vweSfZvrSuOceyqaUGu+VuKqPQ0IBSzGgoiObbed1e2+7+Z7S7sklLeN83hh7BY8GGVWMSPJoFUiKjN2C12J6EcCEn9OpdupaWbIucHtYIiXLirrVB7xDpsJaywpYwzRuPxhw8X8LM+PxPJ9HgllKV5EMhevb3os8sX9mOyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718208503; c=relaxed/simple;
	bh=5fDB7X4Xb5oLHA9cfd+7Tstao3fxmzVxKWzNLa2HHy8=;
	h=To:Subject:From:Message-Id:Date; b=lbE4OhtNzNTemXy/wFCiaehvOtHNHLZHYaefjkoKzaWm3dhsWimTXflzA/v3Bx0ISrLyijO4UYK7jB72D2t2BJ9pCLOb/Y+Pf989NmNm8BsCiziLChmtoFD5Hq8DkJAqqwoOjipwRvtuL3IgqJgJ6YgDFhoLe5RUl/4YxJABGhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5Tvzk1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5Tvzk1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E251FC116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718208502;
	bh=5fDB7X4Xb5oLHA9cfd+7Tstao3fxmzVxKWzNLa2HHy8=;
	h=To:Subject:From:Date:From;
	b=q5Tvzk1cEqXsr1Sj1I4SZw6AoFQRV1aqT+LB5qN4So/lwloGv0zPDe/TfI0ZQ/Nte
	 E0xp+21rqekBOWvcOEw9/1S+zfAI0+R3Y13ivZKk+Et29c3k2ACpZs8cbAGCiVXRMj
	 PJrg2xw6iEm7dAMt7l5Sx759gZ/BLCQlNJ0+aLNFN0C8thrXy/4Q+gs4ajhEFN2e3U
	 SzxiKVd8jEnY92KXZNRMHd378aedPo5BER0b9e2rVRjE+w0aZIb6IsYv7jTB1jaU94
	 9udzkOaYDsR/a4PUBZ7HcIcCEQcNwoGfik2v5vrwqYmtLx8lm/IlHttJxWryh7/jEp
	 Dd/ojnl9GSrSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D19C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820850280.1803.11635283045315854643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd6142f6b192517a208db9c3a2be86e988d036271c1a3bdf78467699efe0f2f
Date: Wed, 12 Jun 2024 16:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718208502
