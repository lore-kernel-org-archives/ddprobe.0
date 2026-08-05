Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5CB46C4C2
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785933634; cv=none; b=OvK0T1WtqAnoP2ET6OS78p+DHvlV3oIX2YdiRYNKCBG9HujN923B+kje89muaDcqkqISL2Vf9elyOAshISpUvJVBz7ZcnY5dkDcpLSBMvpIqC07XGRe1jWT9aCpQb2BtIZ+qtEWai8Ep+mG+2gJEWkMjfouRDC/xG9hsu9YWllY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785933634; c=relaxed/simple;
	bh=nxwFJLf3u/EieGJnhsdEt4DiHuwfjeuoVfrplvM9zBg=;
	h=To:Subject:From:Message-Id:Date; b=fpuEUPD0BGolo+dHUsStLcLvLRqSD8xlo8q643x0SOd8JuvoXvGHDPx0c3ZLD0q7EU7c0LosWmG0xmiNCFT6gS+Eu4zNnw7y4Vdv1Yh2nsu9kbVCba0MZQVQ9DDhrRaWnWUPJ/hiaq+m8ENN1WshJVXAXXgF3Mze3pwuvS5g300=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMkiA63q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMkiA63q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E8DC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785933633;
	bh=nxwFJLf3u/EieGJnhsdEt4DiHuwfjeuoVfrplvM9zBg=;
	h=To:Subject:From:Date:From;
	b=WMkiA63q7leACmFIDXNcBwByJeK+ivHi/BPzIeWkAvLTRhNu5t7OOfWpTxjnm+ZoG
	 RkGGOXPY27vePyIPmemAYCmQC4RAYqtRxIlfGWIYCDSmsEWi7ehv1dNjAkNR8o3hhL
	 W9UfSBwptizi7laeJe1j5D7t0mtSFca0D4+yST39tMoEXcyZMi8evoZ6TenrVhmzhC
	 qEDWKFI7NClzsa8T9K+fjvJVaqzfX2xG2Gs841NzfsD8U8jFafS4VwIZ/v/mV6bNOR
	 qvdmx2kwhgKq6tRPuPA6IXHjEJnkjKoX7BXypt1eZSzHhIkKyCqBfAoRaIt507GlXK
	 cmc3Y9V3zF/dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC97C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593363370.21184.13984220537964595758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358934e1a841655d158c3aaab29e0abc5baf999600386ca5e2a2150d195370fd
Date: Wed, 05 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785933633
