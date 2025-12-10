Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2298C312822
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765393374; cv=none; b=EtveEhYU9TUP8BYWGC5m9x4l8th709RIaUHClMTBT0Kg+ko5aZVJQ9JEB6s7nHMfrAVfHvu87dwI2I+fFuG8j6LP071A2WlnjaRIAZ2v+SYLAjOFNcgP713r2D+TJV0+bRA78Tyhl6wm9qR0KohCUUJeRVc0LWHsQHWwt8LhyVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765393374; c=relaxed/simple;
	bh=XuN73WKa5BUiK2HxRNqwaAPuZJW0G6ILXEK82r0CwmE=;
	h=To:Subject:From:Message-Id:Date; b=ET7zCp87NTWvpjfadHKRPMPsyJYR3vpaQsnJaSyvkOsBc5iDWLNl8EOnhDhDHAg2xhTs7WrbNeaSu9krk4+vwPTiWgEgL+17bbUBjNFfctdpNFOmS0cyiKaoHbY8WZM+JYx7bf+gz1K73+ejbn8Zr1JLi7EKj7jGyjKEKpoh98Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFD974a6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFD974a6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA3BC19421
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765393373;
	bh=XuN73WKa5BUiK2HxRNqwaAPuZJW0G6ILXEK82r0CwmE=;
	h=To:Subject:From:Date:From;
	b=DFD974a6l4ajHGzQGrFC17ZK0QiW8MhLXYpKMbGJQ4ytaxFBta9UR1vnPrxyxh+Qw
	 qWkSfxY7y1GuOddeauMF1cXMCwClrJVeVwAjMdEdhl0GcWGzBwC2g0ZanGfHkV7WEO
	 jAB08LnG658FHbW1PCWeR5tibdivMQhgMgbZHkQkqfrVlFoXP2pRimh1KddQm+07c7
	 ZmqxhF+gcgawgM39Pk9Zof0w1DTg/X56WsnvbC9bkGpysYUmW2PjZt0SmHZEzA0V7g
	 RkR7UOmmYVMFc/OZhUO0cqlnRuL3MVgcp/N28IG1xe/xkoa2cxb6MZ3Rnwx/d+aZ+E
	 h3sJLkLniIq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D74D3E76E
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539337359.11543.11039978535294758550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82c0594ba6db996b3a24a01044a8e4413e4d3c8bdd94249f8a7a5b73d4d56bc
Date: Wed, 10 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765393373
