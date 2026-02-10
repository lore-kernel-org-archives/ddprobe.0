Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5735F35FF5D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770719036; cv=none; b=HBRn9xv4dgoRsVOQZA0+OGiuxO1aAqSBZFDohV8OT09p/anBucX2mOOpOul1IX3AoMeRlQ33HY1M7xmtr/szSRKuG6pPgnP34Ql355NlhVvE4XjOx+9Yv5zfidkLkd4IT3u0OhMoRmDKqcuYlQeIstMCBkmC359I/Wu2a4Aj9hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770719036; c=relaxed/simple;
	bh=PlVbNx3cos09+qeLTypQAssOOX1aK1UdDCsZz4EQ3mY=;
	h=To:Subject:From:Message-Id:Date; b=CHJ27N8XlZ/f/myqGzaXwsEWQweVrzOQl77Hut/BEulFgAA4hz1ip6tEiD1rE70GWgCYsXiB31OstWrxew4E9ZTJ1fwMQtRnAPBiMF7JQAVcLR74DRwNSGSuPaE4FMHDH1zdPkKfbnxBu+vdt611t+f/YOyjRKPmZFTKRKg1Njw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSlHF7Lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSlHF7Lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA196C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770719033;
	bh=PlVbNx3cos09+qeLTypQAssOOX1aK1UdDCsZz4EQ3mY=;
	h=To:Subject:From:Date:From;
	b=NSlHF7Lt5IDeJrUBuobups6N2dGoNS1pXghtFfU4djbEwoFNp+Fc0gKSjU8tsPdUb
	 wchry0O+EQAe6aTVs6Ur0mzO6z+fNrXvyxnfIBGFoAoOghAgbvD3C9GW7Xw+7uV8bF
	 3KwCIzhEhOPU+2lM5cR5RY0GYyYjBBt6EUi4rPlTCQRWDk4a6NRWs+uS++cGsolyM/
	 i1M/9fGglncLo+dHM8p39f7eOqM3Evi7wSs0tAIKaNU/kWYlC9MTWIJf7wNUgfgTgY
	 SaBGbt0L+0PfonXMWXA9xxLUOjLwfJ+EP7q8LOeyNFP+dFj/KrzzY7DDHUvjNZcRF5
	 uqMznzUGs55eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934B5EA3F35
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071903359.27560.11347077785865366440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981b352b914e233ffef11c4f4507411290e3e5f781e653af48e4b1b3a2694bb0
Date: Tue, 10 Feb 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770719033
