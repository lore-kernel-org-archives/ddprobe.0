Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA0339A066
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785453034; cv=none; b=Yyg5UpV2brqzNQ6tZprfbylj6SMbgDp4fzL2imi1Gi8WTJgtNnyQ5WuvwnAbPa8y0rqmGPCQnzWSfOn+ynITAx1qOAmr+hTQ/gvMcbz4FKvcLxdLVrru4/CPS17F9ZKxNJ3am4Cn4pgdHn0BNk1dHoZUnbF2uRqYxml6fdKd96M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785453034; c=relaxed/simple;
	bh=G8m/z+zvKt81yYhBgiT1WVuNgA7CfhtoBvP+7pHZA04=;
	h=To:Subject:From:Message-Id:Date; b=nP+sV01zrt7bC+iO2OyhSD3zU5tn7T3GhDrvQs52ya97OLIhcaWm5Irn2u9WnXtqqRLMrkwxY/V3UBhy3mpjk0veuLCOFfhoqygxIiB38xGhv1wZj3eR4FxQTRplgobYqZlZDOHH6BtXNfDbXasWVHE/tOhhuKE1VbPiATTzo/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYwLOm/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYwLOm/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE13EC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785453033;
	bh=G8m/z+zvKt81yYhBgiT1WVuNgA7CfhtoBvP+7pHZA04=;
	h=To:Subject:From:Date:From;
	b=aYwLOm/Ck+N0WHOaYl2fcj5zPbWqNhLCpuuZDDM3srxwzGwdKVC2kpJBP/g5lpzvb
	 jTRo3BQWu8+eJ+RtGGeLRE4/SyTrbO84kcjJpbHvK3Z+/O7nSeuJs4ZCeTMddtLgh3
	 bAk/LeAfyY+NJ72LWA710NwAR8sdnkQlftoUE3bgtkqhgHYaWiJqRziL72MTFcluwU
	 myrhpb/VW2Qe4AQmynnH19rGM7JdzUoetnnBylPwYBLhtMwx27Ls6YULMtB3Hb/iGd
	 H83vCrYPPcDN1c9dqQ4H7RXSjGcVeshnKNx8I52w+1bFuFJ7qoId0IhIivGrLRaYts
	 a+7icXNLaU1eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93D0C55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545303373.20092.2040313205513126082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75920f0a28fdccc2a21a9320e2ebdb336631f1ea2af8241303ad4cd0a6d0790d
Date: Thu, 30 Jul 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785453033
