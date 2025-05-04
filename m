Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB9F12CD96
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746345594; cv=none; b=E8lZ85PxcJNJ4gfU6E7jUrxOK3s/cVvFecSi58BfdU0PMcfUaJAHPybnuqSpEPfrCTXCjXkECv41W4CD/09IEwQFOidO1SmWUx2Hii4913LI5IspbBjVknoswiSKQkzhS1Q8/cJ6NySNPsmAcPs2YjtVo6KKJmo2rZnBMhIhs08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746345594; c=relaxed/simple;
	bh=C7F4/O3EGW57D8LpUyD+R4xnypLJE6RgbbgtY/ny/k8=;
	h=To:Subject:From:Message-Id:Date; b=ru1UWCJ4059wuUYAXb1OVIiaAmFxKLvcZ52jgcQl0nTZLiiRbqb93lFUoRfLTMX+RKKWAcom2J65asufM9Bn3hqJiiKBhqqxAdkMGUIUIlbY8iF7Fm5sMSgPYx/NC4gJUzXGEBk1O3L9BrnTd/no1oMwLwqmXfj0CuFPEStSYl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQUrhgmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQUrhgmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D1CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746345593;
	bh=C7F4/O3EGW57D8LpUyD+R4xnypLJE6RgbbgtY/ny/k8=;
	h=To:Subject:From:Date:From;
	b=IQUrhgmrMxRQgR/YiDKmtXz4ii5zvgkvYUYX3sZMHcEijR+kqZF9CkH0ae27KlRdi
	 Qldl3Y6qniummlKeIXbS9FOKEjm2+Ef5zDfR64p9fW9xuGwHcj1TM4l1AYk+UPL2fq
	 RCS+72yUGGWHQwFipQObenzPO4xQQwpq2mTtq92OTTF/o6ND0gWjDTbBFXcFDciwXZ
	 NrB+iiLmCgSGJIh1aUm8cLLzdy8Dn3sQppycRPxCSkoBV4H1EDtElL1oFzKcXtZ6rJ
	 LQ62e50OQopLjYTS/cbiQHMGqB9AN9Uw92vhJcXYCHxsOfhfkopgdjDHYUVgPaBcSM
	 Zz9PLCDHNBlqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91183C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634559357.17386.13527769577814973601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05a6db3625b0401d98c80c1a407c196aeaacef591bdca03dd3ee2b8bb109055
Date: Sun, 04 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746345593
