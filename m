Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1052031D362
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774037094; cv=none; b=tWUxHSCx1RuLvvGsiuPeH4jfWbZBR+4xHPIIMs82RndwaX+o3NIJOi9vrRRbuV+HMw213/T7DFUwEsWjTcVotj7PAd1pKcnoMfa/DqpYfpxK3An0DzPhUFIYAed6D+lZuWBBu2q1rvhj/qbKGPkZjjyBSiy7MAZLI1+ZwJ9h3Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774037094; c=relaxed/simple;
	bh=i+5+A1uu7E2jpJCBpPeMmQBCpUZOC6UfoqrCexKYzf4=;
	h=To:Subject:From:Message-Id:Date; b=aKxwgW2KX1/F3sq+xDt8yuvq4vjwSD/TucpvRl7Bvn0pRXE859DdT9Zl4NTbA6MrJ7+O5YHpCd2lsGfHQ4OfWMaiSagkYg7GIZqe/srxmY8xZ1wWE++iGLgv5y+HX+Ev6CJBK7eTyFFOQZwylLwve5wQid0giG1M1boPMNDADUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stfhXYdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stfhXYdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B67C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774037093;
	bh=i+5+A1uu7E2jpJCBpPeMmQBCpUZOC6UfoqrCexKYzf4=;
	h=To:Subject:From:Date:From;
	b=stfhXYdMQr6hw+m42Yk/sRMWtPVCXZJ/CJhSC20jWatL8FLxl6HEIT4UizGBTy4CS
	 4xS1AVzkmC0bi/juLniRrgA7aUE1SxRP+pYSBgEP2b6XaZqIqtgn38tApUC8ChPK2/
	 rOgznrpDoH+59IuJZCjU8H5x6WtpATMiGIfTGBvaN87LaZ/Uc/5R2fBIVijtbCMlpd
	 hL9YMGAvAqQTGwAKKIknjjBeA3w9W8/ypad0z4d7sRsVDxY5n0Z/hPOY8hDjMi3UEG
	 3piWQxt3GxksAc+CijqO65nXX0c5tGnhEIZogAUSjkTx8KqmliQGWL+aGopEeR3Any
	 INWtMvWFMOXGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BA51099B30
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403709358.22543.9986335168660285800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090cfce2a724dad4a8a3aee5a6ab4aa36e8f812f561afa3b57ed7935c4cb6f86
Date: Fri, 20 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774037093
