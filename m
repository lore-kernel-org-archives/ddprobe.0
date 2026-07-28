Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF973AEB5F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785276635; cv=none; b=qJSgGxY+mWBtLPxQDUIIROWGxcp17tdmHgYTQZ/hnr/E1P/aQLvrd4eg7OJcsuq7zWt0E162vIisZ/iVYywk8qNxUtG8h86KJ0RzifRiQjnftyWTVfR/Cxd5mEGQiAoloqj4OsgydHKYCyUdYQriF0hSgtZpgYpZqhX6vipcljc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785276635; c=relaxed/simple;
	bh=CuD6m7uk+cuZ6gBB+Ks6x3Ku0lYP8Uv3U+ehqtHNXvE=;
	h=To:Subject:From:Message-Id:Date; b=s0EvopZA6zMAguh/da0X3Ss/am72sxc+yTQcBxYRYnoTliwE5XckKCiTY7E6i5Bk8L11qLWLrX7GkMiEaSMQtuaYKLIu/sR4E4SoZUolGwl0aBqwd1owHE6R7byRU0V25CrzMaZQsdFks0bb+c5DDLCwni8mHW9HTh1/Xh87WL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kF3wQVlr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kF3wQVlr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB821C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785276633;
	bh=CuD6m7uk+cuZ6gBB+Ks6x3Ku0lYP8Uv3U+ehqtHNXvE=;
	h=To:Subject:From:Date:From;
	b=kF3wQVlrkPp4Lu/5q5YOdUYBI/8/9nNirJSkCyq7Ir0xbfEG38mwyEcIBgFDGPjoO
	 TWktnTEIYUu1VYTlPvW+/pZbGEkfhwb1GW96P+Wno0nnjWoqrjgbGpepcUdqM877Hu
	 5a2DPM2+RJHtdF7Y1ys1U/HJQfPWpvj5JW6NFcbwmTiKSa0W9zHiP0Ew0lTygTZ0XT
	 AxjILNQunbf08Hy6Zl1k+de6DVDDgsIms1WLVxbGo5VNcgXSB7kFbcyqU2qtH77xIe
	 CeNwu/lCCMp3mWQLno11jSUZm1BwCZYBK9HG/8ssS8v437xvvb0KPnMcafRxUrMV6Q
	 W5pU8UjkTS8Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CEEC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527663373.32207.10431719533656229917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024585407260ffa7a530c9ef904b7c4365d2634499180e0f0200a6a842b27e9a
Date: Tue, 28 Jul 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785276633
