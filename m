Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF141D0DEE
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775978254; cv=none; b=K8sdzyiwNMG6QDkJYMjirn7+li8WSsUoK1usCJax1SXzojB9FeYDCGBs+WCvwg+uNm3LpOZT/XURNHUnXkkyxVIRG9dF4zjZuxdp7d8vtQPNp5KTZckdbfzVWIhxdmIJDg8W1A24JhalV1m2X/PS5bSeuY4Q0RjGSo+1f0cB5XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775978254; c=relaxed/simple;
	bh=MoLGsxn6wiiTQpFWp3gPewmh/ORKUlwTfiABKu5t18w=;
	h=To:Subject:From:Message-Id:Date; b=gMlf8NOwY9hgGvVoTThhHQqI8kA1LGhjjvpZTxGFyn2n5HW0jc6y0mABrXUcRjcBnVE87pRgyupLMkS7RZx2zkSY5toNp1l8AzBbkcYG3I1Z2sjQjMsOwcmS/wH2zH+Pkki1+ufRi6ErC/V0Zm5/ogBgarQLcj5hFCGnOkmdYfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1AN2auT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1AN2auT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8C3C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775978253;
	bh=MoLGsxn6wiiTQpFWp3gPewmh/ORKUlwTfiABKu5t18w=;
	h=To:Subject:From:Date:From;
	b=Q1AN2auTr8Ki9PGtI+twvk6TPIgSx5+6oH3bUuYf11UYvmk0R6spw/BuEjl32ypZA
	 EJWNVP3vmEKoI675l3ea/vcrtibnNl3ybqzyE4nfSRHfIoHsftKI5l6vFS47zAFat9
	 iFLuRrLPuWMvh5v0n17+gPaQZLFoJNRVaMn+a4cfg1+Rg6oUYDiP6RbesV5CrtM22B
	 dnHwrAG2MTJ+fPESmusY+GIlCuLj4fYjbgWnt5bjcTRtVoX5cIz76wF3vcXaaGIQuI
	 ivD0fYRdFXH8AuSWNk+engnaHiZdmy1xkh9cFois8XHL4uPMdUTfjP5ui9N0QPkodU
	 Q2I24gvqJhGxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE2ED58B04
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597825368.3514.2486504782948966471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abdc76de1ca743f8b6ee6335e48b3d09a2544bf0c9ffcb56f2a0909a43c4b2f6
Date: Sun, 12 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775978253
