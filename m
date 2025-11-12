Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092942FC019
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762937394; cv=none; b=fx+vaq5VypukhyhxMSreUXgVVS5B7g2IPD81POc7AXzTF+IP/AFlC0jK/CIpEuvIywQgJzAgqroG0TZHE0/AODv2fYRxuQbUPdtmpOj5AL8RSeDMTXm81//uyZDA5hx8hJGOPA9qGSlooQEBLG/a1awnZePUZD92rgI7gLLzYcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762937394; c=relaxed/simple;
	bh=vzCyF7yQvJDGXPt2XZDB4rGm3BFEQJH3a2J3uROuGLE=;
	h=To:Subject:From:Message-Id:Date; b=lNhDXD+q6V5Q8pniqbucSo2tx1l6OVqbrAS3aCX/DCPd45dWAMwXDNkt3G8eXWdhPqP25SJTOxIHYyITV9HuvCh5wFOKfwbF1ov6i5nzaZq0ezAcONLX2ytHoL1xc3mKw9a7pdT9N+3vmMXO3zyP66Pc8jsz2ir3IwNU3y0qKF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHZgJG6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHZgJG6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9B3C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762937393;
	bh=vzCyF7yQvJDGXPt2XZDB4rGm3BFEQJH3a2J3uROuGLE=;
	h=To:Subject:From:Date:From;
	b=YHZgJG6t0pNNjDB8Mnos+jn3VsfEj/DRViirVho8PmUScN4CtbJGbi4NpYjyaPbb8
	 Nko2II2QmsmH0/uov1D9b6LfP1u2WykUzWAD2bd57L1uIjk1/M4A6oAQwBhpX9hemi
	 8BfgP2G3fFkLQdXCY1w1FIZl5SnujCRV3NVoC1Mb7K0ZnLrBEj5YbaPJtXJjeQ3pyJ
	 2PZxN6hh9+SM6L69jDSb4g/5/44OTrXY/Xjalcu27bMer+n+51x21nKf7i/JxXwRyQ
	 w6BQEOgWsSdK763xcUBKGUqvzkvtEVL5FkP8cUB2x+ENbF7KfZ3wyf0aDNuiyKwc+2
	 5jkh5V8/fLJ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DFBCCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293739358.11710.15720032741390283152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578b470d45855957a01c99737733221276627d734c8d1bcbd99a8caf422a20e6
Date: Wed, 12 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762937393
