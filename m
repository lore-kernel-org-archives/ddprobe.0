Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E5027470
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776044853; cv=none; b=WgNoztP7BKo71GauigcHAz5L1zv7CRUGQtOQDkg/JwxfL+uqPcVJ64BlALodREUM6ivbnxCmzc+CvlCycDPyONZYeidvI3nw2cwzka6dmXYnp3Fjvx5O/0BwD6Zo4YbvNzpUjJEUTbdFr9qE/aboYsbZbNaThgh84oZZNnbRSv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776044853; c=relaxed/simple;
	bh=3RLUFH9rLO/1Y3DTwpy6r8IUphsPFXiMc2QEvJaNhWs=;
	h=To:Subject:From:Message-Id:Date; b=BdZKzKwMky5R4UYnsWr6xWlDBqm7hRQODUJMtaixPouS3A5ZDqMe+Ie/8q9+7VJL4G8Oll/WzSMCyFXlsvc/9smIbGoEHlEanfFftXQEsxyis+g0+Ea2rTsmroBJQdbIFoKqA6kHCByR4aph1fKRR4OR5Zh6DMBwrxeYA7mj1u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkg5gYVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkg5gYVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7ACC19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776044853;
	bh=3RLUFH9rLO/1Y3DTwpy6r8IUphsPFXiMc2QEvJaNhWs=;
	h=To:Subject:From:Date:From;
	b=nkg5gYVkU7PiFbHg72JW3IxODJXpKB2kqUXp9oAo+VhiiKmY67o8+uE7QIxhNhTDz
	 uLmKY6xn8TlNtgE99/LqYdbX3MGxFCnOcIkxuZml49U7pvEYXrWtWwDV0MJ9vPljwz
	 gdhjRtsLTxNdqwW7RXu2QqDnaoeAwUdMLH82bxNzsWBig+D721xSaMnL04wX08sSPT
	 mmbeij/qC5bzQRnnbaDMKwoNBjPorYNHtSrxq3HyKzXP+CqOTDLHgTR7IKEnqNt4JV
	 aNAB88HVmCpr+UF9PJbb6UJQZ3ysmnjMrELjhVDWQtA6mKI0O+hqulRyrTke4tr6Ri
	 FVj+8di4SXf9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF9EE9380A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604485368.4467.12952334570796975655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c62eb5a38833d7ea777f6de1695eb4d4d8337300af522cde2827b9739646fb
Date: Mon, 13 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776044853
