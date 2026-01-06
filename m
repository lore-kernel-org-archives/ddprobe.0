Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B5F22CBE6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767733434; cv=none; b=Zsko93iy93b3bUPfyf0rG9ubGYoPVDTE0rAMEO4AWk97kY+fmJBvvHGW+Ku1VEFO5pMC6+bjHPwzB/Y3WSwZQRW43wSoawZXaroXfSdsMdkZi9UfVO6N+jsX1RB0vRFsF77P7HqlVgoaG4fGfR2U6zTR5F3vudXzCVyfREqtBrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767733434; c=relaxed/simple;
	bh=n31ewuELbyasX7EElAWvserX5nIRgNffVDzolTvbTSQ=;
	h=To:Subject:From:Message-Id:Date; b=ctpGrm0Tf1b2jj/QtvWpe6rJXI2aUaU7dM4GlKh86trgchPbqMdMsdVmjIJpWK4wakSZWBruwSK+gzcL0qKLknXnYMWvfWtapjTfxBhzXmXlwuHNo5rIkD7AIjne2D0OPk1e5njodyYew6asoaPkmn9pWPBbHO+GrZ2AVyTHksM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/SFAYX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/SFAYX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D05C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767733433;
	bh=n31ewuELbyasX7EElAWvserX5nIRgNffVDzolTvbTSQ=;
	h=To:Subject:From:Date:From;
	b=j/SFAYX1JXLZwBD5qzwYcyr1Za3k+rIwq5azN1+EiiqjKbn3wfMGK1je0o5Uog8Fz
	 TmX+0RXKPxBFn0DEe7uroLNlZ8meehYTQhSNuJXoO8X5vKWpq+lFzJZEaa30uwdoFA
	 5IE+9G/YqHPSpW/+9QdEs4InVhWKwfY1p5vrAbNG/JJGKDfqob53plTUR9v1HUd4UM
	 NbIb3oSngjtregymNDzKwuZhqNl7nCPvMrSZdPj/KxjXegXcSneQnIJ5STd0U1Zupz
	 YJGKgmblmv//KpV4K+25pGQ9Fl8yh/2q/VGkN/SkA7URPOodd3pwTDfNF2H3C31tZc
	 s3oX+rA7BiTwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933D1CEFD10
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773343358.21519.14184610064480709788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba669ff8696d152fcf4ae31d9442d587ea3ea249e59ef8b27114bf5e36731ef0
Date: Tue, 06 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767733433
