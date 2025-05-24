Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660D013A265
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748124594; cv=none; b=nJ3LoVtYXGDwBcrUS7jLHh3RTRgpnBjGwhREYwU86RkvGodO9MOomecNAxJbMlQIzKdPA+vpnMgwydTMsXd34zmToCspdm6UXZIf6Ue9GKZ+s7T+W9cdFH27UKY7jGeRmRaPcZQ1Q248Ug52zO9yKynw6gaE6GInDsn7zY5hvVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748124594; c=relaxed/simple;
	bh=RYljxYWOCmBOD4Q+0s3OpwyJPMfsTTklNnfppDXEqNA=;
	h=To:Subject:From:Message-Id:Date; b=XddDBzqzL24NHOi5e/s7o36DSuh9imLTE8wmNiZF3Fqc3Uy11AkGOzuR3k5UsX0FLcqNCALA4LK8oIcyGauego4pdHNAiife4tM/r8rK2vaXQPQNYYADXeRjqi0GteTzE4faSQc7HuK+yif7rh49vn4gSO6JqgCv5DbCsN3mQyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEAG8Woc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEAG8Woc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A15C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748124593;
	bh=RYljxYWOCmBOD4Q+0s3OpwyJPMfsTTklNnfppDXEqNA=;
	h=To:Subject:From:Date:From;
	b=AEAG8WocNtvm+0QqY8Yc/acVAi538CIFia77qcU8R6D25BdA/smYFTBc2OJScTAwo
	 Ve1kqeZbsbSROXW0OSw0tTF64mkTQOftgz4kDlfIsOCZxTG4H2cUUyUveTWVq/2vT+
	 fsccLWrquu7joaeY20wOpsHV3gVHcckMzcmFdIOIiPNsxsjJSAp1Oos8+FVkczef10
	 7yXI26PGZIZwOtq+qpKk+zOs++UzAy2xvMd1inZ88m7ZN/0N8caQ2pXs3BCMjJQbLz
	 qbEBlj9DbakQWH1Y9E5knia3EXUTJ1In1KgQski9RDEPjXXcXYS2nwHqwhIpBvAww2
	 fDJzyl7ZMAcWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9434EC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812459357.11485.2805894096958443623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23fa95b17a773bc0ada0536434cc6b2370cf73c77e67285851313d71d27a05a
Date: Sat, 24 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748124593
