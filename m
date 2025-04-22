Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E28C1FF5E3
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745359794; cv=none; b=mZLGe6WN0FQe13sXBvximPf54mVNFrzdwyDj3Au6zlE5whA0CaDrK+Ry/g+Rt7SBxyEuo6zC+cOpoGcraIqoMxcrYV21Mw7H6DK6P3h5400ysD5NMh2m0lc4diLcy0BzmW8GC4m0Khd0QED4tmKNyqSHM/Iest1PmYLbw+CH2hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745359794; c=relaxed/simple;
	bh=DYzkeycj4TCRrgveQWVIaoZdMeAA3EiZ9TJMe+5qBTI=;
	h=To:Subject:From:Message-Id:Date; b=VU+GaVBmIeSOLbgCqtnZQrk2R6UhPiJ9/BL2TVx2BhUBJanF4ceSyMMLPnjmPYebjsNjJpu//afXqGGmtYaZ6eTVvM+UvR1DxXknrlRf/0ZUPPC90BpPcXvrnGVTcfvHoKPy2rROWuGAA91CHBsEgWWpwaIFKWPtPgvDfB88SkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8ZGUkel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8ZGUkel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF25C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745359793;
	bh=DYzkeycj4TCRrgveQWVIaoZdMeAA3EiZ9TJMe+5qBTI=;
	h=To:Subject:From:Date:From;
	b=U8ZGUkel3jUDwGHfap0NSbpRTv8SFYWV2z2QX7zR/98Xx1V0GP+eH4APi9UfPhULE
	 ucNTBCCOhXuM4zmxmMLO3OLgNQz4w9EY2LXvAVoTHgcOacLF7u0EprSy68O1fK019j
	 o+X7bIobLgF9hp+tFOUjIXau2wiEiLGh2y6poD8L+X87i0FxESRhyxDYvl1bPDsqH5
	 13UOJPeixslCOtSXGxRcfbP0lEI0b/yEBo2bzDkwQwaGkiy4QdRwtgk2RdNNLYjsYb
	 G00pslfb8GrDRZqJJFxD8CjbWzPMj5xd0eoJIcuNePH4EgGkUTDydVErH2uw3Sr02Q
	 dRrtwtnuApAWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E9FC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535979366.26089.10200643881285735161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9498602483ed330b0cf5598697e1ea12e9c7ead427dcc83ec11d8afe525524a5
Date: Tue, 22 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745359793
