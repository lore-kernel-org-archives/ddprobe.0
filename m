Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8C8419FB0
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789460446; cv=none; b=pkMcb7IfSkUvRP2evT5CekmcuoPJjqFyP3nIdEqt0uqhlAMB1+Xygh73v0tv/rR9NSVCvcUSHaxDIPIppTywB6tiGpqE+y+G8n31Af/eF9fBPhXlGoRJvmYIstV7IyM8OzWOsunulhp77V1g6yIDD3gCvwSyEraRZSD2DczQAVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789460446; c=relaxed/simple;
	bh=GPAVhD3EsX0Qyqa1iuZgIj6zLfn9+GY/oysM8r1oxoo=;
	h=To:Subject:From:Message-Id:Date; b=rDM8CphP5gZCppBEI21hEuhSZLFPIdtMsTL5rriQ5iFi7O0DkN2t9vvBEwRvqS11bN2gklUgRY0r7Msjtpi/62W5Y9wkJ3/sFQGzrnBCcz3a/SP8YTS2Bq1SgDgSNDej0qrt1AmnnyMODO0enmmcdkhd5L+zLnhrv3dI1QhOyOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJUPbhfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJUPbhfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDC3C2BD01
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789460433;
	bh=GPAVhD3EsX0Qyqa1iuZgIj6zLfn9+GY/oysM8r1oxoo=;
	h=To:Subject:From:Date:From;
	b=VJUPbhfPvD4dbinAFrd855iygWovDvWSkpVXIzZvaanTcBjE+e0vcNxobYNO0MVdZ
	 hY011c43nyDzALYyU9qay8Gi7ic9eECdecGJsZtBfKUxlS5134gZNejMtB98+g7FSg
	 PD8C8FL8Jn+wv9vL+5aihEbNczObsHKEUKPbfzdEl3FrSlXMQZWRZXRGyuSGePt/Hz
	 a9HXiVSHg9lWy87yMYinHoVFM4wMdhC6fl4M8RUygsU5TJC9v1GlvT7ZQUPYPPmW7D
	 yxhTSNxLE8dR31RbSeeidtBi1REWascFg4Ti9PwNtxBvaSf9HCwSUZ65tYTwNh/aok
	 q6wzSYsL3sCXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD076C88E73
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946043368.12230.1737017020714021604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555ee2f816003cfa6f9588fa7c8ef8e059fc3f861505ceaf4c14668bd367e2d0
Date: Tue, 15 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789460433
