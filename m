Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E3347B435
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781630194; cv=none; b=hcjOjNG8AibFgjm3r2Fwdc4NdwpBA4njd7gn8C/u3rel3nynsbSJ7COL6G/dbjKc1uXUyifHx7Bvh4i5pWnsy3U/VyIOKgakiBmYsWjuQejbfKxkJZ//c950woQrwheiYTwV7hqjPR+iTclkGHn16EukYjtytdCucyBOWzf2aF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781630194; c=relaxed/simple;
	bh=OSpJi06h1oDu3YZBdAWNAjokF/CvUDROyX11dVVCw34=;
	h=To:Subject:From:Message-Id:Date; b=pJzT0dLDXI4Dz7yop9AfQDg7qKJo+gPHEBi1Qyh02UA2QsiER7H6Na1wQ+rwpm00P/UisnuG4Rm8YU2o+9xYhSkmFOSvcRdA7fNSoc38iT0uKEkKTSOGIoc6xrh3Xt6TvAbW2Eylu+/FEDsiKUpr21SzIsg7Wd47OAR9K+yQiJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/ombOeg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/ombOeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47FFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781630193;
	bh=OSpJi06h1oDu3YZBdAWNAjokF/CvUDROyX11dVVCw34=;
	h=To:Subject:From:Date:From;
	b=d/ombOegGhkwHDkkjAVZEGZJcR+qQjmNJ7Co+b4qFxHCG67jXdVLLTlvssew2nGyG
	 JsC1m+nvIjHGBZOu0AkhFuiMqjOOTxrdjUzeVrhocSrmQSjlhzH8V3xw12wss8F7Cs
	 ck3DdfpiQqgtHEjXCFiAdSurSPL/UqdvzwgsLis+b0mEPFiePD50PHFG4WYR/+3VMB
	 1Vl9K6PkVXWxH9GQIJAMLd9gRVRir5U2hho+RuaxufmjksAH1lHZSzYCR2AXptRANQ
	 p+nMbEQMbrjMgOhOkEtC3KGmHGV0u6lmcInTjePQ9x03LaPzz3Exg8L8J+f3LCZ+q2
	 66IeaijFjt/GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB375CD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163019369.31232.15782493132494551406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91496e7f803d5f62c13ff5ddc603fcbf3ae69a2f6f58fa5e4636c851d3f4853
Date: Tue, 16 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781630193
