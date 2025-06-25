Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362793074A3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750822195; cv=none; b=Ty3GAMhIbadivAfoSoFseZCxZYWzyT1V6c953PljWmB2ccNvbzLJ53DVRCysaani40WGWwiQfZbGWTetHz6nRY/7MmodGaqig4qwQrSccW7BUUlpJ56bzu5JfHPGw/ZROtJSipYOUdc4fYvQWYsmq1qrz2GAT7ogJsZw1pzWYHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750822195; c=relaxed/simple;
	bh=h/tyY/C0SD/8M779zJ2jzuOiEd0n8uTK5CvZ8LZYTHA=;
	h=To:Subject:From:Message-Id:Date; b=K7mGgOT3B6xwdvJiSCCgBfsQ0smegenLAQY/6gDFsmppuffsUcQ7tJHhbonrMZ8H4Smdc1bx3B+aKaKBtsPLrDc2iPV4olClof3o1AqrgUCi159bwwl3oOLU9p0FGZY4AcbRvkPAq2Bj1uOzL9taKRQMgAxNduMbsoyI1t4Yvu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILWzy9q2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILWzy9q2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F25C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750822193;
	bh=h/tyY/C0SD/8M779zJ2jzuOiEd0n8uTK5CvZ8LZYTHA=;
	h=To:Subject:From:Date:From;
	b=ILWzy9q24Po95tbCXxdHQ6nc8obrHoL3QFGVZICU0H3PEz4ERw9BSTJ54YunyWzVD
	 lfiUHlwtfk+tXb+WTreGBO5uQSr6Dl+LTl9tDTruUpibdFDAoelV33YgCvFfc76egB
	 j/iVWUbvGlBcuvtlbdvef9saapf80CB83KNuT/7dQObcPsdCU/1+4I7rMRA7Jm75qq
	 /qkgh3pl3HuQwqzQNaeVESpg9SACrpT9FVoC4GkmWFCeNBxq2aOfg3ElMx+kT0GVJU
	 Rjm5YNka4oIbmQAsh7VC06zXaqAMnfLDh0uDi8WDqtJ+1HwTvo1+qBjKQ10JrBYGAJ
	 Gp9gl/Og7/n4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3DAC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082219357.2423.4972658414661454640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43daa0dfd9e3ddb9bb05acfc04ed82217e1dfca7175ae3b51b542f973a4c6d0e
Date: Wed, 25 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750822193
