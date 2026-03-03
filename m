Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA1B2F12AF
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772510094; cv=none; b=COtD7pT5k9r4YyP1M+45oeKDaZEJDyDAnRNJkth12OOiwKU5Da/zP75+vo+iw9AGkYPAVa4uydlwBa+tA/uGvQfURitnG2KPkUOdD73epvAsAWKuHr/UYqtZ7IS6DHm5Z0jcNI2tswR6APVCfxP+QmErNjon05AJSjzoHfMjJfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772510094; c=relaxed/simple;
	bh=3lLtIGInu+EQawRUsK87xF1iYkSbvH7HZB6QSqJA2JI=;
	h=To:Subject:From:Message-Id:Date; b=k9zxlrhYYowkYFPSwowMK1lWFvcX2uSJ9Mh3ACcQpSsdw2uO70WYWWLqXDbMBaSPnGsdL4rrGUVgJGxY0vrONpvQFiiUYo5rsiSdT1HmiYDcn5AChPhK+JT0dMNWSskrd/FGoAWRGAn/aK0iCOgX1IpYsdGLGMCON3iuBLKLkyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0S34hdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0S34hdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF4BC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772510093;
	bh=3lLtIGInu+EQawRUsK87xF1iYkSbvH7HZB6QSqJA2JI=;
	h=To:Subject:From:Date:From;
	b=c0S34hdxTjnmtFlgB4T3jvIS1ESCksJaXNv69C1UTyRv9v+xVGVza2QKGllFNJMiV
	 JMDcbbzko4yzIUv8oKvFb5lWxnzX9NQykV2Q4gy3SLKK4cYmKf+AEH5DQDr7il5OCU
	 FT2SOabHssJ+EG7HsYVsk9+X0qhX/qYH3DMhzoM3n1wwsFcF06AugdNwx6+F1jAcgQ
	 rpmafGv6GEaYVKWqZe+6BIO25javF30VYuayLRyPzbkw2bXMmQlkjyrKFZW2k7AHwy
	 0dzk9fne50cf98VsfPaBpRGf1WI7eO1ccQjvZUxxAjKx/ToP0W6OU/ILPzUxmOPP13
	 d3WISxvUhy88Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B0ED58E49
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251009359.7633.2694053746244708599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ef91caccec6cdd9160badc328869d163a032528ac0d532875bad964b374b43
Date: Tue, 03 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772510093
