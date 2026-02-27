Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5F73803D6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772208294; cv=none; b=dz+JJKT/on2q9WZqZqMPfgeYQyuQGGkBhCuh+wTg+U8G8E9qq345CP1PEARqu2gVOxuDAI4SNh99ZqY/DXliAsH6j/ss5VEPyJ/ojrt0SheU8PynqiUoRGYF6YAYRD5Xbr0cTWg7+Vkf1Rvtj7MCmfmVesWqLDPhjc4gR4WN0Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772208294; c=relaxed/simple;
	bh=bIAZlijFnNMry08abnSZaqr6FJBlYg0ycCxSM8qQSOU=;
	h=To:Subject:From:Message-Id:Date; b=auDUzWMl+QSEBE0HnFvNL/eVdcBFLLMhz30BH4pjWeTdpSKIsEUNE0nXhLtOjrkmKiCxWUrD1G7cAPtMm6AFICbAhKRs7tYlZXhv2XBd9KH2Pl+ZwDIhW5MpoOTBoyY8FNifa//A+4p00a/JndXNwAEeasQ06NZ+IUuo3VFK/NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpOtbjAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpOtbjAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9547C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772208293;
	bh=bIAZlijFnNMry08abnSZaqr6FJBlYg0ycCxSM8qQSOU=;
	h=To:Subject:From:Date:From;
	b=hpOtbjAC2AkHgBi/95ovSAtJvxQ7cu3DXge5MTgLQ0FqaRsdXhcxwG3GqW1Md6Uzc
	 gzYciGfIcMo6f1YbJu4avUGoFNWqdGREDzNey6zJ97lwPwFwPDVX3XYCxfbiEW0rPa
	 HLIpI0L71c9eMJhZDxmSsDwCCnKv0SDiNQx6b8BiR58VPK+PxWVqp3kF7XKFgzXX3o
	 5YGnQ6U+wCu8Dl9FDQjJf81AmrKhbDN4IEhyj691VNjgsxNrxFR07wVToDY1JKbXGD
	 ezuCNfOAXPJoQU8K4tKq1y66phcQbvoMQ9IgavFnEB28Zp2H4vWmVSSXg1lyS8iSQ7
	 li33o03MmarqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF1CFEFB6C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220829362.29719.5351274352639112458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7915c43c383b72f2b5f8e6bb97026be2c997a066c12bc442c97a885d6093ae79
Date: Fri, 27 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772208293
