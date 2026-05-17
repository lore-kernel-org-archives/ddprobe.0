Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E623CF69E
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779043834; cv=none; b=iyXm8X/AZc9CM+u9QO3CY00ael7Ayo4hxJxvGjnc+i9AwHRCdtOKP26u0WHFActLx9zREESjzZ5ylJLYGdJRzBBOkr+HLPZXBWDSVKRCK7JSLpT3RAb+ynpSbQUDmzOXmBAZ4lpGKfF+ejNAoSCERRaY09KV0C5AqbYJIa2lDY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779043834; c=relaxed/simple;
	bh=JzxnfU/X8KO4bC3iP4T0hWCOLSncuBV8sW7KgduPb9A=;
	h=To:Subject:From:Message-Id:Date; b=aMS6rbzWfcaPMEnt4Sufa0X9a6+wX8O0xuHvi3NjMNcTWW39TyoB2gaGKgfmGCFmKacfADbFCf/AGuZIfp9Y4vCrAJMwHzfbO6QVdDPYT3MG0Jsv+aOXhVU+NMIlcKJrab5LhPZSzfdg9l22tpbB0TaHqSRHUr/pZm5eSyiylic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8voXgOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8voXgOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FCDC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779043833;
	bh=JzxnfU/X8KO4bC3iP4T0hWCOLSncuBV8sW7KgduPb9A=;
	h=To:Subject:From:Date:From;
	b=d8voXgOC9/O620hw2xRuNsIrjFj+5hIHA2DqfRUZTkWH6aV2YGuT/+h/AYo0e1ark
	 +3fuS3LvKC+mRUykfPPD5FkzcjV/1uhjL4Mw6OVPS11kkKt3BbZVwbRE8vYi33MQ8u
	 gGccmH329kFkJThrscT0bgfPYHCh12M7f5r9xxGY3sMAN1yLQLfFC5cgVDR38hOQWY
	 RreJukz27HTopT8xguDtTgUrlg5HWmcMNasL5YNKOoGRsOiBVqvoV+JGx9FRN2UO60
	 7qbmfLI92Bo04HbJf8sVSk7pL31fqDEjvEK6qxPwgTm2QoP9I0V/2x1YcB/btQbM3m
	 R2XmH7dsCGAMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC64CD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904383369.29862.15604959612133238073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f179aa7b982c50daba3a435dabf51b3d4467abe15fb3e810b4025bd4e710e78
Date: Sun, 17 May 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779043833
