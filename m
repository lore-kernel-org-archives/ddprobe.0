Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D82A72605
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761539394; cv=none; b=PPUcXG1aN0sMa/EmJEyQ1sTuTzg65i2PRl+THysL11NO2MOLKTsTkKiuX41eKfBK0rV/w52DOBJEcEIOokLSNXbujgquR9UqwdqwzyXI1gW4fOifE/7fIUPbNw2tBOtKS7mSOGlDtJWTURxkdURBez++kx+ztpj0Lkm7jwfJD90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761539394; c=relaxed/simple;
	bh=sK1BVBuR3YzGFaKqTGDs3SXyHB41nqnCoubWu7xt34I=;
	h=To:Subject:From:Message-Id:Date; b=Oh8HwfofZ6tfEwimb6LtWphi/Qvh6fLfhoS5pBNE0kvyx3PGMe4HfIiyEAW07Bi9P2b3RDBtL787hVQBCc2OnJLoh9ihbTRZcVAF3R/yQK5IMjVYjTVQjcD79JMluBK9AODalRgoU73u8kX8rS9WwqeaM3YGRaXV12H7zKSBYcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOYYemwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOYYemwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78AAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761539393;
	bh=sK1BVBuR3YzGFaKqTGDs3SXyHB41nqnCoubWu7xt34I=;
	h=To:Subject:From:Date:From;
	b=JOYYemwXF9W+XAYdZWlvrlNJls4cf5+aQT6UJ6ORzOOM8+lqZsYZohk9/iUBH+1zZ
	 UMbm/vBq7NlDi9bTIxVq2vGiSNlVkP2WYKpSeoIWZrgXpyfqJVC0rudr/rL5iGNc1x
	 DwOGhLnhd4biL2+bLMHkgf6M36XGRR3zJfK0YU+XrBZkHfmBgu1EjpTSPvpfXeZhBt
	 zrxyb+92/O14Mo3Mpdmpxs6JUlAKF1MJcEYH7zwddUvwGGXrlfeOMb6/OgXh3wNbs5
	 hf32fMW4nVCayGna2KNuOM4zrmlsQ+JS+/xjqcqQjoJemD/3JgrBvOsixcqqg37PDg
	 F7sU20cZReOBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ADACCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153939357.26825.7849248584631153310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd07c48185b6b16026c4db31c514bcefbd5b31dd4d4d3152af5a37ba45089359
Date: Mon, 27 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761539393
