Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FE23859EB
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791955834; cv=none; b=N+y3+kDx6E2bYgDhvtZWyb0ymQK1hkz3z/GCnDhi8rp0wir/EsAiUPFTAwZuwaQtsK6pG3mYpxC8hbJ3cN2ky9TEwAs1EsE8U/GNwLhr2Ia/NZ3rc2+njeCT13Fce957XIf3/IYu+tLPrlIMEwLXB4BPzFOewfLrBB9tTb0Gtk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791955834; c=relaxed/simple;
	bh=5jiahgOvOVPTXTTeQExsANtcJqj+tuzH9sHyzteb5NE=;
	h=To:Subject:From:Message-Id:Date; b=NwFrxbBG+ChmjNhAMRt0GnKsRTsmP4sx9Zs9/IXFZZsemMqdfKB455mTYWBM5wyvlWRgMy2dC0d6N+bqjhIbYHC9WeHRQrcx9Yu+OSCQAC79Qq0HUuQXTCr4+UXfT5zs6Ab/gQllwlWM8UHk5HA9wZnh36nR/CTAeAEjnG6RVgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCBaxdO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCBaxdO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E81C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791955833;
	bh=5jiahgOvOVPTXTTeQExsANtcJqj+tuzH9sHyzteb5NE=;
	h=To:Subject:From:Date:From;
	b=RCBaxdO17Y/YMd+1cdloKNmXaT9WKdBSFQoTki54bBxzZLhlOz4ZHJrJAX0pWmcos
	 wZWP8c5zCaL544SvpWMjW28o5XEH/Z4F8OIngjp3y38zbNFzxN92AeOkb+vmeZQrZy
	 iFxjGHKZ3FAvgwOVCG8PFxeNcvslNyuaQ0tIlU0TZtS7tUWuoTpbkNI7AgDiReQrSt
	 PQfySzRZJfxjz/4rLycyRhF39RngidmPI9Zk0CW5oNiEE9xuGVZ1cazTiCGg2l2pcY
	 ZTDhDMylmGrtap60DVUQ3AIO92ge4hdDTcRuoBC5/qcM9wGSHhtSwtVIzMdtdO21YE
	 iWDXgDt7hsGRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D79CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195583370.28015.12163869106721994849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f9ecf26adc2635a78b99ecaabb40ac5f746abd954dd69453a6a21c4ca804a6
Date: Wed, 14 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791955833
