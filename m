Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BCB238150
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766931234; cv=none; b=XiNEAyv8EtnPWp/qNMXZy7o2CS6Wcu6DP5aPW0NE8phbAuFXhO1NQqJSsqPCOl+318Oqd3vr2YSDKWOgXm5Gfuk5doJb1kgzRvZe5GRZ5FX8F6QoR9B7FP484hCZtp7nsXzD6y8s1Z8BFD2/vXF4etu4XGKPiHq9xnNCDDv17CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766931234; c=relaxed/simple;
	bh=vF4sOGrPAoLFzUbLtuzrPolNXmpdTD/knA56Ldqewvs=;
	h=To:Subject:From:Message-Id:Date; b=r8eYDpw4ZiNheH+NLBFba7+0zBi7vjwxF81unLEes95kqBGhgFPIZWuPLfgRiwtCgK9mQk96Oxq8aFoI2o/CG9oY9y+hBTr6JvG6hzU+O5phhP0kxO0xy83wFwicavjWaqM9dMwe/cYdRtIO/tb345nAD9QlgxyiOsLpMJTym2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJW71X+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJW71X+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF37C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766931233;
	bh=vF4sOGrPAoLFzUbLtuzrPolNXmpdTD/knA56Ldqewvs=;
	h=To:Subject:From:Date:From;
	b=uJW71X+z5BrPF95SOaPmkJCDogW5Z/7HNndrMYRjT78rMKRHwlsnVs0O9HdXe+u/k
	 /7GSbZJGk4W6wb5yV15SjgdpoFdIqgxasu3DOEaE3WXtMFcMw8NF03e0iVhLDCc0Cv
	 lZa30h/5QDRWqmfuP+VIPICrFBda/D/cnam3Oc9gz2qyyfEAE8uHZb8myZEAxyfcRe
	 8cDYu59zzzYIoVdSlnvcB0jbV6+CVO+ykO1pRe+V/5SxafAtWApL1YhTSx1+zolnuy
	 XN2rmeMD/6P7tDWxAZTYn/qhyaGC1o1YwKLuEJSW0gUCOfs0qTjo7DT/vIXfS3x8sZ
	 r0R5WLW+7uUUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ACFD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693123360.2934.14849747156938976023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fe2cfddaeb7fdd1e6b51204591a7e68d8a7a8e7b11b1ad13c23751f6d5bd15
Date: Sun, 28 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766931233
