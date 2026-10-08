Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E0A1F936
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791436834; cv=none; b=pxVS2kcJutlDBokkbaUFuADZbY4/d2PTxrb//JfoPJu+36BSiFYThkH0QxWrXHZfzpaptc7SOl0m6/3wZuHC9TuqQKOT5y56kk0NkrhgTnh9eDvrf82qeXUkVSUD/nYkl5OsYmhw6KfWvZMvLSpR6GHFbOwFj7MF9bq7nwGPKPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791436834; c=relaxed/simple;
	bh=JoyuDN2iZAIxL0s7ksCm9ugBh6EdYOgwx+s0STiL8aM=;
	h=To:Subject:From:Message-Id:Date; b=AJD55EsEpQ5TPOlxDKyP4ORaRo3i7IWDAaB4BuzabGps268Vkvu2ZpBMlVT+wsWibsHeb2yw16gzcDKtF9RuyUX+/Q8BRQNon1rhlPrGHgRCyTi9tCOJtzQsYksGllrsLaGuHL8O36CkxVQRmcYLgPcX/5+N8sYxRTt9jkFPbCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOdY4KJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOdY4KJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD04C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791436833;
	bh=JoyuDN2iZAIxL0s7ksCm9ugBh6EdYOgwx+s0STiL8aM=;
	h=To:Subject:From:Date:From;
	b=tOdY4KJqkqU6jj8xV/SiqhdSTvBCfTwtLVna6t0TxPgK4NPaW2ywk1CdFIvgqYjK1
	 +SxyzarRDovtNPSuWJlowmfwM+eiEBWzewZe2yfQjDvUPjcPHYH521CMWFDDrHbjKE
	 m5obuhn+lpxsD6YSkb+bMoe1q5qmQx4InDCZrlyHQdo49+jTJB2wlc3tpMvGP7J3g/
	 EFyfM/1ufP6O2npTnC1ImPreAMSgi07KPDFHt5aHVYNsWr9bszFKmioSVcuzQJHQEu
	 rG0jDQ64IY+LDY0ElAcmm8erajCVSLOHMpVd4lDWlfpWCLhgtInI2CEKveRTcfLcgI
	 iZnkd9M/WHphA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6F4CA6002
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143683368.746.10212979419019619159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dee7c5773aa6110159e7a89d26c60188faded5ceca1fbdb14e293bd59a1fa4a
Date: Thu, 08 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791436833
