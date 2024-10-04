Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D82233FD
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728009354; cv=none; b=oL1TTTCU9l5cwYy32Jb1a1m6JZXCATzqKB4gscI0snOmpVQDUS4KZyz9ICMmunbiYIXSvKrNA7il33BRYTFWv+0ywt34AdnveCjlXIcPpdheDVQJZpBCpxM/BDZeOfsVWnO7pxas0lzNXJbIt3kxEtv7twCuiumcrSS4CG074FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728009354; c=relaxed/simple;
	bh=9+JKP37turtAPpvO88/2N1aMVgm30w5SyOzDXDpHsaw=;
	h=To:Subject:From:Message-Id:Date; b=RDnwq0GnRR57gQR5CD3SJbHbNj4CG0Kx9vLUWq8jvZqNM7PGljONfp6sBZJqDvNhDR9gqIRQRKRTe7zJ60F9mdR96y3p2mfp2Xpo7cfBOcRua7rdBWYwZm0dbvRzJiqszA4KywFdzmXdgCLD9/w40dmzqMac2w/nZzWmj27NbcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpE/KJwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpE/KJwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA70EC4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728009353;
	bh=9+JKP37turtAPpvO88/2N1aMVgm30w5SyOzDXDpHsaw=;
	h=To:Subject:From:Date:From;
	b=XpE/KJwtX7OqtBQwkHY8MssRfeuCI5nEnaD/tEr1kLyvJCTQEdRkRkP1aD3LwpV68
	 RVF+lc41uM5/mQIGDbAHcVLCxzevg6Sv728JkxzyAQdGMBbzquxcObAkEwzLGqMlh/
	 7StilLy5cMcVCYpltPrpLf0SjCrdJYf2HXuNw0mwrpHfL/YK3K7DW8gbp6VPJRM70G
	 JzaxrCewrjSR2lRKrVDl7X70lqWa2Nc6AuHXmLmce1Ai1SgF9mfNGfDQZlshs5GkWb
	 JsN+7xdfCtoSqOgdePh0namP9odso60NuMSGga6Oemb/Xqh/FI4PratEy428EuqYCJ
	 Qr4WD5qb7hX6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2924CF34DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800935362.27066.442992807791916981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822178fade99adf628665cd7fe57a10421f6c2f5772ad4935aa020821117b7c2
Date: Fri, 04 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728009353
