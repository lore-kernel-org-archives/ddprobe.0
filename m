Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1F529A9E9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778446234; cv=none; b=oOP1vy0TeDJfDYG+3K8CCsjbkuSrEZ1229o4PD8TigU8bHe5A0XP8iaaqIQR+uy5NnkrMwAG/ChAFxZfCxUkjLilDULMOtBemWBmZ8tTtWXpvbTEv16/2RZkzvwWm0dhJyoc4HP8b4z8S+Sr2jSRzsQQ7lP4aGy5rkBCYaDafAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778446234; c=relaxed/simple;
	bh=PPU5URdyG6YDCwqQosdeQArKNo0v+b1Hkb+ERzfOfL0=;
	h=To:Subject:From:Message-Id:Date; b=LoDA7y7nhr0syy7tcV1Y5DpMNxFbKzbphYVdzzgmxbuUbH2ZxhqyeQ7Kl9D97eEZy7BdUk7eESFRljwAxWdJgkvKqGlafSZ+YcE2hOQwNVxxV2EZT0m51TMfLKeBefWb3YbwGdNfnvqN5kG5GIyTuFqjKyL6OqVprxWKoZEZTAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8ZOIylR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8ZOIylR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D53C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778446233;
	bh=PPU5URdyG6YDCwqQosdeQArKNo0v+b1Hkb+ERzfOfL0=;
	h=To:Subject:From:Date:From;
	b=s8ZOIylRbB11yzqt+lbJDwY7QE2571t/bHhjJOuKaUrHlkiosjYaXyi/D1Ouru/Wd
	 Xm/F4cAyg94kTYIqT3mR0YpOk3u3S7hfy72e63QyJeccn6Kf0KeNjIbKkJw2cu83go
	 A/KjPcN3LeXRFWsdtN3Osz8eI99l9ndWp5EqWPIxs4MFX9j7DQlFjztTovEXlurfPt
	 rJ3kWT3ZO9mYz7NQYtkSLQWL1O0VZ7OllD5dr8tcqOoOC0poJeZ5PcF7MwRJ9psIUt
	 B4m84WjtTSXjm6H4xBAX55jYyacCUHGC8bptNkULCR+fpGuo3pIMAJvFQ+HOiJ81ma
	 SJjmDhpilcpag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BCDCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844623368.32449.15352620613554482479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fce6591c14adb3187b6a6a1ca91f7587962aa8a1e8f1a4d872069df0f12e0c
Date: Sun, 10 May 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778446233
