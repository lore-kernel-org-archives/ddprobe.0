Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBD079C0
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726850754; cv=none; b=Ve0G5NnZc9nwr5M3P2lZprcbj/ncxxDHxrv2L2ld0WMLfblU8zy5vPX4TTdCMVwAl/b7HR5O0sTZKSGhOfecKusTgX/PqSRoFX+mjBAHHk1UcnQeN5I9Wp8wWtLQ5eEfwwfBmKmwvf7mMPIR4gnWGXFn3Yj9TbVHO/BLS2wXYTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726850754; c=relaxed/simple;
	bh=Ao/jhdiaUTJ0bT2BMJOYF+xoLC+N8PqgtADRv5BRlo8=;
	h=To:Subject:From:Message-Id:Date; b=c/+0SQpj5bgNWfXogs0F86MUlh5dDc16U+yciYoE3w/0Fdw1h1txy77y1QELO++tVPMFWfhhUn4UyHOK+XwEbEFvgoZQ09BGLaL1DvJyP5MKNBX+7eq27fe1UW3Eo+fpprbV25yuWG38x9+aJ1zCqjJnuLA6yfcymR0EmqFGqbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgnMKjSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgnMKjSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2CCC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726850753;
	bh=Ao/jhdiaUTJ0bT2BMJOYF+xoLC+N8PqgtADRv5BRlo8=;
	h=To:Subject:From:Date:From;
	b=dgnMKjSU5AGs49kIMZw8jMebNdpY2M7HUB/L+PkoTHIu0G+DHigCPv5lLNa6TS231
	 xUiG7ny++9t7SQp8Y3m0bLNtRVSV1Lk4M2o96i2w5gag/4Z8s1xtfAllWLCinubT1T
	 tZJdNytcjt+ZhJRXUsOa1gFyVikB7zfnaQLtZRYSEnU8VspcuIxP/xLUTG73pvM12T
	 wHSIusW5FweIn+QN3jbgSc2sEFRoVcQIuaEYnU4ZWQ+EdudoL9rrhvMgorU8Db9WD5
	 8CpRftWrOp4ehuj29EAEHVZ1cu8F2jMW+kxB34wLDqFLF3DrodDPR1kKGdhSNnLU0v
	 eHwJV1KwxVafg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E563CF9C5D
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172685075358.21173.5275684542608768441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb49ca430b25fab5a8ee8214ef25eb4998c5e74e66c15b82a08868a558003bbb
Date: Fri, 20 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726850753
