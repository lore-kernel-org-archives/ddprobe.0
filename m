Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD3A101F7
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729836354; cv=none; b=TmbUNuhNBPAnxe6o1twIiBoPxBGki6pMpgDf6yjZbAVE6pX85CypSX31ahGArNV2qiOlyarxUMchrG22J3pCTQX044mRnd2IQvyWCX0+M03tBKv9zGqZiS1izJddNzHsX8LVyWwvmRJ5cc+0fCtijMbVhq231yPe519TAoIVDKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729836354; c=relaxed/simple;
	bh=D78sm+P706qVDYpqnTKXflaMRTgjNW1q6AzdbcxdEik=;
	h=To:Subject:From:Message-Id:Date; b=JmWajPJz9ZNlGoCSK2XhdgVRq4DXbBlOLlVRbyGYYLkxZb567XQUOZde8d8SYko6X9VB8fxpcSzIvNyzZq+Jl6vUuoli0zBxnFuUUMH2XkZnjKX8sewZABG8OUUpEjJ4NT22CjCG4lFNT6ujQFud6JuL6gstyj+VFeSueu7Cifg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4ucspje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4ucspje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68B0C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729836353;
	bh=D78sm+P706qVDYpqnTKXflaMRTgjNW1q6AzdbcxdEik=;
	h=To:Subject:From:Date:From;
	b=J4ucspje5TmtPJB+A9pqIKZmLhTpj0LRZLOupHtBhFVvOFoCgfHhf5E8TYtSrW4Zc
	 loJfYExYEqhDKm4g1rYvLXo+XpMdxFpNSLtBzGatXugpl4VJ+iTIKXMOY/01mo6Z9m
	 eYjtEKriIsMl+X6VwqMN8vzP/zsvWg7aIj7fPyKVXxnCDrGutjkr7fvsETfXEVlhDh
	 GbLFyHb/0ajjYC9SM1HQhYO30zX6K4UOHoGr+j8aITgJWAgnyRSpTJV0Nq+JbWIdMG
	 2OkI9BLJ1WE59YtNI6tRLmItSAbeSBDceWy4brL7Q4Tw1bJojLvYlGfyobeVlGunVs
	 AeIicusaodHrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F8D116F7
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172983635359.4820.7631310131270517149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b67a94edee7064ce1c292c263346be102c8664f89d226f751887adb1cbaccd
Date: Fri, 25 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729836353
