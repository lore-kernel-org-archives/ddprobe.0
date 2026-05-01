Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C17B423A76
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777667854; cv=none; b=gcWj5WlJDZT+AQRihx9DXVWnbxr9BolEXXbAaR7sXwNRb+S04Of7nww4YJXShHWpk46BEFeZ2bKd05bMkgqafWeDZvdOkwkEhcxqwHSJjp0EsjpARq1FYkOKIvVYjvS1S2y0Z/ESGIdlG/N8WzJCWpDJSa2/dqEgb88vTGWsx9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777667854; c=relaxed/simple;
	bh=1izk85wVS9D2E699r4BOO7JCPpReACRnMlimnrmbKZU=;
	h=To:Subject:From:Message-Id:Date; b=t3z23PjDHhnmxOolv/blfdncLZ5hVc6JaRcf+Ana5ZWwMFHqBNKnMoAV8skbrD6Zxg65OkypQeasCTG38zgRVd5CYuINiK/n6NA5nFnWrJD/moc2jyqvHwpPY3Ah8+ZM3GK6I6r1hIq2dF07vB2zG2s4TsOJD+dmYiIoDoxtdMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6YPew1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6YPew1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA550C4AF09
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777667853;
	bh=1izk85wVS9D2E699r4BOO7JCPpReACRnMlimnrmbKZU=;
	h=To:Subject:From:Date:From;
	b=g6YPew1bBsR71XpTggO9gXq4yWV8OdUS+D902Bu5c6kVmCkA8WuqgrSyjky74/Jwt
	 oLVuZql9fFy3QadCUCmS9cQcfEzTh/4TCS+ErfMsXS9HxhCTh7VagKpN+cXGndpHW5
	 AXrqKnGKpLxivWG+fYqgT77a+iK+X6/paJm9oMktYP/nbM1j1HobY5jCi1bYTYsDCH
	 jwXeVQHsgiIu2BdzVcgdwHrr9IGoaAnW9AHn4NXfY1sM6Tz9vhFY7EjxCPL1giAMHr
	 D0DiCNRIibUT8lRb0f89O4/QIgJ28rVzOpfLsMNMDIlJSlkVLlrzstPzZ/IKKddjI0
	 W11m4QqYV8xPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA47ACD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766785368.28919.12206090387962984002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3005870d19a7a6a8011d9deb8a124f2c87aedc3888e3ab91965a05834b7a95
Date: Fri, 01 May 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777667853
