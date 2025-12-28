Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2503228135D
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766906034; cv=none; b=JvcdBGdJWrmPrPTezIK1ioImNUAzGj0/Va1DyNKg1C3r1Qb8CTJ3+KDTGaX62JbZdfos5Hel7fltt1olsNcDQoTcka+YQ/9mjwGl7nuEPDcSxfE1OIdWrffH7CVDtOhzYk9Ms7oWXY9WnNLifYkkPoP7gCeSOlVdANyublG4dq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766906034; c=relaxed/simple;
	bh=tlxQgqLum3t3aPhGWnEayuRBIesPN5pUhQrYbRSu8TU=;
	h=To:Subject:From:Message-Id:Date; b=dMvVHmc/PpUuEiQab9Xo+ERoJN8hRODGgNAd/2lght4ERFsNpJTQQMBTPRkKUt2S3LopL28zlXQX3M98O+ndESIeHrsBoL5jEQW9+/wJK0eR63dsytVJ9ie1j1tV6Ph5dqfaJBTl4BqBun6b0djXMaphw9JCT9el9e4oWHKwnYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEauXH83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEauXH83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC20C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766906033;
	bh=tlxQgqLum3t3aPhGWnEayuRBIesPN5pUhQrYbRSu8TU=;
	h=To:Subject:From:Date:From;
	b=SEauXH83AOH72BbJOMRYIS6PAm1tjLbxwwiE2s8vws2WfIufPeZHqV+2A0I3wU3Av
	 DjFTqadRLvDem/8zCIGAU1Ex7Q0Om+AXHlEAF/5S4Yx3WCTfFzMAQkworXmyzlxOyw
	 grVRXmlNm4rcEGsO4I45G5zCBWDv3CPTLvZ3SizEYaofzCxOR3QtQNrgKc4ovFmRN/
	 b/gwgo0ff4icC3f54dfyHYo2dEVG7KbG0l0jkbVvV+7ZLPPKr5pR20SJOlVwYrflVH
	 WhaLpKbWfaBR4EPAqXm1xiWHzLiMdb0s22LQMYVRFcJcEvT40IJFMlOVV1SSIOTVsO
	 Pz/jbqGGNo5bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B5BD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690603358.8433.2542805878776040536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c0bd59e43f61f51797038e00d43ca1c8baba0c6bddfffb25a48b6da99f2056
Date: Sun, 28 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766906033
