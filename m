Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D41F17578
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714855343; cv=none; b=gK/QEoTL7jboPjIfs7YkR0Anqv1Pi4isX/ShH7Cx7gR8lYYOFY7Qx0ilzsBdeWDkVz7ZGPWDmMvAypNJvmBxnkZPeeUBOW8fE/hJMLILM0SmmE+9brBouHExpMPg552IcJbzCfV6q9FKIkDouVSS9nTqaVpX6E0JDgWu2fGbcQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714855343; c=relaxed/simple;
	bh=SkX5d3BD/ADZzIDDrBW0vx4btkN4SjVD1yzBnoUwJ08=;
	h=To:Subject:From:Message-Id:Date; b=Ew5M/w7iQMnl4ZuYqMkvzsuq38+M0AqGvTLCTtF8+iZ75zxlLdIpWyfpIHtZ/aboCsNf09MtT3kIfyXZWN6pl/fObM943XvkxKhhKNO5O/FgeSu3euLmiUY5QbDBYirIe3XYJJ0V5Bl2GxZuhODQRb6lg+NyX8sREYGWJNw2Xdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOMQfghu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOMQfghu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2492C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714855342;
	bh=SkX5d3BD/ADZzIDDrBW0vx4btkN4SjVD1yzBnoUwJ08=;
	h=To:Subject:From:Date:From;
	b=JOMQfghu07Jbx2vJbJmE2YsSjwEat3U1eeMfwgguZErxoBz/NANG+n2XRHWzoT3ID
	 tlH17Fhc49A5lkboiim4ENJ8YRIqan0SRm4MpPmrSnaOcBftnj6PnlTokuTl1HqGHF
	 OeigrAL0L90ULrwwlHZZBk2SX3cHoxakakkMk4/Ls0K0aa86xZOiCrcyhlOeTQCu+Z
	 SOX6zMke+xoD6n39Y7aV/oQhoC5eK7wxVCHyP/ZJPY5xWn5Zxj6kHtzbawysKbd17a
	 NOi02MW0rWP2HI3IYFtxdq97n4D4KAOpOJliGF1LQgqruWssQR2ZfeUHp8oZcMt4O3
	 1LvtZSR5ZHHLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD021C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171485534276.13350.412427014770374786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f0be1d7f43647bc2790ea6f37cd038311a96ffb4fdc7f19f7f24a5eba8b6d5
Date: Sat, 04 May 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714855342
