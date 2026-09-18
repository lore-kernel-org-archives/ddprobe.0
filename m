Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C17502D58
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789748434; cv=none; b=OeWVPKHmNIDscFsaPJo2shX8WiwONoN1Twvgr7DIcxQSoWzH/yNOO2fQqiAhET+Ep534LZUsYQQ5JpTUsKt+xIig+aWeFD/nT1wJg1HxeXWQtShsNZs1uvFErL8RLM4HN6QYS71oQhlMgCB5LDEOI0QnWoYRnW8GPitFmiUFN2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789748434; c=relaxed/simple;
	bh=pAEL5+4mbF9cEAgpD5l5uVAO11B0DOtsfDVphiKKNoI=;
	h=To:Subject:From:Message-Id:Date; b=mP13OJ170G+pgfiqTwBCjjEdmpdsvr41gUCx3y+0kyoMhVCJIWXYO8N1qYpZW+KdbNO8UWNE2hStRa1VA6X29EgX4722uX4gwrDRfTsybtw6g7WaeyFBO5d+dv/J0qOiw5noG0lTJ8Z/IjE6x80nf6YSP7pv4G60SiZoLCiRX1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTKL/oBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTKL/oBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC3CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789748433;
	bh=pAEL5+4mbF9cEAgpD5l5uVAO11B0DOtsfDVphiKKNoI=;
	h=To:Subject:From:Date:From;
	b=kTKL/oBO9W+IB1wgRoA1fDYdoQgZu2RwwJlWofko/SmmqclGxzyDIU3/S07TRCsuF
	 H9DyxSoetzmUxPsjt3UI3+OUAIy2WdMw/qqZ+uKujaue2YPbS6TDtwtxp2gk0BtTSe
	 CDtZFV1fM0wlBKty3FRzV/PGebSzJmMN9aEjhUpPy0iVsbQnaw8wOMi1CqMQpsaadN
	 OF8YQ4jT5+TRb1mh3FD2kYJCixKw/wGPGQO5+uwPH5WKrYVnVrTa9xrqWH4PuE953A
	 BvDxV7+N+cdG8W0I2EhOdGY6z4RR9r3UNWZPFyCY+I98rEj6dPbvrlL2UZ6xZ43fNH
	 vgxvGGGgYPhjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB332C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974843369.29304.13905968834052532017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804d44d8d915afab6c91fea338026e4982499935b655f18d1adde87e7b581fbe
Date: Fri, 18 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789748433
