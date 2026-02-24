Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7273A0E8B
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771951494; cv=none; b=aK/7pshaYQ4k7M7sFFH2aUXylipz0FlzECrOuWR9dKfCrPFK2DA9Co8ZgiwTSbWzE2fIZfjo6ai2XZXuok4ehxvLXkP6N800a1NJGPo62gmIOSE68YO9RC/+i2BeFE4OgICsfTLvRXvA9fjM0Wjk/cB3IM7/mQk/EDgY8HzfxVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771951494; c=relaxed/simple;
	bh=S0x/7BQlU2bJkWaQcE29l+LfktjDf7i2mchacnaeuEg=;
	h=To:Subject:From:Message-Id:Date; b=QK5x4dz+x7G4rnHzdl+bQYzds3HN2qR4sY8J2EL17bDZP/suI9c61VXl4clGGPL/J5jhBjGs0TYwlxsPW8oHg46tewpN2PweUbnjNYQR1NI9d60nJlGr6HoB6M8X2qyXnFEU78Wjn0CuMFVAZTBcl1F4pTJ/GdUNOS0DEDMhb8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ET9OLVS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ET9OLVS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09A7C19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771951493;
	bh=S0x/7BQlU2bJkWaQcE29l+LfktjDf7i2mchacnaeuEg=;
	h=To:Subject:From:Date:From;
	b=ET9OLVS5Hwxrg2dUbHaBuYWqh1vI2/6PZlmbYX+zhGNPOV8JrJzUFp9yEY+l8KBFc
	 RZzeRR3ZkOygXPcwlvwixrxQVtOpK0nWZkPXIDTT65PJyVQSrxuT0kNU+GwmILovGm
	 GlZ+cmQnDqCyzGuyEiJuc3i66mpjICwuVlzyRIl4/fXxEQnN/yqz95KJGzOQ4OS1VI
	 43StwW8jJljHGU1/mbBu9vhRf7JgzRrAFvR815Kd4lpTihYG0A4P1np3SD+ZXAIqMk
	 eRIkvNuEPSJ3/AV6eFrryfyv/3vMlsbQSRVFnmvveg6vwOxX/0RK3ojDvYW3JVoNIN
	 Nxz5LWORzyu1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EB2F3C9BC
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195149358.30482.4415171488277506174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6c5975e2c053f31b4335763302ea7115abbc359e5464b9b4047943c698f86c
Date: Tue, 24 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771951493
