Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D357195
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727664954; cv=none; b=p5ddbg9hbH5/R/fR+MBrFgLySD9JAoEA9ZwtcUb/iJrwZOsbwjlulvuiU5VwRtaqAJd60ryyI8HZmkvEEDPvWW79aBYef57G67e/SiGIUGQpLnAtlgA5MVilaK+BXXIfXFGuJ96V2oC3v5PLQmwLM8HUS80WaM9mSjY4r85m5+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727664954; c=relaxed/simple;
	bh=YEVJogZPU59vo9DRU6pz+hVF3KM3ObSRMc+ZJKNpXZM=;
	h=To:Subject:From:Message-Id:Date; b=VL4MhFk0xgyyv56jUV/IwNZcVRTSlyazdYNJts5DBACyCLiGGIUynOAjmqAp6PhcnutbsgT8prXTv2FdbOMtejz7Hf2SWyvleW8HtfyUstd2D5Z6Ns87Z5Vh1JbG/NfYNTWnoYT1j6WjK7OgX+mfn7pvJ15cvByI0iTeEiHAxZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zl1Nb5fP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zl1Nb5fP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84E4C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727664953;
	bh=YEVJogZPU59vo9DRU6pz+hVF3KM3ObSRMc+ZJKNpXZM=;
	h=To:Subject:From:Date:From;
	b=Zl1Nb5fPANohC0RNtLiHqoREBA9L2lfX7VA7qyO1DIJIva6dUZmgQPX9VWu1gZ3eh
	 8z0eTdUfipLoMo7eyCldo+5NO0qQqoZPo1ig9HT4RBv7yZuebKh+Dt6jOQOyB+7xjy
	 80slyke9wCahVmFEOdmyGG1G0iY3oHY2z6hiN+ADYpZxo3yArvkSPFYbIMQnVUIIQZ
	 4UXQSyTu6iLpSGE2S67zm/tq28Lf50iGQFC4NaHJ79oQ0Q0GQwkaz4e4Q0Mly/dLxc
	 Raiip9Scty5hyLo/r+gwkjxw/SbBk/KxR7mn8K2hibm25loOh8evRgmUOep94s28ru
	 VY0fiYXpNR9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3154CF6498
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172766495362.20051.15069833779927265631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f300b05a9430583a5692bb0a11b18a5dc181349b07c8f094a1521d306f08e1e5
Date: Mon, 30 Sep 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727664953
