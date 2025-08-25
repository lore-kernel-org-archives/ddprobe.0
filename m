Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373231F4C85
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756095594; cv=none; b=OzGTG/ZqY4MWSFaSEgv9Xe33TUtPuqgBUSJhfcMywrNGaTpRRn/LgowmycEna8unj/NbmvbqJ1NDOgEYwwMPPBiIhBsplw2OlDJYYymMUrz/AJ86GuXTlPfEbGvB5RodYoEa6/I+Ki6tMhvoTpwjCu8x/czk4IewwPrVK0b2MkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756095594; c=relaxed/simple;
	bh=cxW6LOVuwUmvmpDDHoTsAuTNRr0teb1Zd6AsMBjDWfg=;
	h=To:Subject:From:Message-Id:Date; b=rd3n61Cb0Aa6UdqIszBojKmlwn4KT7+CLMaat2qptFyT6rmGm4cvbYo0X+RNO1EMh/ap9Z5O5eDSlb/HfwmqL+xgNStMcr5ZWknmOftObX0aGzPs4Iw0KZZV9vSQSzO0IkcgKnbYj8RcqD/M9PxDainp0l9fxs0NYUDdkE6jCww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rm8BrQEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rm8BrQEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B234FC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756095593;
	bh=cxW6LOVuwUmvmpDDHoTsAuTNRr0teb1Zd6AsMBjDWfg=;
	h=To:Subject:From:Date:From;
	b=Rm8BrQEXIQ5zfGYaHNalbMl4+PXr7wBcYQlWDpTFgh69di6kGBARmX55L8Z08w1zm
	 Llmynq2OufFXpiHs1bFbirDQuBlpWGhaDjyUnAI9l7JEA01ftjsT0wYdKkEqtPfxt/
	 RYpvMejypiUTBwVCehgaXR0WX1eLkk+zgO/eOKnwnI7N13DrwrhVWOdbzD6YR4qGi+
	 lCye4tmvfvxvEDfTieH62f1adYDv/BfR/RCHJAkBAO+pRvZqMyp5NU4OjHb0bd2Cu1
	 HP2tmSTZE5tM/pigwRIJGlx46gRP40s4CLrGU2SdfAPAkiyKZWuxrY7IbYvCkMmfPS
	 545Q+S/DP9bHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB9FCA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609559360.1368.919945928238254501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5aadc21b7bfc678a059dc6942295cfe399998d89f2e627226dcc83827b6269d
Date: Mon, 25 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756095593
