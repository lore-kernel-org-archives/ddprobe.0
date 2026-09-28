Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694A327281E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790567434; cv=none; b=DZJzEXobZJyrIksxdMYilhBUNTf1Zcdj83sng9CM1ftnPuCuW+iKgMn9HcqUb1itARsg0c64As661f2ptHLI1Bfnv9Df2gDHdyAzfrLNyPRt+1BFDAIRLKbZMDQtcFVTpzK4uyffy+tF9oZvyb3LCgEbuu6Yu3+8+f+77x5g4k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790567434; c=relaxed/simple;
	bh=bvXinNjUUcanwICWDsIa15zEc5SezjaiHLtRIWHwylE=;
	h=To:Subject:From:Message-Id:Date; b=qusa8pnMx2rRlZ5dX5OfYHymVXnXzV8DWrQyOXMFqgvKZszj6AbTkhFMEpkYVJloRHAnHPgsUcal4gi5HcKx42jZlplf3pW69xI3oti4Ks8J2IctWfxZEXRlgJddiG164afcx8DH1AJec7useucPMM9HCPwp2esq3Of28HqBZbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGLqgl96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGLqgl96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7AAC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790567433;
	bh=bvXinNjUUcanwICWDsIa15zEc5SezjaiHLtRIWHwylE=;
	h=To:Subject:From:Date:From;
	b=WGLqgl966cNotJqJHfodFbheFOU0JVhWRHEIpm04efE/hx/HUL2Ui0zyDodRkqGrF
	 2B79v19IOQPdas8MZE7il6qjdY/0ZMRCksvGvgTdWkiWuf+0D0uL3afcCyxcxuBX2Q
	 mgN9ESOEuSOSs5lSkVSTOshEbfAcZLTDqz4Cb6lnUn9w+WyKrPjY3CxyjDsAXXsoAE
	 ZgvOnVqo/5E3h5ZNSabXEM6xvEpPdWojZLNw/DUwTmZB7TMGGBTvltPpyZiX1i3JbY
	 WAyKuiSR/GVxDZ/E9r7L9PIVsAEoxSsneF2Up0r6xj9YVoZuX3FGadPG9nKOhgr2Ji
	 cEVogdplLiYuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44E4C98328
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056743371.11679.7485108740779167254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48921568c71d0c6e4ee07cff2e7bbd81a169d20b79d1c8a70dbf0d62c42bde8f
Date: Mon, 28 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790567433
