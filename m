Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B17748CFC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753466994; cv=none; b=aUra/0kx4MO00rNnYPPUG8A1b7wOpHLbsE05rsQjP+4DyJi6KO6E78gusG3xCVC22bv4uueu9OZriMXKWurfp7fT0yx5eS32kTTRNxOMWVjjp8x4B6gbVEbbsWjIfUpk7mH1JVb1+JME4P0NdbhhMp4yaNsLP7fshPacTbQGoVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753466994; c=relaxed/simple;
	bh=veQDnoGAu1nH3x86AMHF0U/oiISFE8eKu6AvvsYs8gE=;
	h=To:Subject:From:Message-Id:Date; b=OQxPqkKHhWqnWA7OuM1LD0Gc4gj+WaUbY1uRg8ehA9yP7SFdBB+Mn56W4V4y5TsjpoFX2jRdB/gbgGpxvssMPDAhJcREIl/LxsT1OmHpmqwymlUsKadvMjYF/rBCdvFuS/atWZOW/6an8dOBKqwG+VQ/u9niaug7xGwqD6YjBnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbmYIHcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbmYIHcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A397EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753466993;
	bh=veQDnoGAu1nH3x86AMHF0U/oiISFE8eKu6AvvsYs8gE=;
	h=To:Subject:From:Date:From;
	b=GbmYIHcCVMQuZuFP09wA+VMliJF2xUbC8c+pwaF5R+0eNGPBTy2/gDLjbxzoeFbtZ
	 G7wjwUewUxVSE1zFfapbJ8+ekFpHG8yIY/ULiYZMu9APXGQY6uTYE0rZ9uobanfe3S
	 GR0EdJG2f0d0i9A+C6s4Ji5xaqtTubR5zicrkWR6g9qjMfMCW1wiG3/sTPYsILy76v
	 peL17DTxoKDA08rEMmyVWYGVs10zG9sZHTdwCieK6HXinu5Ahu27ZA+cN0qsn92ibY
	 GQceWznuwrUYkd5ffj4sta9p5+aobC3AstWr9ll1yEKvb/A8/gbY0EQW3hXL3RVTTQ
	 hQG4BmTX0f/5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942A2C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346699359.19083.16272868778806355318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5bd10627bcb5649e275eeea17d16de2e2852c119b4ef56148100db18f32e62c
Date: Fri, 25 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753466993
