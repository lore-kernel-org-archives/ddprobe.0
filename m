Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047E820DDA
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706673497; cv=none; b=NLEch6c3ORauMCdwkAM0vXIyIOtx7OMtCP3iz4TWt93KTVqpuUAxXWbPgKthtjGwjM8NVbcl8/0oYqy58mFnyF0BoS/2PoquPPMtJi6KJ+TLOz/Vv1zwROB5UmnK1NNtfhwjaj3tc4Sp1zpYNR+wMaKcztj4w6a8vXqJXdI2MNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706673497; c=relaxed/simple;
	bh=Niu9ODaNrwZS0LY7KUdTNSLeQpF+F8Bkrjq618ITxBc=;
	h=To:Subject:From:Message-Id:Date; b=sK8ETQPl5DbNPe46gKusTGPOxgfYO//5Ydcfzn1C3qo4P8x6/FlCS4QauCNR+e+TORt6a6M+rJpcrfMVKENlY0NnDU4QdfhprFFTzDvTCUTZOx6aD1OowA0CoVy8TP+ehJXoVOAmDXhT+DNhvOZPbaNW9xsm/WMQBAWTJafvZ7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZ6LE0Fz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZ6LE0Fz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8642AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706673496;
	bh=Niu9ODaNrwZS0LY7KUdTNSLeQpF+F8Bkrjq618ITxBc=;
	h=To:Subject:From:Date:From;
	b=WZ6LE0FzM0qC8O40cV8F1/rF+9ycEdF1lQbvMaDmRQrBF7xzX7+cldEEjRKfkHOnS
	 l9Gfsvv4wwnCEwUlVwOA1uVeWudXhrsu+0Z/I8jpQH2s+IFog2fOvdjRig1FUicvEa
	 pN9Y0HASbFxvD7gRljAzwM2ygRQKSFXCd6dTDLStp9IKcs9wVknK3JZRni94F/5Fql
	 nmvBDs4iq2zeQMYA3LllDtvenmdEwgOeK0YWbzaIWhYzgnHOEmmpZtmWVb5Y6M9UlJ
	 9C/amKds6GBCxT9i2dATgZV33uRjGTH4VMxUGZUURteluwjHp06SeM0FyKRMq/er2M
	 9Z8k1mtxso5Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFD7C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170667349637.8993.16355299983700569000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63da545a87a603c9bb74728d64c4f54e4c30600e048f5d8b56f429629890796
Date: Wed, 31 Jan 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706673496
