Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2DC136E3F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770442434; cv=none; b=EY/mlUBPtAZ09YU4gKm30dBr+aVEUQAF9dTzdE7mTNfAodNd0iW5KOBkSGUKSlSNDNFhtqTnwfWsOtQDsKI30eqzaLe0D9jS9QCgrxsWeew9basbemVvmSjnXcbXPKQ5qBcXH0IIcVymCBFP+lULsK+OWWc4CT5tSTz207FaL1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770442434; c=relaxed/simple;
	bh=C8o8b7wa2XwgDgr7MBbh7z+gsHMW5UtWEsYu7EyfKVE=;
	h=To:Subject:From:Message-Id:Date; b=AdVHZVL82qzZvoclhVPUMsDk48ChK32uStMhxXxyfv0LNl0eDxnzHJiQK4gxPq1DXafjnHr05xtcP1400k87u/JaHcduXaA/kafktNExvVl+YYxnQH1FQsAaSf4TK7y7PpAYXB7thiN8tg2NNOGyWzWf3Xyu58Dx5ZqHNWIChn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFGQa0iG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFGQa0iG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE06AC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770442433;
	bh=C8o8b7wa2XwgDgr7MBbh7z+gsHMW5UtWEsYu7EyfKVE=;
	h=To:Subject:From:Date:From;
	b=rFGQa0iGGsT6bpxR3eJ7R+UgMKzukeLQa/u04hacuNQarrlyd2bLPY5CS8V2DHbQe
	 20fgzL3ux8xSA2/BHsgWQX1zbJq/jB4uM5FXNBGlSp7U57fQ1W2T/o97Zg0tMAuTlJ
	 XLcIb9kcGk+mXuxhZ0DqTvyV3K6Ep/TW1quk+VI5DTXkkWDxEMatRZ22XFVySH++sj
	 4UzCOwIWVh0i6KrS0F3czLHTDCiboK+VjDA93PS8Q5Fp+6Rxq2++7Q4r/sHP0zrBXB
	 8Fr98DPrlKSHgT2TVP4iFEEEblrVEteggTWgHawF2OXyu/4pLX3DYsb/UjVUupPeUi
	 zb+rAJCo8dT0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3FAEE6B76
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044243358.22929.9960248775482444564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27f16d2e7476d2bf557b341e468a19e8d069fce489882fc41064ca4e9960c06
Date: Sat, 07 Feb 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770442433
