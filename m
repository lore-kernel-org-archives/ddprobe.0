Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5034C18A6A8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784982634; cv=none; b=pkOYyfWczD2oy2MSvaTD6pIagYLww1zCRpoftmWXVzmsVdZ+bn/rlqvc7old8Xgu3fHmYgZblAWvJVDD+0t/nAovmTQwZFjHW48rlBfumBg+A3bGZUs1cEjJ4jN7Nr5+7EtnJ9GEDtUi7y9Modmrah8GYqIIixO4oyFXs0CcYwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784982634; c=relaxed/simple;
	bh=2fNpE+FU94/Zk+lNRAVnkVzTmoLUjSp6iiLI5oIEXh0=;
	h=To:Subject:From:Message-Id:Date; b=siJHPneHuO42ybFAfIx2hBrg6SEhCJ5sl1TM1jVrVWYiz4G+rgxOM8XzLQMLJYL4aoUDgXbrg94OvfayIqfmcgWUpmOv7Vl/cmeo/q0QUO/p/AhwSPO09CJCQkfns2c5fUkR3ETYOHD/o3LAeLeNVt1WY9SwEr7Wd789xtBhss0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQhEs5bD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQhEs5bD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB6AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784982633;
	bh=2fNpE+FU94/Zk+lNRAVnkVzTmoLUjSp6iiLI5oIEXh0=;
	h=To:Subject:From:Date:From;
	b=tQhEs5bDQaBlQwKGUTZzlVxgpHwkRNSLgiQuTfBQUXq5mRh42/WFlKnWRDKVY8foO
	 zdpKAVTjYbi2wyde6SSeRtvSnLgnQnCTAmSAtev9qQXMEamz1gCuvTDWCIw2A8WKTU
	 zvKvDTNHDLn22PjlGyPUr8DLUOblj54W7QavAbx7VKObr6V6XmECxHx6uMpY7u32ag
	 B86EGMvyEKN/qfC2JXHZxSrd+E1Kvaie9grotjFEcscFNcoRHGV0QQQKLAUXyb0xea
	 nx4jEJOKWZZV8v7JE0/g8GhlghpXuSPipeNfBOEViAAaggGpRNpUgYJVL66oVUSn/n
	 QoaAYBmU3KLvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E22C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498263368.12150.17902497806784168525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d1ba1d36b8c9e537dd05fb6f605c5155b55aee9825aaac29c2c67db05f9c1c
Date: Sat, 25 Jul 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784982633
