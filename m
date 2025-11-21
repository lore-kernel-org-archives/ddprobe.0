Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE042EFD81
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763726514; cv=none; b=gkVbT9sl7wBtrrvaoKUHRSFrprV+MoJ7zvIbr0PtMX7wCaLuQWOxyD4/BimVh2NCYW3WbBxLRndAupeyjIUtyi71C6wv/X550MklEinMGP+Pgc3j53qDHmdYPiBiEBEj3nGr6lRU+033OX/jbu6lKFl57sCcOKX+b+QfzBe8J5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763726514; c=relaxed/simple;
	bh=1kfsBJPxAJZP4FJocLKUBpA4JVhBimyDCja6BDyvgTM=;
	h=To:Subject:From:Message-Id:Date; b=DYAHjXPBKBfc08g5x5ip13uGwYRZyeEyOZO+1K9wEm1Arlxxbs+vvQVgnxtFGaQATeC18+BxJrUaGDu6be/GzQ2mst16l8qQxYaBtst+WkI3dIOaW4+0EEXgCGXdoES944Hxi994PyZtZfCGLAIlMrb/RIzbtY/1lYLP0TYAT0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmCG8ZZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmCG8ZZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A583DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763726513;
	bh=1kfsBJPxAJZP4FJocLKUBpA4JVhBimyDCja6BDyvgTM=;
	h=To:Subject:From:Date:From;
	b=CmCG8ZZoltuwH8KohQMtZ6OQYECa7gLingnqpYHCfh/Ayohoo5m7aqvC3BKtVJbvQ
	 7YhfxXKspJDXJIv2yTehJY0VMfBxUjYSzTY8DClXDCRnjm5Vgb1czZ1w8w3UUfXpV/
	 n1a8dDxLxsqZ8DQ+YBILKg8Xc86lioui03doNDJXu/U9LPnuwUZeFZk3QPKfP8yKf5
	 SeJ16aHOnak0GJHMpHaBAOhv5esM+M2gfpxcaiGsZldlQ+8m+rn0Ak1jON+HmoYCi/
	 z2o0cBS3ouorGCxO8m8CmZitNFnyUjRe1ly3S4TEcqVyUkF/WFmsiIPZRceAOGLCRt
	 zzz++vnIMul6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BFCCFC269
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372651358.20184.4457838208245429572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271091ec2e207dddd79a0fbaa300bfdef4dc8530078092b26a9034c1224b1a52
Date: Fri, 21 Nov 2025 12:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763726513
