Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3910E1A9F82
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762045794; cv=none; b=mGlFriedkfPWcazmnyml81v5Vaoiu8zIeDUXQkJ1A4lRe8PlEAvY2wnF52E4LdcJ2dY3Va0YPxKO9wLEv1F5a9nKUJ5wQpKGVGf8Xo8qvoYILfAghOEmhJ3QGY6i3BVsJy12Of6z2/kewMqNRN6lO8RKnkP0l7MJzLuhXN8NA00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762045794; c=relaxed/simple;
	bh=noDeIhtno7anE/0mxVtyRWiIABJxc7aIizh+hGyNo40=;
	h=To:Subject:From:Message-Id:Date; b=dStczpKVR/X0C9nPEd06qDMB7ho25ScTclnVxQrtHIKtHstKpzoyCIQBEsygBH8eVKkAiI3EmVjhPQO724NTgvkDObR0uZ5AD+KfCtDfb94SeLEXomTXLyrKeA3koNd6SypW9cjP7SETUSzd6hQoRyKPVpGkae1swqO5YEbAqMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFAomhaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFAomhaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D34C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762045793;
	bh=noDeIhtno7anE/0mxVtyRWiIABJxc7aIizh+hGyNo40=;
	h=To:Subject:From:Date:From;
	b=iFAomhaChvVURf0wz6MnhgIyb7rNotfIiPiZCrc5G/3nPPhjcVtazVixk+g/2txno
	 stXC0LMfHNPrsZ2wqXpBkbghs7BNXfuI48qjOCl9BJJ4DnkYigs1eHhBOwGdSV18p7
	 FWgYvQnDSTDlmi4wO+h/m+8jGUfzt8rboVAK2dB+YJbsHVbcIjYMhd35K2+aukqQMG
	 4fyqbQdZ9EGJrPDrkUnkZzMNvtDTS78UV2zoG++McZNjoddrY5ngl+Df5vXDiKNJS8
	 GoUYs25kK3Ikm2h3KM+3ZRZLW7gGW+ofYsq8MmifNO3G9w5E/iKYFThSz6WBcTk3JG
	 tT3Z8wjOYzMkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986A0CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204579359.7374.4315041578254657254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792b2b9178ce624ae45f78573e5fd5f2029eea7f2140bdfac750b5d0acc6c8c5
Date: Sun, 02 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762045793
