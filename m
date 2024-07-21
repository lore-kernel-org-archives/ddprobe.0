Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE32C8C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721563554; cv=none; b=dky7PejMm+PfZ/MC+B9CBPpol2gvSO4jGqYhyINRAXRpYlZba5cQ9oPUZh/DXflyOuTW8sFi8yGXZudI0Bt9Bsn+hzraFm8+RgBGA6ef1xrs39btXH8WR5eC/5KICgewAsnXuRkgH9pqltGM83SyTdg+6D39FaoVbNVkkW99Ch4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721563554; c=relaxed/simple;
	bh=OtCV+IwOdQK7WF3H+wxFIfi3c3/PJ9y/mM3BUbljHws=;
	h=To:Subject:From:Message-Id:Date; b=E8lb9lqbrszQDvx+CeqPUkqT+5d8BfiDwBZ/vmS1LpWWOcAdjv08f89ZhEJABCX63iFbWo3VJOuTl63y2/CUDpIYEtT+uIqCcZA3ZbTIL2J+Rcc9ElmBKHzsIHapqTZD/oNYvoH5Fcnc5lPyr3OXlMa0Va/qu2WEsd2f9EvJb7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpM0GXMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpM0GXMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F9AC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721563553;
	bh=OtCV+IwOdQK7WF3H+wxFIfi3c3/PJ9y/mM3BUbljHws=;
	h=To:Subject:From:Date:From;
	b=OpM0GXMm7emxo+zaYJCuQR9yaai5HMlUfcanlmZE8nw5m/9jozVxorsTAOEP5knmn
	 ryySn5yJZWYsUUuK6OaVCgVRdKQgHm9cC1EEgJMZahxAcR/JzWAdSJPP0oq0xHvV14
	 cL2f/32ba61hSotkKCgZh9UC5UYeN0WQFoPe6/l7QwQpTDYlPD7YkmH030K9F3Jzr+
	 Q0L84MZR7KbkyfmM8vN/NtaC5rT5fmtWWdUP/M4ooYhMIQH4G73NBlII59zD7dFmRi
	 Zs4ZJfUOlsu/TlPDOxs2UflVRaY+3DjHypaN8CJCqI81AdTGYEygNAIxM7UosUPENi
	 a5qCnPdPtPGgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB90C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172156355364.5985.5361153009421438630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7d8eec0de8479c55f7ca5cafba0b347b8753a2e2bd2ae29d675b00aa838f83
Date: Sun, 21 Jul 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721563553
