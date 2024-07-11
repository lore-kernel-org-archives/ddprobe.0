Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B79F26AEC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720723043; cv=none; b=gq1I3a9tyVCxRxTkOdK2rUdBIQmmwutQ5sGiv0Xwy7C8Q245OJeZcBQc9bkGl5rpTp2zM7Vnwdq04hsW8H/ujmyBdnbddExIGewdcASVcnas4t2HsPFicFzEOaQlXBicBO/OrxTYgSPxxYeKgw2HIyQ6GjYp3cmH9LfKf7aEQNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720723043; c=relaxed/simple;
	bh=8hFtZllXLZuYkkrhRlVY7WzvPtXX61dLS2UxqAvDa5c=;
	h=To:Subject:From:Message-Id:Date; b=h6FCRBgaJ+NCUUNadQEAaYabi4l7UnIm6R5m+R1/xAgJVJVRfMWx3JDRZOdNyp+sASTgx8/1myrA+h+bjBvknzOfkgtXVUSMCx2O6y1v/zVTqA8G8fuspD7W5mTdpXMs/F5nGppeLsqZIVC+IiH2I4aRrMOBxewWcakUbXn1f9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RM8ZGBk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RM8ZGBk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2E4C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720723042;
	bh=8hFtZllXLZuYkkrhRlVY7WzvPtXX61dLS2UxqAvDa5c=;
	h=To:Subject:From:Date:From;
	b=RM8ZGBk5lkJ87QNve0B9LkuluTjK+sgt2kANVzWYSrEj2u3zkfW7T7vevt05b0URn
	 6oIswfeEkcKk6FIxfgr0TmFzRysw2BVbHYkA1U9Ey56HfbKnMDmyeHsd7S4d3+01nQ
	 UplYl/OU0wCUwpPEHavfvh6iAjyunt80rq0ArsKLFjJAMZWNmpJiMwUu1HStch74oD
	 JCHOaaYkaVt4yGEMaRFAqXInujL3I69wnW2p7aK5L30RLSrFMMp0IdK77vYtNX8qcw
	 84yk5PHzfjEeYzN28HafZPnK3LIa78gVCH4NyAuxuPB9TcM0oBpIDFMMf04KD2F/Bp
	 CrxqdsHM79iQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C89A7C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072304276.30170.8886508630963585896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a9c0cf1f595f848f14afffe35e82e439a1d75caa1409f32b01e4afb82ee08d
Date: Thu, 11 Jul 2024 18:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720723042
