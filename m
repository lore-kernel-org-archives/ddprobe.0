Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C7924467A
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756543794; cv=none; b=KzjCfcxgA3oSJaCFHTI2bCf3M8m+7eoSVqza6P84wYClOsISORLOeLTgZOPgMz6/CY4E6fbI244EP4fI5tgGS0WLAN8mVLlzO43PRDOiJmU3Fk8hza9TfjRXhzv5jVPeKpbpbWNxz0JpZSMeqTtC5U1ZpEm9cjCU5wrXn3/o2Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756543794; c=relaxed/simple;
	bh=d26Bp5zMQTT4L5vrj5dTFQ4gldKxDU7G/V64hJQlG58=;
	h=To:Subject:From:Message-Id:Date; b=nJWonwKlY8dV4cEHZRlkOPOymFfBKT++VN8FUhDtuRCB00kjk6yHN1XYVqlA3fA9olTccDAaBP547RwhKpXU9njIiplu27nOtcpAIv5N2Ie7jQsmG1IoR7plLf6F/5sS2ArNUg4g9YCmIhn2cK2Ysh2NR8ehwLssawB54lAhy1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlwyxLgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlwyxLgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EF0C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756543793;
	bh=d26Bp5zMQTT4L5vrj5dTFQ4gldKxDU7G/V64hJQlG58=;
	h=To:Subject:From:Date:From;
	b=KlwyxLgNeiX38T5RqdbM29JcNm/ayO1jkb3L87dPQ12mBmfLoCJcyD55uBLN9ToFJ
	 MWA+JqNEKivRlHhX/sroAKNt2+an+dBAiYMfdYidCoQoY6IdUqVW1rEZsApqN4bVlc
	 PA1wk92oVBDbLEJJEAqWyX3KDk/d4QpgUl20j7S0lVey5kSnd5XG8B5x3C58Ng9ZjC
	 nslEryXHMBgudJZpeUHM57m0RTBcp36rnUJbE0/Q7Vlc4GRkz4cJj9WdAcFMglSW9+
	 W1c8MRlFYy5zqeW+cxU2zea0uxxo2lWv4YeX9o3oEHIdeEWwHeeA4U8DHFBafPvMBK
	 NKWsIP/2MZvFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAE8CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654379357.11764.8419679314032042497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f02c4164bae7acdf5ea9d4e12073a7077250249f9cf0f9df6e1f9673b91521
Date: Sat, 30 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756543793
