Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118351C861D
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792203034; cv=none; b=Uyrj5ySc6zq5/ipwZY2H708/0D/yFps9TqhSfWfmJXdCXAdk/dJ32HJdYLmtYknFjHQt3zLuzP3oEAAW4jor5lbyc+BUBU1qjgLC0XixHNOPU6Y/P7D/6XQppf8eQoCqHjZwIAD5By63ANxV9yLYdweUrEXQctUuXeyWnluOjYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792203034; c=relaxed/simple;
	bh=AgZBa2aWhbYXhEckpCS/SvwiNI+sAYavv9NF/5SUMYg=;
	h=To:Subject:From:Message-Id:Date; b=FXrA2b32rF6fN1dczG2BrGP+CbqhEkhKHWOQ01+Bb29ZTeocbuNj7nFSc9NYArD/9XAdZhV9o4cv2e/LERpTHWVPh+4Oq0VhrymgAefimJ/9MlsDGncYNcyZgBf4gFc9dm3c6cCW2jZzRTwl+++jsIVcnUkgcm4GDS3hwXDIEXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbFwkvqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbFwkvqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EFBC2BCFB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792203033;
	bh=AgZBa2aWhbYXhEckpCS/SvwiNI+sAYavv9NF/5SUMYg=;
	h=To:Subject:From:Date:From;
	b=qbFwkvquKLsyU1H4lz5llHKqByzF5c15t+NOprnb/RYZ3B0I79akGSjlyfZ8fdtcU
	 k8M1o0YH9x+CcUcHqYoWk989xr4vmjfNAO76Q9dVp5UiZXBHyatRtdM8He4hqnxtTP
	 4Rg9OuNga8RcNqJ7+EaeNFmx0kywdd6JiScEx6KoPzGUw2g6t6KDzEkP+hZMvKPUQO
	 MRwHvFUTeSA2Gpy1hhzYb5j9A8KJNOWRWaVuRPDyKIr6SMe8t1fAuv9EU7y/JiqtLj
	 XOPkqMEWIB+EXHXoiFlFJiDa2CKLhXBrIC4R7LWJ2XtuMlm4gsPNDtlbSYUO9qY0Ya
	 8hP149qHIrktg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEAACCA490
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220303370.19475.15208270697998579821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54800170e0a5fbe08683ec0ac5e30d9c13e2dc64d5530e4f867949b4a1b31b1
Date: Sat, 17 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792203033
