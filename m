Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B4171747
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719825863; cv=none; b=pK8lJX4ml/CmGT92sdhQjXDSazTv/VuEVVHkLaXYX59pLG84qYKHzG/P+YXNrEC2s5uFfxkL56CtfDBWmagkfZae+LFugxaIsitRn2J8QV3lwNzqruwjur9OIKFyTBBM0GpH/SUaV7C6PBwdz7EUyon0CyV8HafRPqJwPXaZ5UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719825863; c=relaxed/simple;
	bh=Y/wpJdNuyxRgj6vJlnh/uHgHZ8lf+S7KFy02LnR6HqA=;
	h=To:Subject:From:Message-Id:Date; b=tvUIpuB/ZpWswHky6FDrNnSV69E7cs3/TPR0U73tbadBiOskvp/se9j9SBmmkXSQc0WiTvAB2ZwTD35PspA8VQnjAG1RJjebGO41BCF+dvqygSS68oJYX+KgqtszmaJGU9x67tfMQD6H0nja4U65En1vyzU0CdvTQkQxyVq/V9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duffzr4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duffzr4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE82C4AF0F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719825862;
	bh=Y/wpJdNuyxRgj6vJlnh/uHgHZ8lf+S7KFy02LnR6HqA=;
	h=To:Subject:From:Date:From;
	b=duffzr4Jmpf4IvjlTxZ/YKv7tAuHt6zfgWsENBVeIRGySJJQ6SPlMdQ6V/MzNdXyQ
	 BfqTHNV4MubrQwI1+PLnfxBpym4AgpIQ+TDVEz3hNK/Gxcc3vhFFz6hW6znE30RzpU
	 BbwD1EQVU4V0yoEzkT9UnYzZi+KQSRPv3ZELbvFUOBJldMWVgl1nY4H0sHT71MaeQw
	 0E3LjqIIMDdGO8pWtXXQ8GBko8uiaPrH3rVA2vlvCW6ZmplCeifhvrpUkAvVKx1oyU
	 KzI0WRHeVAxqhUNr2fblirOh18l0xEeZeJYgiTAU3oinMBlFskLOkd31Zkr28z7OvY
	 Mx3oSeH5OR4Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48D2C30659
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982586279.29918.15891933059774973244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec72369effe2686fe73dd71d9032be303f8716f11fd6514a8db8d9f079d6383a
Date: Mon, 01 Jul 2024 09:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719825862
