Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC4A1E1DF0
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754837994; cv=none; b=RD37XtQLFnUBTnKxwIjL5oS2/P5dqUyDpcdfcgyojd9PO17x7bYF5CG8LjuNJkuj2Pq4J8Pbd39L5k/RyKyGT2R7M0lyZcn1ZsRi9kinMByOGL0rfTysTJ2yLEAdirxTfeVQnnnyLHay4NGTlcxrurVrCndcqqgw0NO4DzALyIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754837994; c=relaxed/simple;
	bh=emKksxcjCe8p9F2ELhMKgco4/WC9oziZh6kwbYvraYg=;
	h=To:Subject:From:Message-Id:Date; b=SZgI/03sWux702amutKvnUndtD9A+u4PtfuSskvUoaQA2VGpdPoU0BqQBkX79Uhal5l85WCrwmrTkTIkelmsvFO30uB9/aNbR2wcfFwdH8g0FLIztlXvAdSAz0xsEAii1j+JCpufcqGXmsEkDqZn8MImwDLU8qwR4X/oTum5Yl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIxCBLI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIxCBLI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A336BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754837993;
	bh=emKksxcjCe8p9F2ELhMKgco4/WC9oziZh6kwbYvraYg=;
	h=To:Subject:From:Date:From;
	b=AIxCBLI79bYZq+UvEW/aE9RDEqhi/VpnPnXxuMS/nmTTlhnLbG36xtW3AN1NiSHqF
	 H3UkwoovB3mSzBIr7Haom/ePsgN18616VzrUvgx46y0x2gjP+lQCiWJskYhXreyFW0
	 cVXcJ+Q/AOLjnSP257a61z4zXoBnNUah0tKCAlbFWknxnZPwEN42HmCPPsJKZhqsUx
	 Qa08+rwFWhPxOFybHSK4F20GRIJJS0OcZTDJJK3DM4UYN2fGf2+sCDFYVmfDOxaoEz
	 I11Hroklt7MZUijoO/1IGtiHcLGSSCPJPlR+FINKOn0RaJyi3Eq7rCSuyZdO3K5KF3
	 gw5WQwp60sjow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91765C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483799357.32580.1153457127819479686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091f441cc4f992864a817ca43655624be4203c478edaa81b72ed78e5ddf1768a
Date: Sun, 10 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754837993
