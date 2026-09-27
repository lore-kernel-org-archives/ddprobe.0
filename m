Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02C32E719B
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790540434; cv=none; b=qQhBgJezbY//eDfBdFuVrhMeLnKe3Wt4f9tkjKYmlnFajdVTp/Mj5C7U8SdNWVZBhAkv/YFBqGuX80HCyyWROC1aQU5hcA/SqJSc6F4FWn/mz8CyvDL/BSUJAb6P5nOaluxiHdMmEAXwnM0th9kjAoOVVrR6Q6h9J9PhWSP1jyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790540434; c=relaxed/simple;
	bh=E1ufZs0PXdpa5/bgjL0xoyXWThjnVowhORATj1+DrXA=;
	h=To:Subject:From:Message-Id:Date; b=bQl7nw56KLR8Qh42pJ3mkiqqTZfNqM0Ygrhk1/nxp8EW7P/RQogihs8BUtEZRT7NhqRyAOsfrmVLdjPXVg7rfD1o7ZN2mKXVs7NTolQ2Q6OZEb4xRlWf33gY4E8trmqZbXesWrOvafM2NFuQuDetXC1nhuPoVpFittFcupmzHK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pygLmW+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pygLmW+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8497C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790540433;
	bh=E1ufZs0PXdpa5/bgjL0xoyXWThjnVowhORATj1+DrXA=;
	h=To:Subject:From:Date:From;
	b=pygLmW+AXQ1mh3xGrL8CutXatcuG2PMbtxCUXeQcjuweoYHqaZDZYgBhY+3gq4XSf
	 JhYZqtkcdLQ7YqHSll6adPrk2xbIvL0z/ovqXqYumlES3OfUJFBMIx8pkFWBUijy1f
	 6GSWsIP4ScU9LlR/NapxIvFkbSwLFIL+O0WvKCOPFFa1ehxMpfV6eLrlj+cCjvqd1S
	 zfhW7n0px/zL5xBerUzKiEEeIdavFJ/LhCdKAXsoEQbzTmm9nEFV0xfKu/vXu2BJEQ
	 S2UPStWPw5bxwKyrMaSVKgBG1quiAG9LPwghg7XLl9KoI+CfAs7QQezQDSGBY2S0C5
	 GsddB0iZK1MEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB5DC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054043368.11169.10118326785550332289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cca80b7436f7fe2f5fd7fa4e8e0204108da94f702d456417a25721dc07b2089
Date: Sun, 27 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790540433
