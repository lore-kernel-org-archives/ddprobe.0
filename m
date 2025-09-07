Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295A1284883
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757267994; cv=none; b=YJ8d+eXVgWvGXTsuj4flLXZHqpGPWVMgvY6LWY6PnKzsWFJaXNdFqL1H/oN0UHiAI9mBtJe3io3pdAfy+O5aW/MTxG1y3vExEs/F2/wrC2udm6DDPp1PqJqojigMPPEN9ihJv4VHBQmRCuucrGuTeUZvSAdd2x7HOkkOCYUZFpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757267994; c=relaxed/simple;
	bh=nuS8AhjqFSmKKPeWqvUO38PZf2BxAhdSif+ZwtHaX2w=;
	h=To:Subject:From:Message-Id:Date; b=i04mETzg1Nn2s9Vjewl+J9otRGnBeKYlNSOcFUXAUv3rb0xKBsWYw5UMV0tAi6xTJcY2uCsHCOucsEzZIDbHaQlGvso376I34T+B73PaQpzS7aHlTbtyk0/U+K5fX/Rn2Bv60rNBF5BUvVWKTWYJEb/sE6/gpxEGLB0R4+etO60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5/2uIyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5/2uIyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3747C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757267993;
	bh=nuS8AhjqFSmKKPeWqvUO38PZf2BxAhdSif+ZwtHaX2w=;
	h=To:Subject:From:Date:From;
	b=T5/2uIycku2xdeeNB0OYPnF2DOMGMC98/vC8XsW9nyEgIZ1p8B0sl0M6S6PitqVKf
	 khmTnEORNKxRHphixexu8ag6dt3jBDQFp7gI/geP37DCM2VGZR4cgV4cXlNLpednzm
	 iTHv5GK/Ef93WiGF4bQa8WW66DvNxtRFNoZIw0QlTyurCaXDeLG/x2cQaPXb3C6vht
	 aMux0yhT3U/VefBox1aMaOgR2o6ZksZrsgIlIDvtEVx+CdkEInsUWniSI16ic0ga2R
	 igpvYOgjp3q9AbgM3w75eQT1BhmT+9KtttjoMqfjnigW0dr6U3gTIN6tgelSoFt3+n
	 aVp1FzQgyY8Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9407ECA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726799357.3202.11103714973732223118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f84a6a2fce7056eb5f100b400ff21f6ce146dff29be0918ab9f88ca0aff93bea
Date: Sun, 07 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757267993
