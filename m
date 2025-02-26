Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E8CDDC5
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740528534; cv=none; b=KzbxAAdpue1D4d8IqN+F2UViaQqYxrmw3CSBUXqS0qnDDvHb9PaCrX/H96VryYLMcfGDWxPfjcm59a4MrWNIlm+jGOmKMlKHNg7np4zNQJJAL+OIaZlJnqTqoPVCAJaLv/hNnFqFbmLZyxFyvSkvyNbU6j2EirCewRVhD1zfgTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740528534; c=relaxed/simple;
	bh=fVhLLMNyk3rViQWKXyvqKVHXgVjv00Dwy6k+YmsWZSg=;
	h=To:Subject:From:Message-Id:Date; b=GDd/MKy85nbA1Tez3jBsvv54ipRsqbo9XIPl+USGk+HqefZPOHlMhssmlil4NMJqad8kMcrkr15Vi/+l7+Mqw8u3qnMALvt1l+PAS1hSzCUR6Dd3UJPXsWS7/PtaXzB9brvNd4x2fxwmm82B5+JAFylumm2WGJoEt8nQ6omkv1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnXYw+cR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnXYw+cR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2A0C4CEE6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740528533;
	bh=fVhLLMNyk3rViQWKXyvqKVHXgVjv00Dwy6k+YmsWZSg=;
	h=To:Subject:From:Date:From;
	b=NnXYw+cRcRTpnMJnbuB2tlK3GjPoSAOK5xHeVSjvr7Aajmlc6u6aNNVC4Yzk/rBsP
	 IOq4IKWBaWB2lpqb7v49tv7uF0iuGMnu6is3hiZiYDiAssNT2W0ux/I3YvO05ZaMsw
	 IJmbWFGQ/S4EviZE1GXhJv5MNMOIYgTR8RljLwwpItGP8vKPIFSXbhl3eVNT4v0dhi
	 HKlyEso5UthJSz0umvR3N+3E8iBYhYwdLS/cBaIHa7haZIGhpnycHTjIhibMPM0d69
	 +izovVONWyM9EXZahKBaLXEU87jsufeIDhWQsu6SuqOgEXtI0vGUVQlFpaDSh4Sghi
	 awhtkSHTMrHeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E55C021B2
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174052853359.32613.3008793378791549667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec420e3a4c0331a328e6cee8e62980a4cbb2d71c0603be95364be70e611f0d7
Date: Wed, 26 Feb 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740528533
