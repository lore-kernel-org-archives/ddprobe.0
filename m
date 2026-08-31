Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2CD3BA23F
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788157834; cv=none; b=jpXt63KCYZ/jSDYO3h0G7xGIEnwEtdCmXZVu86/nwu7eLFqs7sCXJbP6tyGzYpMcblwmj/j/qz0x+t9SjFqcfzvGNH9rjp3EZJ694bf4ZakvcjAQiTEeFEn+2PNyTsSs6SgG0yCTRoZ7gRDRRmbUBD3HswBnXWvBLNUCHxjT/q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788157834; c=relaxed/simple;
	bh=MvDYVVPnPfW+WeWFbgL2ikKsyY6mCmyZPGxGrlKwbCg=;
	h=To:Subject:From:Message-Id:Date; b=BsFg7DNy+9MzecNYrF/Jy5eUQxmefeW0qmE8MYgN52HrH1PoFiitxxY/bzzzSxGzyyYDJ8OHgrdDrnVbxS1kB9JY5tTdmFK/hHt8+zYP2pi+nXPJIXT63WiW/ZWtrWLWMJ7ifejCDcOSDK3Y+vdxVE9OJrWw7t8fQufjmsTA81w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAjjhv6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAjjhv6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7574C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788157833;
	bh=MvDYVVPnPfW+WeWFbgL2ikKsyY6mCmyZPGxGrlKwbCg=;
	h=To:Subject:From:Date:From;
	b=UAjjhv6+5lulJyrwwXqN5wDhedpBfBGbsYirdMFgIgu8hPwrOZ+lAakAPRVWuhssX
	 msbStL8Cq0OubUAZppRSvfl22o0Q/vYzSbLtto8EXsWAqbs8irCTjsMN5YQygog4yB
	 8j3I87mw82FlwBGqbwCp+f0sahvSbE+UnZH0aqJQuXTKnpZGaFDe9O7qrvARSLQ1eO
	 s4jwVyUAtjonVDXNE7naPfualda7fyJFtw1nzkkxASjo89YWQgQTdP0F99DrwfHth4
	 ZR2hrApFGag0kpFu5znf5fron6+N/870hQ2jjxIvDjxKTEHF8Hryq27neCmwG0IV/z
	 mEarCoDBhfCdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EA3C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815783369.28238.8836010989056197587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6480faff34f39eb81c0757fd42daba34d36a831b9660a9de9d9e6304852a5a3a
Date: Mon, 31 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788157833
