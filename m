Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E733F787B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778166454; cv=none; b=qnOG3Z3oRjuVUUij7lEZpIafezpH2TRKzmmWLf7WZwarQdqZTGpYaMpWz/6E7QttWS0haj9tYtio/yXD4tjJ+tbcm3ec+M/lNizq64dNR2g4vd79kUb1besXewiq+cZNTolE20+MSJhQZW1VK8iGIjruyYGEfeGdbWfXBkhKyAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778166454; c=relaxed/simple;
	bh=SicDihHZAEY51hxBWTFXnXiwHkh4aOjLZQhZMKbDX0k=;
	h=To:Subject:From:Message-Id:Date; b=t1mxtFcsfmNPMxHu/P5ZBplTdlG/5MJ9wbx5CJaUr7yTN8NlerZ6KqmMCtlb3DsbMcU1AGPKhBH37kh6UFpYe0NK+p8sDENpZ8N1j+v9hOGs7VKwirpvAh9OXPj2rf1qXB/tGF9AajCrAzPEN9bKmp0jmxikruQQ1td6094TCdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1xcvrXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1xcvrXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEF9C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778166453;
	bh=SicDihHZAEY51hxBWTFXnXiwHkh4aOjLZQhZMKbDX0k=;
	h=To:Subject:From:Date:From;
	b=h1xcvrXA0YYFgzWBZpOEUpXs/zCV55zOoac1KL/vGxU9zUtOzPdDNYw2QJYdpMkEh
	 BvKg29CFXUy2ScOsNloOlxOhk+mLFdNTAdHUk0Li5fKAlIDwmXRgs1QYgZJgY/7Ut0
	 GGzcjCOH4rntIgYoyizfzhJOA3SdUj843rVuk/06qFxnLvAx6rhZkWobD9z5hkBZez
	 k5MKmzmEfT1mA4/xpFR8V5yRXpGpqdCpbhz/6FVe9Qn3IYymJiMX/vohHO1Tv5Pdrl
	 PRAmo3JM50+aG/aj4P+jDEsgrCjvcWWOwJUpPq/fL2gEzje6uavYxfLc3QAkZYD6nI
	 PkorgTmZcBTVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAF6CD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816645369.31557.7099158535894823356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f336721c2bfb49a98d8292785adb2412b737fe5941453692860f130919b95c1
Date: Thu, 07 May 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778166453
