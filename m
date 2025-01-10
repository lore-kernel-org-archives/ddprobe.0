Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B75F24B24E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736551554; cv=none; b=n39BQ20r96XVe3PE2i9HUT1yHoGbQ0KEL4WiT71h9u3fP4L1OiWaQCSJaFy8zxl10Oqc1RRpMICR/ovYfR4J1qDUGOYdIcNzSjR2I/55SaN2YajTRo8QLdKIs5FK+wQ48gxG6+Oa2SjAdJvlQihg8snNGILgsGUqsGe3BzA1vfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736551554; c=relaxed/simple;
	bh=9iWqy91WC8jenUEtFicR+Mc0dycNlukcSxUbMN6xcTg=;
	h=To:Subject:From:Message-Id:Date; b=m41PIJFP77+KkNheQKKtXxOsQtFyQvdrlCfIjybz6joEE0T2CLmIamBHPeDYDR0SN1+rctkf0u9leLCB8E1Gaa8LQS8mtT/pcDoOogH+NyrPTqFooUJZZeJM2Zli0pjd37BeNXp9tHWBsEu9NZFB8IZjLdwLYOJsBs+wiMUVyiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXZB5on0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXZB5on0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6922C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736551553;
	bh=9iWqy91WC8jenUEtFicR+Mc0dycNlukcSxUbMN6xcTg=;
	h=To:Subject:From:Date:From;
	b=WXZB5on0NXv/iJ3ai5PFffEg2a7X6a4NMfdt3F239AkQ1HdL9KUGMq4B+cTBCDgxA
	 D9Do4s+y4O143j3/0O43AnK6yAzJ88z74ZDuE98g+V5z2h/cSugVyb8AFCkNDQPris
	 fCARf8HCP1gAv4NVH6+RZ8qLQeFDTxjAFIHULlHiaqjEI/opziCXmTCYXvmVlVWlux
	 I5SdIOv9LXzxgy7z3eUqQRbxZtsYy5PSvHCbDi/fv1+an1kvDyoIBrBrW+Ut1Ws/jr
	 qYv1ROWZrNJWUAYY/Qh+QQ+HzIUXNiRTtT1nX57dtDXEe4nmfmpXP06WDsADQRyjNm
	 c/XRMdWY8nXwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D336E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655155363.31149.1391461910884511424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e1258b15c197f2f12f3d6c5e04c013f34a60819929ad598cceffbcbacfebcd
Date: Fri, 10 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736551553
