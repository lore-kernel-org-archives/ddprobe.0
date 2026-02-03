Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268A526AC3
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770155034; cv=none; b=EZDkYjJhdKOT2Cyjq5+E1ekv0emXGnWxoC8UeGtf3H6oCta/JNAxBCWRGTGfJeiUJhAPDKj4imf2Kf0trfLZwD2pVma/tA9COGf6NcD2YTMZLax4jlGPi5/pleYey1Cr2oaz2KGPpojGx6Wgd7nrRB1WRkZ7AHyQFMgwDnUTEHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770155034; c=relaxed/simple;
	bh=PFXXkFX8FtGrfC3PRy/lnL0g0sJ/hvRP8EyVONRqboU=;
	h=To:Subject:From:Message-Id:Date; b=D8m8umSEbZYiVixpDF/Bf7XA/yhe9gvN0KMIVAKxnNi1NjTAk8Kjo0eMdqIl6JBKX9jodVxZkvOchVylHnM9/mK7kcgJcK8+4L0qNhVFmqBxZPJFWuxiLpLF8vhbqGmeMvoc+9SEL9e4aqGP6okK9s0ZYXMAB1dFPi6ezvJ+wLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjgGSDGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjgGSDGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDA3C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770155033;
	bh=PFXXkFX8FtGrfC3PRy/lnL0g0sJ/hvRP8EyVONRqboU=;
	h=To:Subject:From:Date:From;
	b=UjgGSDGV3pDy1duG+dE4f1rcxXABvnc3E+t/57k30VvGP2m7DxQiqleTc3+xBjQjx
	 3FQqYzR/PZCcWh5k5sQ5A5Oz65AP4U87byULztdn12s2+SxyLbpUHY3F97+rxlbztC
	 PUcL8n+XjYf1SCdMZ0YynR1brlo6KR4pSD1btVSkwPMbcwoJousylO4pEadGw9a7Fn
	 fizU6qP6wHAgXxMgiNWmn7egm27pmb93nPrKmyvGyW5sGKknNXuOysbVjWEOlSl4NZ
	 tGJOHY/R9KYzYT1Xa7/6qCKH8UZGGOYRKat7GVhJ75rBF053p4aB1frVyvv5B5jUCH
	 q5qFxhOElMMhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBFBE8B368
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015503369.17834.13375057260835294694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9e8c4ed28dfabfc58b8b3b5ce94ff3dca923483ef720a7c5e449ded6718ac1
Date: Tue, 03 Feb 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770155033
