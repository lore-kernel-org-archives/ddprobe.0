Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163D636492D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774905294; cv=none; b=RpUEj91UHXYnAobWaMvO6L/lJfJCJRsm2YfNmB2U6KW51mlYzeJmQ4+Row5on8e+PR5ymxSl0ez9xg9ouFQ0TNl4a9XPfbH/kZr0H8bFqh2Grq9BpNAVNA2YPyAOHTzqhWve0FvkpOiMOgCWnFQ+cWsZFSeKXJmPJFD7jeE0ogY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774905294; c=relaxed/simple;
	bh=Sul//hHO6QgTw4KJNrxspL47JRORpEe4uEefozP0PKA=;
	h=To:Subject:From:Message-Id:Date; b=kE01XxGoRjGJAA7f4UMeUQN7Cap6Qj7Mvcj9PVPJ3AJvA/TqWTSdbL8dy+JZB2HDsW/NYdyTd39jyFFIYLYb/nWgoGzLr3Pd73OoiC9U8cd4gia4ml1GX9gsiSZto8B235234qW4HOHXygz/BHY9Kev0EcMrocxV/hlE/0deQDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpmONOwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpmONOwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ED8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774905293;
	bh=Sul//hHO6QgTw4KJNrxspL47JRORpEe4uEefozP0PKA=;
	h=To:Subject:From:Date:From;
	b=NpmONOwutr68QlRqPV2lsy1yYBZWd0fgxNLBjCGQ132XahU/fErePcSCcVRRJQFwK
	 SUXX4IpVVtjwaCV4Y9h5rszTNgmXxKwnMx9LpQPLemrDx+FukrmeGPRnvuNmtQpSa1
	 17e1N9V18m6NnEkudmblcbgswfcgxTqj+BByPJVi3+AGVZnbxETcJUiJPMGtSTrY3b
	 BU6lEgZN3EAdYKxkqR5opR9Q8I4Ipq6LgryO9JyjQ1Lu9K/s/aDlu00zpyftNhL7Hs
	 cAhZ/NV2ab+9+pyZlGg++TD3UG7+3semp6tZSzEJ7gBfFOFy3p666Yg4gPDOwWtIdA
	 lPAO3p8Dfm/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917471061B20
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490529358.20290.6966305936518328083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b15f19150fe565404f9f79b4208b601ac63a22701df266410467c7251c3234
Date: Mon, 30 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774905293
