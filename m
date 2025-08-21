Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118CE2D375D
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755775794; cv=none; b=qlTWMUwkbzeoomej2IYRKtdQZUGxJsLV9jLITWkIX0inbYsgyTsJBxMXgRGdpl9HyjVljk5xyqFsAaofhtVrbLKYD7AFfR1kaeSqNK4FtF9uKRpo5xipITOYaKnaBrzpXLOqEwF1smLxVSN1ZUqVN3L9qs2Gi7x7va6boukYT74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755775794; c=relaxed/simple;
	bh=6YAKqv5xusitvG9Z+O1SpfGL+5JP07j3lBEaY12PDnc=;
	h=To:Subject:From:Message-Id:Date; b=r/USBwqUUSoORQdzEbRzAdefpujiRC4uZeH0tovBMRdA8x5ZbjFTRm2q3jaCmLgQVvR0LFdY30iQPZUu2e/SFWJIolVrGFnrrwYouvuVkUEcN4b5l3GVLtmP8FHQgUbbTLCbHCsMWRGvU4+Wkc+0U6WEulpmt37oTyFoq0zgT7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHGHeIIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHGHeIIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3AFC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755775793;
	bh=6YAKqv5xusitvG9Z+O1SpfGL+5JP07j3lBEaY12PDnc=;
	h=To:Subject:From:Date:From;
	b=UHGHeIIr2Fyi/AbWUb8W9pntLWi2ZVFwfX5tP+PbT1ydqvmGApfl9mAVh2zBpxxp4
	 DmvLz8w7UH8Fj9RnH11VaxB7YVmxeFzwuzeIKs1I7zW/X5jaA/BEXFaKqP9cA7toNZ
	 Q+e42GsMrMXIoXAPsA6WY85WxtXocQ5tjdsWp6SpW2YeNCwLlMV8NYIAVOwVC4ZeV2
	 Xp/A5AMGYK7CG4yYnd8iL3a/308zhUDQkV5DGWxPsK8N3iYplkgKjATm6EVARTr6bb
	 6RJ86VMZRbHBRq44BiM8MgoLSxYLSwqcCoK+OKDlnKpRLsWN4shuuPbpXTTiR7Lri6
	 ZoaPpxg9yIeaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFACA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577579358.6089.10910142960548426542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512d2f4df13318c245117e404d1531d63854e5376952f5f8ff55ce7c82bf26e9
Date: Thu, 21 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755775793
