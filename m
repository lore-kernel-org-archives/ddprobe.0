Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C509390219
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778647834; cv=none; b=qqTy1rqw1mgDEWxWTTbupnXJa/cNM84zuT9WclWVFhDY2W9djSy9SAdT7GKA9OSkU5snQGYF08Z/i6oZySo5/YxMLTs9GX80exCbrEM4F7PuZieM7ySlhFqpkVqjqYfhuXWFHNrsh0agweCzykURlX0bMFGN9VnbUoU2+P8iRqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778647834; c=relaxed/simple;
	bh=8hkpM/eX3OOhMThFe1Af9jrc7G/kKn4sY0MkqhW9meU=;
	h=To:Subject:From:Message-Id:Date; b=biEGAEiPjqRYS4HbGbNSb0MU2vhnrWDKloOmnbsV+JO5wuHkdxWDYwNDGyvRggZx32kkEasHYHNDsYiUB10i1aJeA78PNieup5PfzARYhWIrBwKeWPvIgCeLsspPuggcH5XOtdigzxbYUK12fQA5GJtnQlntByvaF1A9wqLnImg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qvrwr82y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qvrwr82y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9457C2BCFC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778647833;
	bh=8hkpM/eX3OOhMThFe1Af9jrc7G/kKn4sY0MkqhW9meU=;
	h=To:Subject:From:Date:From;
	b=Qvrwr82ykzfm+k8Mql1GKvSIqjqyRWtFutV4r4RS37a1TetpggyQfQ83LRGN+iATv
	 W4RfFNkAk4O1RuZ6CGxarWnTrwj9UphyrfAZttEYJcBm//6tW4na3ZqaK9DAetxrp/
	 aqe49YUyNPubsmgfwybINvBgBt0rBVVynBZRKIzLtaUlYIh4DZD1m8plfT4Ol/sRG6
	 OlUqPFhnPJLbKCIc61dZ7BJjsi2kvEXLQf2EFpU1woI4+wz5mvCH/SM3lsHOpYQJhQ
	 OM2RAxK7ACdcnqyXByhdsQO0YNX3M4tjjdjHtFoWV3xi7k5gsub0+2aMZNL0psC31Y
	 o/Tw5OchKX/9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3231CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864783369.4028.12115522641733243464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2487bc0ab72f4dd0031cbaae73a004ac72a3e0abb2546c77bcbb6b287e490374
Date: Wed, 13 May 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778647833
