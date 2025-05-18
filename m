Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5318C1E
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747535394; cv=none; b=UObIZuPgU4IrscqsMwTI4gKls98IHYNdy5yxdLt8m8+piG8Ut4ngx7YfRz0XX5z3kLOdi3vfn89TQN5RMTtlTZz4CoJH+xvx5aGAWDh88kyf23EiY2j04YUlAH7Y/tsg0c/iZZ0CPk1APdrt2ye+zVUR4BxsFuH958fcPTfeLiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747535394; c=relaxed/simple;
	bh=Yp7zvkx5c1oZlZKXTn7uIFkKxlM7/0S6+KMex09pgXY=;
	h=To:Subject:From:Message-Id:Date; b=Z4Oqo0TaM8nl8xIDTm6IMDyZqEmKqoHBgmBsf5hs2qIEYbYkHVvNk9bl+ndmxRIWBj8jw6Y/2kfXpFAmmgXTU2vJoLuCfty6b0RYSfpdrgZ9K6Y7okuQ/AurxIXJ7sa3oWvdmaD/AtaM935vkXgE/jNA6u65teZmenQTSUtA8bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bt+Q+45r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bt+Q+45r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7211C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747535393;
	bh=Yp7zvkx5c1oZlZKXTn7uIFkKxlM7/0S6+KMex09pgXY=;
	h=To:Subject:From:Date:From;
	b=bt+Q+45rH2bDAgmuPS58kkTrDJXbx11YXcDQUaSn9FO8u4yDRYUZS8XfKtwrPirXv
	 tjvEk9kgGMtz5fm63o3GEKW7/I5pkP9tf8yT5aXJiLquu1DbTHSGyrpkr62o6PzqOX
	 dtSGE6xb4TL/LKkPOhEiOz9EHEPTN1paF6crSzCCIHKb43i6Y2oUJaeqZZxl6FeXaD
	 /dp1qSQnCbTzljHltvTPkIEhs+jd1wgLKqTUeonqFHIBjGW8W4jupLiPKgVZCZdTY+
	 0PCr40KgfjmQ0g3S82GJARhK7B9W5zl4Kvwd/wgY30OFIXMGjXZbenRzufomzYnQyn
	 bemwjx5UwAV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9074DC2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753539357.18916.10997226113639711069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321b4a0d1dabe5f5504e280d58ddcb737de17528bbca64602dbd33b5586d0b02
Date: Sun, 18 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747535393
