Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305E4F9F5
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722705354; cv=none; b=BYX+xTaCmXxDt9ZIln5GsFEkWG+LdtzW7SPN2V5TkKRS//i8+OzpeDtMK4yYP0TFs2uMjoZh/nBlXdgTlrj7+BVDUG/QxXfkh1Y+xFjQwscW6hwkIVEJ4qLqOgkwsUxnyPc9CGQWYAUmgMIyaawsNDV5LTRGm/4L7r9SBeLuMhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722705354; c=relaxed/simple;
	bh=YlKsK1n2Bzp9vBPjohzhe3A674pDuKXJgl6Wp3zsDHM=;
	h=To:Subject:From:Message-Id:Date; b=ZXocHMOMnBnG3xHKKvGJML15eAQEqr3eA2Gdc/tBqahyJ5hlBFaJEACivU5YgoRMdUHCo7rVMupaCcmH0rrLW4P8zfUbZZQAGcryI8ZKiK3iZ9Q51qzxAOPI4l8bhKggwxgXBfaG4wrpBQnOrkkExQtgZCBPrbJSuCtjIBdggg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXrixioS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXrixioS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84DCC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722705353;
	bh=YlKsK1n2Bzp9vBPjohzhe3A674pDuKXJgl6Wp3zsDHM=;
	h=To:Subject:From:Date:From;
	b=mXrixioS9gsHfjRuesHVz4rxw+Yax5qEz16H3KYrVjGzdbT0KdAZpfI14ZVNHXJul
	 NBuJGN7rXm+Jr5shrHSIlr2Xourz+L/SssT+aRrHV2hXVhL04KwNkw4pMV9acQSL99
	 hCCkPnizYkntuNfZWywZG4hvKJbmoaW/DZHFA4JvT2SpmFakID4+P4j9EFoo3Cxgfo
	 ffoTfpDOUPcAF+Bz/8sojF2cYKv0xtZxgm5kVFIqwU0CNWlgKyBiMORZLxcgAcH7r0
	 tVvGFw6buFsgJcs3DyPvXAZdya004aVOTriezfG4zmr9soBakaB+DmURSBYOVZk2Um
	 urm3vxyj6Ah7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93047C49EA1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172270535359.27740.3316735379013639303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aaadcc0c7d364834c8f89e647bd410f5a4a9855735481d91005d830ee020b64
Date: Sat, 03 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722705353
