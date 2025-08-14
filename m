Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACEE2FF658
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755135594; cv=none; b=NSwBT8dD5l8k5/OJ23UGFm8jE4cOJHJ5J5+geQ8N/22JNIwCkE0AA1k9AMAAMsVE5gWHLuQGO8TBgEiXkxcl0NfzeU/kihhPzZil+Vp1AhHlV4EogJWTLla4cKig6uiiCFphMMXaqcMoPd9QsCHelEroefLrgsia8tTJ0o8RJuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755135594; c=relaxed/simple;
	bh=D9Jv8lUL5huP4Aco7cftx3gpoabkopxiwU2/n4gKq8c=;
	h=To:Subject:From:Message-Id:Date; b=TgNFMKWvkbZQXfwVXPAzi5geenJvNYIF2yZpbhCTYhF9Y8CzhcF2diCYQIlDjpDVYjEcMq95G3o0TCAlNb+Mi0yDNpC3qQ99BYx7KgUQH7XQnaSxlZbPloSVYUME2EOnsclUdW5XFSzSt0bmXH23VOLL7mOcWLShXr6A/rrnsvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDnBvidT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDnBvidT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3252C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755135593;
	bh=D9Jv8lUL5huP4Aco7cftx3gpoabkopxiwU2/n4gKq8c=;
	h=To:Subject:From:Date:From;
	b=RDnBvidTtKBKTZfzkbfWsmrHaiyDcLZn2aBKO7TsYx7UaIRrH/fK3FdLXp02ytFAC
	 RGzjTRwV8oOSe7cAc4d7SQwaWsU8qzqq1O0KOMDQwalgSYaoJ29DDeIONv98uAtUZJ
	 YvYJBDF9YGIo33Xk/tDIJwR6nc0EUfdVBpZY9QcGS2oylCaNXILaTrL8i6YupntNR8
	 RCLK839v6rUNDlDjB7dBy+XPV0ezF5BqQ2SyM1Gfu0BYcSCvTzLCaGw7O8icO9uVmF
	 LM8wOsw14EBe7zo1QOQ/Qq3RImoVPzaq4A2cey5RLfRaDkHAEeDRLbAWKQfPSuyAsR
	 NFGtZ94dViQ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBBDC87FCF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513559358.12848.10963893641807355330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa346b5d53b5d3329dce83f899515475ee39085b26ceb45f7316c2f5aab66c90
Date: Thu, 14 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755135593
