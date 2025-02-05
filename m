Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E8F21A452
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738748155; cv=none; b=gvXKJbxDlw1LcGGdGs2Q0OfzPc4U0X+DyH/CbZgZsZk+5xtWBciZ/Hy3qs6sTEuFqQuuxDBVTS0s3tyUidCfT8J6FnYJspTrIdDVUCx+nZvQVHmDWMFM2cmu0DUCKTsRR5N6yMCrZy9tkn4oaVh2zlPbSGtVNcBDIIGrWk0Db4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738748155; c=relaxed/simple;
	bh=Bt4QlNvifvQtflcBfICeU82+wRHZphLGLz8kBRZfNZM=;
	h=To:Subject:From:Message-Id:Date; b=JOB4VZn1ityZdLLvdV7Ur//UUKU4xkduvG4QjIxbactH62a8mP02+2nQyoT6T6iPYnwO6intHvTFA5SqWzdhWnmue+YzU1K6mqWVxT749cDNDqowzyYrBonCLSn8zGC16mUv2wqESYJLMOOzWg58ay17SXyjkUkpuAf2J8bctkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cS2XrA9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cS2XrA9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21C8C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738748153;
	bh=Bt4QlNvifvQtflcBfICeU82+wRHZphLGLz8kBRZfNZM=;
	h=To:Subject:From:Date:From;
	b=cS2XrA9L95Y9MDAeRw70IkfmyO4k0JaqEwwsZlrvUQgWA5ZT/irfOfGawRJ9rUUOL
	 pFuFbEYF/aEnH/9btlI74iT7gvXkYzugsBdufwCRvJlNwrxse2avo6KCClqF3AB3DR
	 yiXrWwG1d+GAM9l62TKqksVOcnYPytVnKtxrY9zAVXpZkgi/nElg1Hx9oYxfxacpAW
	 I5aSp4vzpYA9fiYWLlVFVEuJ4y2/Kp3ObCpXP2lexs1vRa5NN/4q6XDu14tZxhpg8F
	 6M2LyK/mbc24lStdzwag6+kHgq8xNk02v6dQIw3hTG0WJFQbzvEkrKy4f8ePCu1vc6
	 rmPuWawm+IB6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FB5C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173874815361.22290.12338235005471619095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9d694cedb07a5ac6018dcb80b1c30b36bc2768518e3bdd00340991dca273d6
Date: Wed, 05 Feb 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738748153
