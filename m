Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AEC51E422
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788546634; cv=none; b=E0B5ncrNDbK/Tjhi19GPp3BCYB3lQ1zVK7EGHxZWAWZbgom+bA0lynGkMbP+MAZptL1lVzWQdn3K/asmu4xYAf6/0FXTA+EY6MGRgqA2drwNk6kJqN3KMx4a4wFEE+Xcecn01o0Zv+NBZYNUYWg4q5JcX4E2nAv7JBdothc+cxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788546634; c=relaxed/simple;
	bh=mgd+woxtN48YudpyB2aUDjOQUoMXWywpiN8b1OIqeCc=;
	h=To:Subject:From:Message-Id:Date; b=C0AVlcZ68fLkLGsrOmgv8BExEYrOrPpTdxYSgXppgWnwiW5BYw1Qg84evFpo0CvYwjtZ+T/6B3VW69rD0YbkoTrSVp2GXGAhbdmh+9YoGp0uEDDuBeNKE6pJ9MOAo0a+Pk3mLo0d9ix97ZeugAw6aBNCeafCju4+wqoWWJVPnI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfLx35Vz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfLx35Vz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2658C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788546633;
	bh=mgd+woxtN48YudpyB2aUDjOQUoMXWywpiN8b1OIqeCc=;
	h=To:Subject:From:Date:From;
	b=pfLx35VzIi20PFwhjPEGW7gq/0bAJ6XCsicwkO3AmQFBBUKE18JxSUU5Ws7JvZZzc
	 /mywNCPGS5f1diyJHdyH6m4oiFuhoyLhfG2d5MD2CSZ4dJfF5fX8uxzkHNsADEtiYP
	 mlbcEWzllMlxSlovhxgNBCRqy6RkcyPYC7LMHJLWVPvJrWubBkd6NMKDC+yiCx3Gr8
	 X1Tp+Xr2lnWHZRBWHakS11tnXoBMsmWpb8gWhF1ND7JjNf4dlo8M96SlsG6Pgw/3ju
	 +6Bm7XKbVR4PSMCZTyvX0rh+/obUczz/17q0JIcoPp6dlZLX07vSuvIq/8rSxpu+jL
	 eneF5iL3XooRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB8FC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854663370.8336.14873393877928605605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad008353c8a812a2b562685ffb4031e5c4c0f7f38422899ffbda87ee5ac47ad4
Date: Fri, 04 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788546633
