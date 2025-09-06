Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9881A841C
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757126994; cv=none; b=E1WslBhVgt29HI6d8tQiQITwItyI3tw8qPc8OZPsYdpVZhqHJEDaI6+f7QFNSqSfcV02JQ+vwMf30zm72ilf8Rr/0VyrjY1YA4uOjVFwLhqUHs3hllXEm1g1thx9t/SgG5Om5dtxRDaJDkphWkBXcpDqgtGWEConTpATWmc+VnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757126994; c=relaxed/simple;
	bh=n7Me6fjPD9ETlEeWgh1VE2U+S9CeHaxKBQp+0E+RCeY=;
	h=To:Subject:From:Message-Id:Date; b=Hsg5CAqSkTi0ZTZAcJilEenOUQ2TOIZuig7St2Ob/ZakIfWa3DmoaeymSndlnrqqWh2tJ/RrjoGZSqupYLsdboYy2VNUTYEx9F4e4iy6ox46/lPXgK5xd2CLAIrNfV4NOxkD3+ZDHaZzBPO1KhYZlzXWxPFdGSyCJkj+Lb0RnwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMQfOAqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMQfOAqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757126993;
	bh=n7Me6fjPD9ETlEeWgh1VE2U+S9CeHaxKBQp+0E+RCeY=;
	h=To:Subject:From:Date:From;
	b=XMQfOAqPQ6tMa2LLQSM9aQxJISx3G6z/3a4E1yj+UoBEUwnXK6YNH67wIr2E11/kF
	 nH8SKg8kGm3GxFXo66NJ60n0YKmdPVoMeQrnalhFG1svfyZAmRRbN/VXmrtdd2w8s8
	 KiNfy2YqchfqA4bkIzkKKqmzNGBe8ZlknX3kXTTYeXfkhgIUh8I1s3XATlFoXOa6tV
	 qVpF+c88rtuC+ROWkm1cNxA4vJ010uueDEEfLBJnYysGc/tuB99wMK4eJlksjph33F
	 tTNGts/fElv8RU96yCwkzKfXWsWACDSaeQMzJrXrUKlnD2ltpZeXXf9negB9ODsDaP
	 CdSj1/WtwD+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90347CA1016
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712699358.12562.5445739636663216701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d708231aeab0554a9b204722b85dec479ad4ecc27f435d323027471c6eb94f
Date: Sat, 06 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757126993
