Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B092D3EC7
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779565354; cv=none; b=AkJqIaYOgO67KvI6VG5g3A9oaQHzdlemWq3dTw2lwTRJdZMoYAHtrgVKo/iGkKOX3tJG5D77fv945DkCpusAzdTkpFKqrlq5YfD+NE5PGnydY+OysLUBT5gP36OI5Y8vJR7DDPchm5D2/OjsXWqNf05JgWYx2paYea8gn8Ck8M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779565354; c=relaxed/simple;
	bh=AvDAhVQ813MyWCJKr4t1tH/wGkQ2NT1ysx/cLUiOOEA=;
	h=To:Subject:From:Message-Id:Date; b=pi4K2iLc/BofRwYSr1W0dxpRLC1/xaNcZMPVi24a1LgwvK17Zwjb9HUDc9oYmjteZ092813ViAe+xSG8v8uvoXcney2SxbERYIks965iAVh9JoVmrvEenqoD+DyZehflN516cxtOr9vE4JXcXlzHHbANthYWbOAFv7b5K3K04VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ityOZFuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ityOZFuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF425C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779565353;
	bh=AvDAhVQ813MyWCJKr4t1tH/wGkQ2NT1ysx/cLUiOOEA=;
	h=To:Subject:From:Date:From;
	b=ityOZFuDsTo5La7P/WbPB7WiGblL8xsA7oxc6nYa4YVQJDNwHLBTyNpJ2HD2Xd15R
	 tyteth9mjHBbIhPBcLh3KXrbO/up6lWJZ1/N1ewnCgwZK/6RQXsdYVZQMuG5DgpXjT
	 /g9niyImuBl/r9apAjykdVKH6mo+oE052g63/Dkn7Cyf7Z+qZUqcw6HseXUAKCN2R3
	 lbQ3+Z/mAwy1XeXCQPy8zVtNfWP0nHc2Yg3Ng+HlRysdLfEfJpEuD0HfdzB+1chnHe
	 Szgj9iplR+gpSk1DO5xV/hJCtKUVN64r0Fnd7WqczB6ivs1wcYmAobyUJxuMUG1DOs
	 nR8J74wa+SwlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C83CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956535368.8697.9856491905274944343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614e4370b871a808fd75583ecefe992a2c57e5a17c7748cdc794fda84204d5f3
Date: Sat, 23 May 2026 19:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779565353
