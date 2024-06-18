Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A3855E58
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718749163; cv=none; b=aYmZTGnmE0TXGxWAT33XpaU0b/UM4bAEVXTAP3TR0xJhdqgsXBW79eAoCxX0dNXxwZsa3VkAjpjFHLVVhTP/IcT0uO+G7+B3N8xC9b6iL5W7wLe8rxyA+Wo4ycbiIkOzCZpThuf0VMQuWrdWEpiewS3AyrvfcGVT7FqUpe19Q2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718749163; c=relaxed/simple;
	bh=1oFGnPUFoAWjwhqmuq7Afk2zkIxZR1ZtwbwjxElXCM8=;
	h=To:Subject:From:Message-Id:Date; b=c047TnjiXaKt8AVfbS1oVfMu68NgdJgmCVN+Gag4+ifedw/UO2jJaji8YjHFwu6II6hHMOoVmT4n56H63pHe7o03w5UnneJHrqbCoZ8ROFFrXi/VcUQ9u1di5C8hWM+Zv3YX0ZnfExUllFMoG3Vb3GQWDziSjHKiTliF2Now/lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mw2q3RRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mw2q3RRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D7EC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718749162;
	bh=1oFGnPUFoAWjwhqmuq7Afk2zkIxZR1ZtwbwjxElXCM8=;
	h=To:Subject:From:Date:From;
	b=mw2q3RRF7S0DCqAfaCvTyi4TnibJCETOEVvBdp3ExffOrjFQidBB/WD1m0+95dnNs
	 wOiWxnAuuzM1KdllQpP5IUeXB2NmSszulAh0LfT24jA4Z5v+8aYR9aMRobN4oJmZz0
	 OXp48sLW+hU3STn5VcS/eG11jC62v/lYoaOeLO9mAZ+r1QU7tk6Y94tE39hI2rTdE1
	 BFVH++sTU74sWeGiexinKYlYz7RCK6X0h0vqW1T7O/xshgPuZdHFvoC7QUOZDOp1SB
	 YSO6x2WDokaiqnNN/vMaEKEHhbqxhEpianBQXnpwFLPbbzRKsvqu6dM20/49ebSnQF
	 qE6qvuiFiRfmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1514C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874916284.31130.13292168354900526107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de14455c2e44888117778fda5e6a6ee8f382d146f86fdca0432c2137635e9ba
Date: Tue, 18 Jun 2024 22:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718749162
