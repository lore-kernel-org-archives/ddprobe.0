Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666BD73475
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716978863; cv=none; b=PgSIyXJaoDsDn5KLC24/a2DzrMJ5i81D7c5NEsNGuYn0R0+qtM59h2TzpVaSApVAoNt26rmtAbx/US4JwJNg1wWXXBg3HPlyCEOd9pwrQXl7/PUo49qBn1X5fK8xZHzp+zqOQOCLSyjRspm2OgONQ5mbilqVgBevjBMc73cn8q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716978863; c=relaxed/simple;
	bh=xrjdV4zdIcUywiJgLixA7WkmbllHXrLvgngNhZ8DDSw=;
	h=To:Subject:From:Message-Id:Date; b=kf2aV4xIO7rg0ZrKwJ/ar+Uo7K3c01DvMqelTL7YQivtIO0VyT2ygUoNk3+VL5OhkH0yht+1QQVctMug/OedA/sUj5Ir5z6yHwmBoZlP4cDoyJNARaBqaN1+JMF/W532CzYpqygo0W60rPKbjSvn/ARrGGgKQpbPRO0+AXVZZJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MprsoCW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MprsoCW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD0CC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716978863;
	bh=xrjdV4zdIcUywiJgLixA7WkmbllHXrLvgngNhZ8DDSw=;
	h=To:Subject:From:Date:From;
	b=MprsoCW0Gd3ucuftMgF/hwFq83TyGvAZsY6i+p/tbkjR2T9LLV7ZGUaydoOCBO9wI
	 1Dbk1ayPUeznNJcJIZQHJaob0TxO62zdp28Uz61WuDvHn87X1fKdjHV2FPhf9MqFZN
	 K6K8MCBnqxKImXpg2AVldbkkvQVrRB0nKOtBmj19TWkUaVTXCS70JgBDcjJyesweMW
	 N81FN7r2ItUogKb9FJnRHeL/tN0p1yRohwp5lwu6KTYI3AhH8hriyVJPnDn+43HlsU
	 HVajFw4OwyhnjPMt5/PpuWZb2A/aQbG85CMavesaCmmqLbx0/Lb/DtJqEhE9+75p1u
	 uOGijYhaJHeyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3551C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171697886284.2737.3551840120200469242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c8545d4cd618db525518f460f249ea4b0d7d119c1234dc2e3fa24baeea8ec4
Date: Wed, 29 May 2024 10:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716978862
