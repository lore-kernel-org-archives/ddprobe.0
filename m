Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACA831A7FF
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762363194; cv=none; b=ZBxazCdbovQc+ldB/XpW2bsk8gyDQu8Mfa4XHbRXZTaRkvDazf8a+2T4WhMm69lGEVKslmyWti55ud2xcblExFjJIAVVU4dD1Sd9OdZXpeTo6qkAQX9MeexBdFzLjBR82BnABEcxdkdKeofuGe0sW7DDNvrOSO6fjgcVtxWXpEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762363194; c=relaxed/simple;
	bh=wiC9F1E6SzbJWttxaWHA8itWxwcZqC5/ykswL0i6BA8=;
	h=To:Subject:From:Message-Id:Date; b=WHbHKmXPQ3nINgqcXLENcU0AAPKOjyl4ZbeJ/nyEXU/bR1Rs4yGmmxwIqohFTvH+rTkIQqnAJsU4FqvLYGwptd0fRgaC9Uo1bJ6y5wijoBd6DzdXP1c/+kiy/+SpMhenj+R3+oDQZIikg36IsB/5+R/ewjznejzRP7YJvEE14DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEPkwFGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEPkwFGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD8CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762363193;
	bh=wiC9F1E6SzbJWttxaWHA8itWxwcZqC5/ykswL0i6BA8=;
	h=To:Subject:From:Date:From;
	b=UEPkwFGykkOWZT2tbIz6vZzgXvlonEe4Q58Gvgb43IYkxWR2v4rCGo27FVcXBgwf6
	 sSWauKVS8RzHHTiR0Lki/jLERXEjOsYI1MbRWCorC/iww6lFDraedCqLDaRStD2x2q
	 FKORE9qChjbfhTOp/XmzDPlXYowjX3oolROBVWuWeCJu+nT6oKsV3ANY2sFSa5PoED
	 iH6YUo4dr8Z+QcdLT8pMEOO7piUH+/cDYHgHTOy3wlb/LjP3fKBUnZLUCyrzRu5Gg/
	 TwqqvjkO+G9NiNEAqkLGHV4qIKxrxlr0SHGxM7mDIPzDOBiNy2Uzv0NkL/3e6DVmMG
	 4r2Zz2ZLHcLHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE7CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236319358.5864.8994916378677878925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1adc67e2133d48ca42b0a67aaea21b0ff8bc354d055393793d8aec433d2071
Date: Wed, 05 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762363193
