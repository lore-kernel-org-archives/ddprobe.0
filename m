Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEC2146A66
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776028654; cv=none; b=T7nLLbHFApSkpi9eE7KHHtCC/++Yqft6p1wDyEz1X7gI2tP9HteqfllmhXadjHG8Hkqgt8hogy1vYZujA+1Wy5bgretvsYaqDugDaFd3lDTx4d8RH4Lwa9RS9FRRH88kx4RKOjtDYvwTMiUS2zx6MdtdgEmX/Uk9U6d2IrTtdyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776028654; c=relaxed/simple;
	bh=lH4eGUMgIvCX1btDdbi7sI/UjQj7QU1WhhlHrh3UF8s=;
	h=To:Subject:From:Message-Id:Date; b=ohLZy9fyzUdm1vkuBFaj+LK+d1xoc/uxw3mahDe/o032TmZyT6zWU+xISkmNHMGsK5PUMNvJ5nrNZfoCJI1usKHFYjC1PdYQA3W2hojwXzILZFrnBKBAK6bVMDbaqWg7HYSEGukizyC5ecFJDe1g3GVqlWNudgAyp2qrhOtND70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFoATDCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFoATDCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4F2C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776028653;
	bh=lH4eGUMgIvCX1btDdbi7sI/UjQj7QU1WhhlHrh3UF8s=;
	h=To:Subject:From:Date:From;
	b=DFoATDCRpNmZyxv8QWdT812rQc4udxt4cgzLsZfDHpN+RWVrfh15K6fG0X2wtuOjD
	 4CSY357G1tFPZfE/I+HYp859Nmjz33OnH7h/sMLRmrJaLX+MZR+UZtYCgNn49fZGWE
	 7EyE7fH67CNMg+cDpsWVOyoTX5vHEwa93kOOmlC7BvnSJzXqWOz4NPR6sIJXxiQfXA
	 YJHqjeZ6jFSsgxXL02oWyNcshl+UVJrQakQhbapL6ihN663lG9L1Htr2ZFsQSsQO45
	 Bw+8hziJkIsOgp9ZBa+mjY56hvCPnaW2yhUNm+V0WWAZlHd/DmkMltPIKMVbSCAcnT
	 c9acKe80xJU5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAE0E937E7
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602865369.16053.12530339587301835728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94aee6d8b740ad179a82ea5c52158367ebb43d469e7f69f3433c31d4235beac0
Date: Sun, 12 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776028653
