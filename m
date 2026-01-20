Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3C12FC006
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768950234; cv=none; b=Y2KGuUaFjHt93qHGv6QqSu/39r17z6aAADc361BQJGkAQNhklhNPRPKSfCuIO88e6f3Eq2dcmhtU/4XW/6ZYF9E387fiCt4YtxHVsJIbMyzzWM7BzCGUVpKQYEwVSulQHPwYJjWW+5jS3QmgTQbOZk/xPU8ELNFRTlMhU4JyELg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768950234; c=relaxed/simple;
	bh=Q1Av9iL1IJMRBI+89u3haRwmIONS04yAk80k9hud/Pk=;
	h=To:Subject:From:Message-Id:Date; b=BQ92S/d2pRgXwj0GXAKvbuXjdCtAGrE+zM875nZi216GiRh6ICpObzTD3KWAX0OkREdll1wlasbOQIhWVA/p0OAMB5yJ2JGm6cvosff43iYkCFjmzZU5m14hrS2X2q/cPh1/TkyeRnaoCVthqPjhu5xV9WyAYE4CYBdJOYn9s48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnxqR5SD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnxqR5SD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1807C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768950233;
	bh=Q1Av9iL1IJMRBI+89u3haRwmIONS04yAk80k9hud/Pk=;
	h=To:Subject:From:Date:From;
	b=AnxqR5SD9hhm4JUiigaujHgdSXJpMHXF6k2jyW5VJvWa77sbCFX5BA92DDKRXgqlj
	 m5ZZQGdycOPze28WNUnfdvMhepG7lQIBm0ctFqhHMBSSnDxacV5lIwAeohvo8FiihQ
	 RwGADq5RB9Ff+7f0ttMiCV/enWn7MrjCq8Uez58cqPng66epHHLV0830Ynz6kv8dDn
	 P3uNe+siHovrc/SSAQ+L4/U/UMvJqJ1p7vNCef+zPwIFMHhkcfnUVaehi7ui5xe4f5
	 g7k63NCswe6L5V8DeWuXFjOWt6gX79jgL4BlXYmRmMUu7SLkzcOmth7JhRHZn3s/6q
	 LHkgjNfcZyyDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F806D2629F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895023357.27501.13985910763471548020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3299374dcbff55e1ffd19417ee33b2f7ea320f9ee71bec39667a162f86942005
Date: Tue, 20 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768950233
