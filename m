Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F88C8248B
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759081194; cv=none; b=jp3kj0inFbKxRSQVJWAGZkAMOkjOBFxCR8rT78Eou0L1jaac4MJJ/oVK+c6lQ8FkwthSVSzxYGl8/bzu3XPQdA5fLgxlW2bgaK/QjugtbQAbLUvfFuIqTGzyWJLRn36vhpUDtLvIqJs8qA9Jddge7SaRCIbpLeYC2KUH4GMov3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759081194; c=relaxed/simple;
	bh=s+0STrLbifGr0T0q/EvPlPCI2QgbXkrjueXsyJa59xc=;
	h=To:Subject:From:Message-Id:Date; b=P05wz+91bs0kcsUwzPTToYjeRE1bc8c8w5YEBotpBM+J6bjY6qB1KZ5fJQryCTkaOYUgkKpd6gtl6ev2m+fsb6hW2IMkhAWv6TTXP4Mi6/srQHtlS07/KIyc24WjxifnhSmUsDF1OfxCiHfcsTv5lt09PFlcerlUlIkQRgsJuDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpQnF0De; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpQnF0De"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA583C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759081193;
	bh=s+0STrLbifGr0T0q/EvPlPCI2QgbXkrjueXsyJa59xc=;
	h=To:Subject:From:Date:From;
	b=kpQnF0De0sorjv1ILWVv9Om0Mh+mGb0yzXWahaGkEX9nGhFCxSEjezhcwamSB82Bi
	 DH6XNqvbj35ojr8IzAuTU/nLV58nyRkHq4FwPKe2hsepR2dIPX1YyAa2yl32mQ4p90
	 3PUEnmPONpk66CIJVtteN/L2SdtJnbWTAL/BedjWzhq0LVmvus/p1mrte0wH0izRce
	 Oke1qP1DkBGXDvpFRlmD3qNq5nabumkoVaqWsVLzu5/GMPEFRRMO75seCMRSXGWSDT
	 wr9pfnzV/GdxeeWB8/WzAI9HAC/k1aQ+HkbNk+EW0md6rQKcYSJmN+fTvQU/ZgF8Zm
	 CInA4CRvdc4Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93764CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908119358.20178.16850399289715924948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7b57c45036bbd508a31fbb3d01443c14808aec287f214b3810a0880b7b6737
Date: Sun, 28 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759081193
