Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1D44502F
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777264654; cv=none; b=nq5VLNfqhSQEzF5IRISAAnOahiVFTBkmmX/OiUA470k4v/soL//XR6t7UIdsSA/KRaWBdnWWDFsmmz/BE1pTbvZh9tkZPCLfxEUEi1RSpDMGhWzqu34w9W40xzLUu4i7jRK6vj2MOAzQFCQ23zc/bDJbrFKHVGWuLr+Q8sY8rug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777264654; c=relaxed/simple;
	bh=udBcfoavFYG8MQo/cEiVdV4FCUVPKDdc4Ah30D0KGrY=;
	h=To:Subject:From:Message-Id:Date; b=DlOrbzx+eRjjFZWNuyqqW/jvoP++gVhdiqlhD3wWKKn85E88Hqfg2oSdGxsrSG7pKhjAmxBCf1D0XG0gIL/wEccXRVwiSvYT4LFfWV3NBdKl6Wy6YOtkqCBkN/Wokyty9lYD+UiIfvRFW+uA4l2AV4Vbc6butXZL0Odzv3vWooo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xu8BA4i7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xu8BA4i7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3E6C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777264653;
	bh=udBcfoavFYG8MQo/cEiVdV4FCUVPKDdc4Ah30D0KGrY=;
	h=To:Subject:From:Date:From;
	b=Xu8BA4i7k4Sz2nvWnXL3ex7ckPhnQ5NkSs6hNlskMx+p2wJtmcU+tqjhRj1kT1Wm9
	 ybctLAHZd3NP36KiyqPHowejWuj1hAGieWhe0yy5O+URwY6tolG0OjPfDMogKUJ3Xz
	 kb3XGuYCmdbWuNcjCnpp7fhgK5Rs0SAnDGV4uRmFhLC7MzXgwuNk+t3nLOj/lHVQXk
	 pdG4oYsaDRynH/R7fc5NhdU5VhReXKkr8T4OdcTo01m2S176+Txu6nWAgbmtLS3jg0
	 xJ6b2RvjJ+fv6YM1KAHuRpg18Lr5E6vF9/CreTZXtSMtRSeURcfumD/0MXhNvNuwQ0
	 CLdbl2qefkICw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AB2FF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726465368.7979.17525634253856970211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42c83f29601504502ed6e9f71040164d0f36320796cfe015af2fb6e916335b6
Date: Mon, 27 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777264653
