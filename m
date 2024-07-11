Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DDB17C77
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720672043; cv=none; b=SlHfvBOiSyVdy1gh3hdeyWEywiA6fb80hlxy775l0a4KSpRREGKGInyeJSHpQpFgL+zXbscCB6VCx78C8XZzkp/LG0U158RRZbBTBhASreRBA9sG1Wq4R/tKQobz00Ne4trPa2F1SBuNIblXgjxL/iAMgV0RvhMm6Cv+4osZwNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720672043; c=relaxed/simple;
	bh=NkZuNmJ7rhCNcxDyT4l66LbVlrdcOR7S/YWMTGhD4cc=;
	h=To:Subject:From:Message-Id:Date; b=N2CkKU5j/5Yo/7IWfn4lTW5xRIZF5QGocwXa0MjUxijtEAc6dx1EJnCORV2TI1nkYm4BSflMDBkJiOpoCy8x/fEygaejL4KDbzijOdeZLoxn2s6MqXv/86LT4iU5JUAFDhJ0poVk9QF42zwHJK7wUksCofiH+aXyxFvPTiHT5y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/qKhhnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/qKhhnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DBDC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720672042;
	bh=NkZuNmJ7rhCNcxDyT4l66LbVlrdcOR7S/YWMTGhD4cc=;
	h=To:Subject:From:Date:From;
	b=j/qKhhnJljCWoxCaz4tbR8ga/Flitqr09DaZLIu26PSnaTYOYQtlaffK3Do4os7Wz
	 Csd8yPQwTRkYph0PqresJ264sGjz6IodGAD8YTVaa1YuVAQvwE1rxhNivoEVdDiKqE
	 U6s7u5ADU44VTNePspZ0upMNhvjeXtPBXHq6lz0tt8IxPEtNNl/OkMF0pQrfpkB7KC
	 c7BmDgLCzDq/e225jvjtxp+u38rVTPVK4txVk0aaLQvCm6Tg6poSgP/VVdjl7f6mIU
	 v4CVugHrNuQ8cAZQ3niodle1Az/4emxdcEhs+jnTsUdQ2xh0Ej0i03hQdVsW1BuSeZ
	 JukP6lQpX4wdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF4E1C3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067204281.4483.15169559384914823492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e8381ac2c5a28d8638316aea2e3dd17338b9a3e67cf40c69abf1b4bd185dfe
Date: Thu, 11 Jul 2024 04:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720672042
