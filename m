Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4E12253A1
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787270434; cv=none; b=kJENZeEDOZFucDVx9aCgk7XDzv1V5tfhKMTWI6+JKtmg6ydz7/+0K+vasd2y7kFHiuUEIK9T3QkSdBbdCBhBWPKJ6m/RrOTqCW16NXp+iZXsYAw3VItZC/dLtCyj1US4vnrYcqIYnPyngEAhxhSmIxiSJpgulV7hiQSMM2T2IAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787270434; c=relaxed/simple;
	bh=jeo7LHGWf6afJzGBMdJAY8A+2oOp3k44kMETYaAAnBU=;
	h=To:Subject:From:Message-Id:Date; b=TVYRrI8X9o0EYKw6SqCChGJ1b92K5P/dx4pUBMjapVko8zdupdcV6fb4jsl40IowuEO8im7JN03/p0gxL/BKPyehdNI+4/DKqhBMSp7eI8TgWaG1XFrtmCxrc+Xq23rE0YGBdyMHzNZM2QW9tVFxih0pGAHWFEKjqiscLFmYOAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPx0AniG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPx0AniG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC04BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787270434;
	bh=jeo7LHGWf6afJzGBMdJAY8A+2oOp3k44kMETYaAAnBU=;
	h=To:Subject:From:Date:From;
	b=oPx0AniGrbCj7WWpjxvCW4noG6b2T7hH2+A4qPiN6pKLTHS04g0dOj2oB3eiVJmBV
	 UKA2DESjtgLqurnZuSuFMFa4zc4iE8X4BJNF46hjQJmDnQPvSGqj7aHqPZaZSHzlB1
	 04NV2V297BtErnTDelB0CnWAyZiPS8TdoIZe8yWXFDMvsUQ4GvnOGDHvrM8PbP6Xy3
	 Nlgwx88ImuHEfz8/1YPZHeZkUgYvpVTuQmELzAoDwfEMO1xhx6L3bfYoph2qzekNDT
	 7ZKghjzB90WqVKC5WSmiu+BrYNNAGx6UHY1JdDPAfv9cmpV+VtQYo7DAOqHwGsczwY
	 WNddFO87REYjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF127C5DF81
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727043373.19475.212750412864179812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d94961e8e4bc90ca9a10dd34699f432abd59dac80a121d06418e6cabdf081e
Date: Fri, 21 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787270433
