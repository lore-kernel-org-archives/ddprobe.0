Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F7A335555
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784362114; cv=none; b=PQy5w9csfe53d8RKGD6vJ/Jt1ITmqx2ba/8ojoyN6tb1pCl4K+7u5RRZ1+P8vo54j/rFuFvGOXhvBWD7FB2W0YRFEpCMzt6CkNtb7f9nw9pk4yfuxvS6cbuap7ZaRnuoInOAtWc2ab3gJwSU6USON7FcqhIqnBOxXl6yIg48wSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784362114; c=relaxed/simple;
	bh=EjbwSNhmfxdyiqGByPpfYH1uqcsw0zqYL6HVKxobWrE=;
	h=To:Subject:From:Message-Id:Date; b=orwnldXGDt8pxwxmhxn/bqn6RUuA7rY0ZvS/h46BizlBF4VPn7MkuLwU5M/hajRLWApnfmJ7fhmncWnciERm1pdwgQPjW2j4j9GiiR98eon4nTtto6Zzcuj6IABzYUG85RFzPxdR2AN5jvewYWO+tDHUrl1rLPguIZye1PXV4WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ut0wkHx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ut0wkHx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1443C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784362113;
	bh=EjbwSNhmfxdyiqGByPpfYH1uqcsw0zqYL6HVKxobWrE=;
	h=To:Subject:From:Date:From;
	b=ut0wkHx08cPSYmcI1j4EdZkHXS/F2AHW85Fv0vOMu3JyLPeRz2qxqAavzS51MMyjz
	 Iev/YR2M2aSGHenEvpXjDLQIR5f12OTc4Sbuc/LIpy691Osxt6CjLw4PTCwpteJQhF
	 ivaxFlzCzpOnZEIMmlf6EptD/MwiUZvQH7m2cjTccN6+HdHEXypfoy2MzLlpccWIVE
	 f6jfSREkDMNg/5Dl3DF3mKn4WBYJvg4uhIflzJLBo2MPnOnkS6WBxDU1U61MZXNpR7
	 pUYzk3d9BUKOB7japkajx5KWjx6WII3u5lIP5SKJ+hu/1yMueOf2fu2ck6sgdABtbo
	 2sN0Z4YEcUd+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB60AC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436211368.6519.14290109456957060034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b41c486173377960c23ce59416544ce411fcf8588736866fd95716a028d277
Date: Sat, 18 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784362113
