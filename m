Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E942571D7
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783225114; cv=none; b=EnajSBbuYpIlFdKmHp2vQ9a60UWTRWDKZ1lIZMlmxFVbZ2EZFPT52/1Hs/ldGcFXsp4dbCVAUVAXO/ORvmmWNUlP2kaq0jQRj3QjcV/dmB81CmSn4LgLGN496gh6WW6MDm5GWNzTJjRjyW9xajsvsZsBrj5MUpLhPMUQB9UZ27Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783225114; c=relaxed/simple;
	bh=cmLRbDlXnXJkTT/AVXfndSgFtRc2JkKCeiwWWTsUpjw=;
	h=To:Subject:From:Message-Id:Date; b=Xbw0oyf/gOQgKMQzOD4onzWFtHJpdL5y/F/np+iHR0YSkduN/vgqk7QmtLREeuIzU+TQmG6wCWgl4VeFTNrE/P6I8Fa5/ystcYVFlFXjiAnpb671Knce45SZAnatMc0aoybMn8FmM8aONW8tK0SlHHdfdYpSzRZfDnoosAyO2ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5weXcdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5weXcdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB2CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783225113;
	bh=cmLRbDlXnXJkTT/AVXfndSgFtRc2JkKCeiwWWTsUpjw=;
	h=To:Subject:From:Date:From;
	b=h5weXcdjztKJofibA5WuEsRGANw9TdHWR8EltgVFN5mTMNHMlheVHYHIpZ72E/1m3
	 /HrpvvXwr7tLL7ajt2ft0BIzxaDxenLqiCt/sxLNdWK+53OHcyHmZlNSFNyk5Qn7GQ
	 GumsI8b/wR2nG+Dd0GD8lVBMcmlPH93JGRmmJ7+/GhF9/bNPxbdDWTBrF7nrY5UIPZ
	 vi8xkZEV471YQ0Tzru/Nn2jRfVtSA0FeXmk6UPTo2j9L8CHGuDpC/IgtFkpl4RTHN8
	 rNZBqOhdGMPjqX1oVZmnLfK+sMWNyy5tXDXN+t9Fu3hzEM/90LuxeBWlHBHt0ZRbrH
	 EDWp34PnfgnTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13EDC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322511368.19768.10536693616426452590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4bfd3a935d65acdc4c51d2288ac66c752c3e5720240d4223194b17fe384951
Date: Sun, 05 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783225113
