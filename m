Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149BB2D5A14
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764751374; cv=none; b=ONX5KQyDkzO3n5XI3A/R/HnV/8wWwgNrs9REx3cZ5K1Y4lij5qNgV6Rog6TggHa8mrbL8pG9CONTJxUvaRSO6mtC2WZy8Qol05we2vF41PvQD8j/hoMWnM5uIOYLcJZBnhu9l1Q3rvavS/z5zLlvhRxT/vbPqg96a3EGtRPBqss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764751374; c=relaxed/simple;
	bh=ATgRasTH1b+KWEjq4Imsh+dyUHWMj4xxp4GyfDlW4+g=;
	h=To:Subject:From:Message-Id:Date; b=E7UzAZ1kkYSLwCRa6KykBgdOIpWxvxq/iZy+VzAw5yOlEMGfMzCGv5fKSig3XxvC/7bs0OwfWpiiG6fPzGO4O9mgzdy9lPp7t5TczSJeHdvksKz3RZsJJM1n+6hbQdk6X39Fe+/xmCHcWXPmt66ye7rf3Zove0jaoSDRKdYpLIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSUvGMhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSUvGMhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FA0C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764751373;
	bh=ATgRasTH1b+KWEjq4Imsh+dyUHWMj4xxp4GyfDlW4+g=;
	h=To:Subject:From:Date:From;
	b=jSUvGMhCU2JfxPeH4KeuTH0oPfx5/aXB4PYaAbO1ZVDRIKerRakLPe7OGof4n5p/m
	 SjiEAW9euhfeO2azxcrKHA3CoZan0sqIUuk04eWIivXwiKSJOqef+SxkpqkduX9KL6
	 6AHp+g+c2eNrgWOuDlMzABHjQRboYVzIEVTd6PHvQcgN4njXmLh19O6gHv7oBc3rw4
	 pj6M3UNbesXp+1GMcLIhmYKhSr+/1rVu97VKR47cokfVBZgdFTagKJ0yzBikRHAUqy
	 bo3tcvkD0VzAvkRGf1Nvj3NmwQVPPZZD1KZVg+7cWMXjc9xFifGKrF/d519wuyg/UQ
	 48B6C6oRxWFrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92910D116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475137359.10860.13176238459360424107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073749e6ad2df24c554f16acd02f0bb03f83fd992055f5c53683f41690b5261d
Date: Wed, 03 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764751373
