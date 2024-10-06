Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E23188CB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728230153; cv=none; b=k1wlqjBsUn2L7Qt6/v062Z3xJVmET9q8d6fYlxiuVxIT6/+5zbkFHuhOB+49l0KdyItqRflQdBthd5gx2K2V36zLdUqqia+Y9/Tz+XKv6jQWvA1UGVjTqwVBblGKFQrN0sVeBgxnfntuDUPk/v8oMgF7MkCNX/N3HMJ177MJZqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728230153; c=relaxed/simple;
	bh=95yDVLO8/SdCk3lx/DcJVtYBTdUh5EQUMlTy3+0fRww=;
	h=To:Subject:From:Message-Id:Date; b=IF19Hblt/HDorTJHNA2tyHAMZegddO/3hTKz8Sbq80zSP0c9Gq4LelcKR/5roOUBe13qb84hj7dc3paYH1s+K9QF+gcBOdYz1QZ5tnWkejOgliDOVUxMhroP7FbZ+uB9SPNyWHuImPEU66cMtGUkTbpBlk1AvPaNDfN5FIOEEgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFCGXe5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFCGXe5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B553AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728230153;
	bh=95yDVLO8/SdCk3lx/DcJVtYBTdUh5EQUMlTy3+0fRww=;
	h=To:Subject:From:Date:From;
	b=HFCGXe5XpwDmss6ZovNamSUJqD+evLMYuWnIJLPLVjCyeOOrX9sJaXAZMsxLIKVHG
	 Bp0dwuKBZcwSLhxMPTYk7QYs1EIv3Bzy/kA72G1FkiVk11jWG0/btUqePV56tIjGYc
	 Wnpqyeoumgucd0UJLreSiI8g/0IN0vhFvQZWaEfI070dIQ+2ZzrsThvbcXpJwRwwmf
	 /UYJGelju0L7YoD5354ErhsI1qKImdI091rNYKvpOi4L8/L6GXVwZ3rp/E53YnHzeS
	 +s1SR/hXH13VxAapDNg6L9kMX4rggIurC8D9QHDwzw0F3vPbNzQlaQzQoIX9DxMm+M
	 m9j9uLhU+C3Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C78DCFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823015360.8055.6418637810566783805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2617752ec3b8e5d29b807c1cc3a7d2c5bff2a6d8ead3b712872fa4163b77686e
Date: Sun, 06 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728230153
