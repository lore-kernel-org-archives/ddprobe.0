Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EC122339
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737944154; cv=none; b=koGhYnYtFXPkzTviTKalD5hwhpWbJMt35b0+d7nntNv9gIcwYpiR7JQuQmRnkFknTFlG6LloHkhXM5NXTigzFHHG1j2omdt36WjiAtY4dP7znQGSQh7YEN+8pDBe0Pp1zaRakfXEYoR5XqrWf7uzgl7lBCIxH6m0Dyktl4BbTo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737944154; c=relaxed/simple;
	bh=EzoxJ/Sm2adT44BtPlkvK90sLUZy1jBKBfxo4OfAuEs=;
	h=To:Subject:From:Message-Id:Date; b=JNmDgfhqJkcTtABrQkRgljBMusGnwnRj4K/jlxFYHLxmWfxs5FyKWXMbNDb8o6pcbQyzV7ZE9CL/bRbLAKR4GSe5RtSCp77+SjdsJJRsYm6vCNIVREDVyXDMRV9Zc8Gefyy9DbgsEF/XGhd7uFvWvFX2bUtODRcoAcUggOS5Akg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZ9u92/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZ9u92/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5850C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737944153;
	bh=EzoxJ/Sm2adT44BtPlkvK90sLUZy1jBKBfxo4OfAuEs=;
	h=To:Subject:From:Date:From;
	b=fZ9u92/kgs05ZvKCQcqt49PM6lZ4OXrEKdQl5zQkh4ryRt9uQFr5BwculwrrgcNIm
	 j6QS+HqUfy74LoFlq2V9xTkr+y8sDqnKDjPBkX9WaiGuhArSlMweqWZJQuU1T7X+1K
	 EkCG09MZ3XZfC53jqY6855oT0VKEKrkVkRZn5DAP01srTrsyGd5shdE7GVlaDcB/FS
	 OGo5KvotjoWWY2/xiNRJdqpsOFkbkUjFTdYrL8uzkrwtNFDqND9GhPGhe6hlGdPvuj
	 D3wRBYLFI/aeKp1IgmHckqZzQE7mTTzsN3DSRFXGlK80JoyMgrJSP58f6QC2WNpLkT
	 PUNa6iH24QHBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9367CC0218D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173794415357.20485.12021039799699886008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3d71ef39db69d54e340c65078bbf7235f0024a54ea6ede7127d69452185bb1
Date: Mon, 27 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737944153
