Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCB014E2ED
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723065354; cv=none; b=Znm3HWBG8hZe+K66bhQCBLl52bMC3MJ3Z/46jWI6RFni+euKuAArWIEpNUcp/f+wiQmCzliMVHjBxQMLnGqNDwWc9IWrpQvcDFnCoIVc2b8ehmO8h9+JfS6xmKDznEpPdDTOD3TDrGa7xbzLXKy/RDh2s851z5e+RUZXhfHXXzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723065354; c=relaxed/simple;
	bh=5UrnV3RCmgQe99f8NmhOGpc7KQqBhcqAiJU8wiXdaO4=;
	h=To:Subject:From:Message-Id:Date; b=VuUwE/7ywOwoPYvggPf0N5s1FIfHrUTdv0KOt7ZUgQm4YxiMG7HBzXFGphV5anhLr4/+PE1sxtErlXZ/bWMtVC2tiSAA96o57Bw32QvR4CABba8N5UL+neEhLNHKMIHkL1LJpr920NtTNZiM1dZKt4PomgLOEbFP2YsLQXuTTPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lU22/Buc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lU22/Buc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3439C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723065353;
	bh=5UrnV3RCmgQe99f8NmhOGpc7KQqBhcqAiJU8wiXdaO4=;
	h=To:Subject:From:Date:From;
	b=lU22/Buc+cPyx29M6rwOt7tIR262K9SnQmCXT05Dv3E/awknRPs/L3l4R8g4ba/AH
	 MuIfJq+SsjdyHPjOPIYpeC1bUVk6UDln+hLroOhhU5fcvJUhBIW9yE2A6IE34l31z7
	 GwWkD8Nx/u76v5OrZ4WB5krKqVUMgXGXZGuNAwOtPsMViN9v69/zs5D06ioy6m4BDs
	 pxnpCYNXexOF5yj0mrtEi/weZen2L2P7J4idp1+kMpC9hRCOD/MtK5wahG9stCU2Aa
	 Basi6Vo1XVANru+KB08OcFfh/dp72k6meSrtOZbAZtcKWNFWQoc9GL5++5qqUcqs40
	 /ACNzVzfSVpHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6D4C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306535363.24102.7329515286650733185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 354dddbd7d9971bf507d8df80836bd951bb3b34ece1c3fd15f7781b5c537715f
Date: Wed, 07 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723065353
