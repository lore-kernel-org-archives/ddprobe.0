Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA982C6AF
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725207953; cv=none; b=ondvAUkT/dCrGYPzMp90h8VRfeylUQxdKHRQBXy9KtJeC2RGq87rDPHyj8EUfrME0u2KfLsqvKLuSJahZ3DiJNYMLMmm/6dRp8MfcxM/h/+H+V/J8YYy9Suty9AB42d8Kriw0imWwYmITfRki5PWMkY0Gqt4UvBGjO3XzBLr0Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725207953; c=relaxed/simple;
	bh=VgoynSuYfByBlZlA+m0x8sKq/Ue1zifFJIpUJtI0v5I=;
	h=To:Subject:From:Message-Id:Date; b=lr0deCkqf3C+QsG8ew9lYUsjzv9R4vsS4Nfwvck5OjkP9JkcpKvuaYSzDbbGeKuMXGJ5yUGef+Vt0Jn/ad6iYp+G/oyE4MEBA04dhe4ksflmwUYDpoyjx3TvfWjouvTIN/bfM+/voldMYT6oHVtr0dUfto1OZMHdx0w7vgqzQjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLXY184K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLXY184K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A117DC4CEC8
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725207953;
	bh=VgoynSuYfByBlZlA+m0x8sKq/Ue1zifFJIpUJtI0v5I=;
	h=To:Subject:From:Date:From;
	b=BLXY184KoVwB1c8/vb9LgHrvsBwY/gMQ4kiefyMBkgoKm7bBb4xZa3lshIK+87vrF
	 dfvQbway0QLZ7cYTgRmM1UYuwzB3CwiPjGzysRmxiH91f2ZgDdc7nrVeWSWTgeFs5m
	 FMyOjLO9yvBCadOJcxHytAqH1UJdgrcNXWOGw1niKgx5WxlDdwRS96QLHSB2e7VpjW
	 6BtRWXPJ0vJujs/Liy2ePsKbY5qH8zBcXpmt39mwnlAHyDdOtxckqllUwU5NPLS2HK
	 wwL7f5O5Tt/CkrgwuiXFNq5so7NAaj9vJMb7PrKSCKpmTIhtZbpbxXflvZzhNEG8xq
	 /C7GWGtWoPKww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF64CD3420
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172520795357.8389.11885379998722209653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd0df33e0fa1f3e3da7942ad3267008305cb7acb3c51e7d11528d8e50cf592e
Date: Sun, 01 Sep 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725207953
