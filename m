Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E8B4908C5
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784845234; cv=none; b=KJNPgNPqE4HNFpzk7WiGqU2UyqwT0RmWVFp1/AOKqZJaIre6+uBkn7tIhAHXN9qeVT6sOD3yE+C6BQ5gTku8Tfj4z8zofr9a8Db60lHSuM5VXsOchDQuksXgI40QOT1czUKwA5SX3Z19N0tpBuYD2VV3Br1mTDSmVN1lQjexZK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784845234; c=relaxed/simple;
	bh=TMfyTRZLHka5AyRiRW5AnPrkwQXd9itjtlZuvTOpMyk=;
	h=To:Subject:From:Message-Id:Date; b=Q3IPKJ5/GM0V0F3sRdJy8p3WTVTCD4xPXcAoK8eIRw6UXebINMrhAuKMbQaiGMLJxRZCFyt3LPqw8iOnfIbZlt2SKNO9KGyyqg3vwSbevPzDs/mRKUEr7zLIQ6fDeUtA6sthOA38zq5DSRO42THvjKHujw5OY8WbgAkvt091ozQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frY5SDof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frY5SDof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE601C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784845233;
	bh=TMfyTRZLHka5AyRiRW5AnPrkwQXd9itjtlZuvTOpMyk=;
	h=To:Subject:From:Date:From;
	b=frY5SDofmK7IcKphEBTETTB0WQwx96tvuiVKX2szsQ3KCZLFEORlVcWWOVa1U3ofc
	 QQC7SAgYMqxXYpgWbbl0nJwRpobLz9AVill2moYwYNkUSYBGOJxdhdYizjAAbrWQrC
	 YG7LKkseMZWK+xxwgAJxrANuPeYxlwhK2M6ko0d1w5msqGxwJQCwM7CNhG3AaC7xR+
	 tqNEsbRqZh0f1uQBkWuG56X0PZrCadZnwR3wC/qDwLT2JaG3JbVSbIJ34t0MsY0uqf
	 Wv0SbSAGcS0mnBk5SDK8LJaB71kv2j6PVpqQBuUtaJxPTDGqfMuyVd8cdSTIFwru04
	 fmnXUrQp9lCYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A8BC531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484523368.3277.6237065899460448436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88979179f0b5990a19774f496e33fae6660e3cb152410777062521ff0cb89eed
Date: Thu, 23 Jul 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784845233
