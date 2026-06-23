Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395AFC8EB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782250594; cv=none; b=Q7P5lNqT2MgNJTRVaBta64WP7vZHbTN7jvX74+6AKxep5sq/yRow1sSokSWvT54z3o8NJQ1jQ3jdcoX5bh1VYXrpwbWxJPwMqB9BIh2fZhF+4SJTj80z+vNXPouXPMw4H8f8/4pDWPEfc2PwFd6geOkV3n+uphduoIXMAHWGyrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782250594; c=relaxed/simple;
	bh=/IUybVZSkrijav7mUQmlaibkEqf91u54pRAsgknHBpk=;
	h=To:Subject:From:Message-Id:Date; b=XFIi9JXjyHmx7VP5lq86nPOrrSzQvgT3RPRHwq2eRZQCZ8fp8TJNj+y3OIbexUQzPT/DZu/ToAQ6ZOR0c3K8E5ptwJC7KC0+eq7jBheR7wXBwJOSICa35+7yrdle+mMDuKNiuscR1zBZ8OIzqLs/HvOGVE/0QXmI/ZQTLogxbY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtWNEHfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtWNEHfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8BCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782250593;
	bh=/IUybVZSkrijav7mUQmlaibkEqf91u54pRAsgknHBpk=;
	h=To:Subject:From:Date:From;
	b=rtWNEHfy9i0jSavkagkhjTxMfUj9DET2YFenU9e77J361pRj62epovv2/R5jE62wJ
	 y79IvYPMfiVRoLqgBxtosC7ND9GfvK3OM2t1GQE+xD8k5FGJx5Ey211/yZ3GCRWiSU
	 XEPYS4LaWaq5GsUdW0TnfikADq2knniVy1QkruOZwLfibebGd4ysiCO8KQA8pBr5+i
	 Wm0o2OirsT15ir7WJ+Y/qOpR/SY19Tys1yrkAx3nTiR9lgaKEP4RutP8a5pvr7a1Oa
	 KvuStcigYf2Q2R0Ym/QlYnbu3G3Y8K2tzlfx2A+BJgzvptRxovleyBf/6/Rtxm+/vY
	 puZDCFFzbzsDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBDCCDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225059369.29613.13928261609856040010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a71ab423c5c46cd417584264f2ad4c8d0a2842f12a789714d970b24a2bec87
Date: Tue, 23 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782250593
