Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2506011187
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758154194; cv=none; b=EP3Bo0ZihiFdHzfyoUcLPJWTk5a/11yM9Apws3RlBVIqWi/jogvZeRA+MWT1xTO+oCyrwyLLXqqG9zQYc69zu/5LUjilA1vYyguc4s/Kn3JZpM/gKaiI8MIBgfQmDbbZpg6+qjFNBqbslBs3RobkQWSYUjfkziCguGxjJOPZWTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758154194; c=relaxed/simple;
	bh=U9TICrY3zh/1PnUmXE3wMi9okuZttRCSrT+epbZcISg=;
	h=To:Subject:From:Message-Id:Date; b=SHoLE4cg3HwExqoJG/J1YYwrC4wlRm5p+ej1xuc1rK8Jna+dVIcAdjqzu6KG3PTmPexdyiTI9u2hCCiQHadAV6wBTbCPKo7jCW1i1nUv9XYWFM6kVenkEyTDaz/Tl0uPZMYs3nkJeKlZUr8qcU8dqe1891e7WTfH3PtRBFnwS4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEjtkiZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEjtkiZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A55C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758154193;
	bh=U9TICrY3zh/1PnUmXE3wMi9okuZttRCSrT+epbZcISg=;
	h=To:Subject:From:Date:From;
	b=jEjtkiZ9U1BapzDCcZ2OIchuRP87IqWDac3BRgELnlTg2Aobd6hXIgHYWFAJXx+CN
	 o4gD/iTIjv55F/sgDuPXIcOgvRXvxMpd+c2pUdf7o1NNq8WkSdUbMvdR8u9bmuBK5d
	 TbgUcNjLxc5xg9x05pqkqCoKdS9X1FJMgrf3DerfY19A7pkaHqLYWAJ5BqP5ZMdsjL
	 32y3dfFOfU/skc27M3jlthPwyZcCrzCZu1rsK6V1DxBbwvnkPA0VzsUeKa2Ep5Sr/z
	 UKrLogNPHjH+pu64Hh5+3tkQyw6pEwySb/EcuwZznksAZtoqtyesQiPb/CGbwfuz55
	 puyPJARx5kfSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92495CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815419357.15704.17105607380752487443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313a81bf1429c64a5231db1efe4cd3b73f6c9c88c32700c026896a89c2d838b2
Date: Thu, 18 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758154193
