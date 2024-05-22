Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAF378C65
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 09:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716368603; cv=none; b=b9n3iEtZA0TJ/itx8Sqst6C73Jxp+9qqK2hQUkEffywKPnzZBezXian62E2nhsP0j3IWD+YjHB4/FN39wtzs9o+ptVkjUiW4s/sRXbVqQsuYGTM46T1u1C9XCx276n71byznjCssqjH68IPZkg+tIl+tFEjqQGDFEFO+DnzeNwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716368603; c=relaxed/simple;
	bh=HSfn1lNIPBELHy7hFNYJ0wss5p6BdfYWkXTHLH3mObQ=;
	h=To:Subject:From:Message-Id:Date; b=pzRVtclvB2ky8zwa7QrH9DJgY9VCWHc386+wo94u3Osqg0ai0zcadnMLmkV+AWiUL4LrJUoDvH/VP0gsSLidTqN8cieIXUe+bY7ynCAADtUWiE8WJ1Xe09eEDiOx487P4xUTAgpML/KOI9jZjUCK7P9uEoZgqWTunUaBrevMCXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnAB9S+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnAB9S+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F217FC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 09:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716368603;
	bh=HSfn1lNIPBELHy7hFNYJ0wss5p6BdfYWkXTHLH3mObQ=;
	h=To:Subject:From:Date:From;
	b=VnAB9S+vjgi05i/okMStVgsTnMNiD0VHedQxwhVOimRUQl922EcrbdiMVZflE3Yf6
	 U9G33ZIZovm13XtFORGgJuXzrUTi9ZcACv/kVYMdHWeZaOSncsUaroA5Q0gndw3L7I
	 DC3kSyAlsas7naxfhPHa0TomPap/4bsUL0RCdpCIek4DyoOZq7XuaR3KL/T3BlMi+i
	 M9wGpigxxFfkw62nSP8awpI1HCSiCW8jq+nJsIbpw5v+/hVHsGFvqEPLITZqi1qvd2
	 vzARKmPZeCGgC6H4sGLES7ZOKJq36uh2Dgh03Rt8RzckYVVr+C6BqZfYCYG/eZ1faL
	 yQaLawT/l1I/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBEEAC25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 09:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171636860289.12412.9154149818758545636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4855c1689b48f17c37b2f8db1e5ace124352b3090c618d4f72cdacac60cd7cf9
Date: Wed, 22 May 2024 09:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716368602
