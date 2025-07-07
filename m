Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1A620459A
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751929194; cv=none; b=gxrgs2trG4ikd0ykXjP1oPjNba03AoiEKWTo+7GBV2u5Z7nyV5YesN6olyyo51kUnwv+3IJTSVcIKBGazjsxF7Z/bZOMpT2vVzcND/P8gZl5GLgB2Zm114wuyV239PIZ2tB1uzrwxufR150EmryD9heNuWKhvlJzVTPO/JJ+B48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751929194; c=relaxed/simple;
	bh=5mDZVbVgdyb3x4O+aE12z0cWRzHIxrOQu8jFoiTEWMo=;
	h=To:Subject:From:Message-Id:Date; b=NL3mWZqY5JMdLdPehOIjN6MhPD1CQshb/067iCQBU0sY4GwZ56O9OhCRZnp/3P+SonLg7/ASFLMpu6WVr/XVLthW4IHHSSjV+dRWcDzou5v26uw3R7PlcUuVTuQfV92a6LqJM4a6AiIDJzoceNsvE+j+3qcNlIB6dlepKefmfd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqwEcHbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqwEcHbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A406EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751929193;
	bh=5mDZVbVgdyb3x4O+aE12z0cWRzHIxrOQu8jFoiTEWMo=;
	h=To:Subject:From:Date:From;
	b=XqwEcHbZ4495O4lTnvlCtY75Zs6Ap5wlkMbKNPzBI9YazVnX13tqKP5C3I8CTukt7
	 BZeg8Qcb46U+ljK9pF1iuk5as6AU4vBOHoub+HOV4aUFLo7htRkr09pUTF2uEZ+GlY
	 3XYRo82FxRkdegItp5mDhWOhFFPyds/6SfX17vLDNaR4AbjO1X9b7gaLEQcj5bTLOZ
	 TzWlx/WqoAHVaVaxFT52CIew1oohRLG7GmsnhCDUDnUJofg+2IA/IlK0Byd7Fn/EKG
	 Zx/vyJA3LJQlsGkq4Znxu3X+0tuwPXYRKMcvLApwwpQPCRcHbYKo1H2F4wPeKRd9Pw
	 GHSNLsQXg5tcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929ADC71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192919359.18097.3851650788948583282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8b8eb6ff38b1987a0f981693fc459cc61f8fd88315e545d659997a21c6605a
Date: Mon, 07 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751929193
