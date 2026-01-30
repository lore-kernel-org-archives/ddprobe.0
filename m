Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3837264612
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769736234; cv=none; b=uVljSTvdYuO2Z5BomAeCNLrHp9/59vWB+JWw65ncFvLZsxODOxXenCWAyTSqbDQMZoVfrDLeSE3sjV/N6mHxXlSS94LntWKNpHxTYXEaFbE2DyBOLmzgcCfBh9XMazeUNkctpkLOeJJfIHM8Kfd9TgMDCzM6cYkdN1r4VaY7oDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769736234; c=relaxed/simple;
	bh=7eTa/RVi/jt/nD3Lz0TtYynX7GOWdsMdrZRNBx58pgk=;
	h=To:Subject:From:Message-Id:Date; b=MmOeSb5UpnIeFB4fmHfSLaPwlLG+k6byOQnRt09mLwYBPmnNntEcPEYEtoCxqFo43mEV1tQkfi7u6zkKbX81C8rN8Er/7aJu/yFp7cOmx0MLma2CoFhHmcwB4f3bi9vBe0XCRuFczNmBd66YiqYrPqSTTvg8rs73nDfd2cEYULo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAuXXeCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAuXXeCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DD5C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769736233;
	bh=7eTa/RVi/jt/nD3Lz0TtYynX7GOWdsMdrZRNBx58pgk=;
	h=To:Subject:From:Date:From;
	b=jAuXXeCqXjGABoq5oiNgtBJoYsK4ojR27mUGngrAEUzvT+XNXNoQb2342RaWJSD0X
	 k/aBDXUcbLtz2kPi7x7VUuMqOAWvpR/WzRdLkvslDhk5SFMkp+fco6PJ62EJ90w14W
	 7PelcNVqRyahF3aUl/IL4llX21bKVXk8zHBsPwqcNTNZQAqFQUsubDtF6gQjdeMWWD
	 +qAWVb+QIbGFVcTSYhtbfgAqDVG+ETlpid0UnPGtCS4SGq9OEYwpXRDHZ4ujIKrR6y
	 mNktRm1jUnuUcWcNQJ1Wauaa/t2Ny3vqjAFK5ApSbklO2UQTA5B2ZojxS6qfxL9VNv
	 LagbOGRy26kdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F530D73EA9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973623357.4349.18100594253036820542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe38bbff6c312b1c83ad20990f08ab53292542dfe0fa645494542e479a284ac
Date: Fri, 30 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769736233
