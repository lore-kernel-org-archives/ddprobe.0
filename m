Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149A34A341B
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778003254; cv=none; b=r5Za2yOJ/uwRvQqplNzOGVDYn+iE/O/oCzpBZW/1cVwRn4xEmI92bMaEBkcSphIJz5XzjQLQBkkjiTrYoBnIVC1fOLwAySJ7njKfivm+KXLBxH/6Sf6JmDsYYSH9EFSBA7O+K4IwpVPLhJDH4gLK8od59cteNS2vgv+DF4jyT30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778003254; c=relaxed/simple;
	bh=wbe1ClZg/TLSAGC436ik3ZQsg4pz/FCRu3c2qf2xt7E=;
	h=To:Subject:From:Message-Id:Date; b=B2Vl5kiVSbhzUKwwmfRbC6V7XVg2zDmaejK6GQyUz8uKLE0fomO0oNZL4L+Cyduwh/aMa7Mp7poMfzeX/OxySiUDt3VMDKBpghbMQOf2i+ucOcDO+x87HJ7n1aMwprrQy45mhWluHWl1FJelqw3kWRPzsuLBdP/sfh6ijbHqoCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqF4qpUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqF4qpUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE759C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778003253;
	bh=wbe1ClZg/TLSAGC436ik3ZQsg4pz/FCRu3c2qf2xt7E=;
	h=To:Subject:From:Date:From;
	b=BqF4qpUHGmjFenoHbrO3iqRtce/zInhr1f0aM+UCKMnIwk8LQ5Z99RNA4B35XOyI1
	 xgZgjrMxA4oMeRcsL8SgpsLYpfDsLtNdsQYQJuLOiNHiIJJAJB+GGHq2q4zyNFmvKV
	 Kvg9tKj8IG7MyJe3fHl5xLBzHA78OsBIqt7FzXZqJ32Gct+Ey37FKF4A9azg0dLY2t
	 ZItNhVbH5zPoNDfVOHtWGyDb9MK+QHWEdBLJ4h0UUp6j55Gjlj0O3fCzHNwZyKYhg4
	 hjynoCmdKDyXkf37jDtml9Gj8Vf8yjCs3ZgofCsm4+btXQPN21A8bt2p9vbODHJXJd
	 NAsKWGpLD47Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA32CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800325368.29785.3975108969272324994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 983513b82811fc508c8135dbed62e14113bf3b55471712f275870b97645a4457
Date: Tue, 05 May 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778003253
