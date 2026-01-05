Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CB1217648
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767650634; cv=none; b=oHo0GyLKOMUPE7ItIdp8/Q21AkhwF7GXPOtRhi3dUb5NIfqRevu2gMpBEszuW9pluKC+MiZLhEZ1qcSSe6FMi3JsxeBFQ2LiBBbnw/mtFvOtg9PNQpSfMIVDSn7AtqHbbHKXP91lX4HMWYr5yZHseO8h3dNBIVT05OeRwe29yFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767650634; c=relaxed/simple;
	bh=EVEGnRXOGDLHUAeEi5OYWdcP3blCz+hSAKST+enwglo=;
	h=To:Subject:From:Message-Id:Date; b=fnEEgKL44mLOxhMIutVtH36CbyZAFNeJhNDhbHmCFD6+toSypRQ2/ijxnzv9N5hrRc6atywFUX0fF8bzX7Nb6E/fEA/Q8WARFedm72CUIe1N6dlJI++B5Gonc/caramcYvgLAtgd1wro99g15s/51uaj0QK1cF+S4mj/nOIaGhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XC3DqdOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XC3DqdOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF3AC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767650633;
	bh=EVEGnRXOGDLHUAeEi5OYWdcP3blCz+hSAKST+enwglo=;
	h=To:Subject:From:Date:From;
	b=XC3DqdOCmGg1NZF3K5ujBsvO7D6rqndfB0X/a0ZofIt2zgUOf8wQ/Dlut85eAYmLq
	 faGHm0lF3K6qoe9YLCQwnBtdu5MXTG/UQTlGYwgoDXakCtV/X+6XTwIQplnwDftY7l
	 Auv6tj8awSZNIyJPhxC8yixUDKhS2vWhxuNMuAz9C1FgJvmiunyUxFhiIwHsgkUMeL
	 XrwouDWOqYJUE9v0M9s2lkIc/c5DINOtBOrVNObGlqcwVv92cPeXTAuI7P05KGaxQA
	 whGJb/engoz2hhMlLN0yIl8KywY6LsAsQR56rVC32r0u0oaSIWy7T75x49137x8AaD
	 B4K2elVaKNmVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A1CD040D
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765063357.10622.1841540166117312157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c503093fe78ff1914d9606c83fd75d53dc1e18d54767d0cb100b4046f26944
Date: Mon, 05 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767650633
