Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62559D268
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716785063; cv=none; b=UonCdhQHntcHs47OepCQHq/rI98dsLisN0mlLrXk3fTTREm1U6XaYq/dIuuT+c40BWv3e8bKaUB1cM4VfCDDrPXQfZzPZmoO3Pci0Wa6zRPdC1+PDguiE9062TsMs5UHPiRJabrom6jAb/FjMlaLR56qqY2DAYgmN8ze6YtIcps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716785063; c=relaxed/simple;
	bh=d0skgO2MVNqQBZA3wynueXm2l2ZVtl4F8S1Yv3uWe88=;
	h=To:Subject:From:Message-Id:Date; b=leUn8Cg7rybDmLwGeyf5qpiLKRnJA1MYW7Owq0WL0j+/zJ6+TMzffatbcC03H/YNLaXVjd974g1jditDVHQMqYVxrd2TJKH1B/A97CA6BWwQxLmge3gBTJ0xJRGQVGY1u99mbZsSCb/N1rTS8JG/HJ3j93OSVRiU4qI/jPdFW9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrYTyJ48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrYTyJ48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1828C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716785062;
	bh=d0skgO2MVNqQBZA3wynueXm2l2ZVtl4F8S1Yv3uWe88=;
	h=To:Subject:From:Date:From;
	b=MrYTyJ489C6PvRkuWcMUYqsd60pgQrBFAM7YtI+fD8KcjM9H0FWlJQ4pDUKJHuaya
	 f01uDqimPR0YPyi7cMrr3DEEcoz5fzocy8p2Pp+PtjWHko5FoS6bzPrhbespYfZux5
	 kmmX7No0extK9lMPunDnpjJaf+pR2uROuKw2ww2BNAbiNQpNbA2hTiIhu3S6D/f8cd
	 CVxuWzPUQUdftfAv5FaVz6ZvqemT6GnJ9h0Sj7U0Axjwi9K4KKdcCsw/be9/EA7UG6
	 /PMgSO9oRxR+knFLcC47YVYaZv+aW+5HO3k+CZbx/r4Mmyci5sDTa/ZIP99HwJIPam
	 Mg9gTQ+a+ai0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC125C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678506276.29957.432539315189403919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc90cc051ba9a1c2935df6ebc92eb2ef8a2a9cb8e6a6aabfa185d444795314e
Date: Mon, 27 May 2024 04:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716785062
