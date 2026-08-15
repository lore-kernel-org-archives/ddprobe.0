Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21CC156F45
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786770634; cv=none; b=ZzeNMkQIEn2mEqCJAMfJ+/bLdRtP2XlHS83JpHuWjbuhsWsq8W7dyUEE2tj7y+rSy0OkChVThvFzeAHOHJ969fEOgRPgktgVWeksgzbfQMgpb+pnU8+Bsp/0WuHC549w5hKJVY0kd4yB6j3hbv0s9eg/yO7FjBOHStdaW3QRiLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786770634; c=relaxed/simple;
	bh=WA9CeRcJkwz5QATH8TdZO15BdHgDZTcmEqUYj0zMMd8=;
	h=To:Subject:From:Message-Id:Date; b=dXhXjSpjl9S4mGUx4bNlPr7s9v02CD9OoXawb44NxjmITjgBUY4/x9Qi0ixHzz3oOfLZw26v7iUB9spDQBXyvdWt1fOlKrByPfe91p5n4VTveIP9refB6NoUeQlECuO9I/xGfJsKn6hXtsazBL3zFVognwwFwRC2KAN8QtYycP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVWbotE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVWbotE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FFBC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786770633;
	bh=WA9CeRcJkwz5QATH8TdZO15BdHgDZTcmEqUYj0zMMd8=;
	h=To:Subject:From:Date:From;
	b=rVWbotE3RQe286HEztpfiD9ycWEnSHKdXaesBdsr65/eToz50Tbz0w+WOM+bUPva7
	 rtw/h07bQSe88sjnLHVdAGB3pffvthkFmMCMKK/Mh6dntDNqS//EDEnSCQ/Fp6/Cmg
	 mPxDoc/Xgv1Se95fr/qTWKMAabV7BI8c3OFz94pAFM8TtLaafShx8Bl/d4Bmnp8aFR
	 yP7VXIuNstOPYpxPPeggwSdjIjysZIEve81uUOhpw7z7qDdnw3VkgkaQqXtrUYZGLG
	 YkSKagGaOO9jD8o3j9bn2PyOHtyDfSxwyPtxom98hI/dkMLyDJc02eSJ9uw4sExjpz
	 YTcAR73MU4ufg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD8AC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677063371.7693.1270698258465774284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b783650766c17bdb3af8a48489635d9c83a0dc71509578b16cbb816ba981cb
Date: Sat, 15 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786770633
