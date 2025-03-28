Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280721DE4EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743204594; cv=none; b=cCcX1usuHzZLUDpnnSlOpvsgMQ7qJrwVbj1Bfru5geTeWiWHW8ZZasvwtrAes9rcXvDkHcEtLYlOzBAtIuix8z3Gsy/oyNnMiIJuVG5Mi5pitY4Aa/Fmj+kg8zBeuoeq1/14UGni0buBut54WMDksWb77A7QqRO3n6dGLFLaNjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743204594; c=relaxed/simple;
	bh=Aq3hCPA6AIA1NbEED29o37itpA2Ce9gAdRynSz9JLyM=;
	h=To:Subject:From:Message-Id:Date; b=TCcc+R0yEh9/w72hQyKMtEarxR5YRRHlo0vGNJ+WFtCC0fTicxv+/ZyZbl2tQRd+xuyOLlYNg6nROc81dLaplwkiAxxQf5UX3Lfqs8K6AkawAEoDIyqicQUcFnT7nDW7/3nOACm8vOsgd7v2cjilaD46r3p8+KIYeAXoMJ1tQss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKQ+eKgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKQ+eKgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E79C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743204593;
	bh=Aq3hCPA6AIA1NbEED29o37itpA2Ce9gAdRynSz9JLyM=;
	h=To:Subject:From:Date:From;
	b=TKQ+eKgxV9fXClg6EZWGvK1TIGnVer7gAHufOCepf0xMMdENw1NZID4kNwwmrMqzn
	 4MBvt0/zeBqtanFAWH5WXT6GCVk3as+pVRWLeJlqZSbvQgSa0D1bgWLBI52qEYSJkZ
	 bour5NvP8F2LiMg3tMBpZoBZxGGC6GY8MNIMVZhhN4W4qQ1tlriuSfehZC3GlKG+Wk
	 m24tLkEiQ53py1hU/dyrnoWGOyK8HAXqvpaSb4YlCFv152uEEq6Q2dAxg/hy73qcAj
	 G81MVB1JqODSDMOQhGLnrtOtVwyZSbGBK83rSAN9g0dlGrjNwRb+VPbzbs4/LPGDMJ
	 WxXaTmIdgxnLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CEDC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320459358.31210.9449969637024182505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ee962bf3826d243efee6b06f03444e248caa319436745d83b5ad0a6199a10d
Date: Fri, 28 Mar 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743204593
