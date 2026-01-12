Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6233101AA
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768202034; cv=none; b=N95nlRQOdiSQ/8wD1/mTJCHw/1uLTMuUpWokNK/1zw5W1E/gP1IHH1EVEgZ7bafmP9qonP5ZpJ1HCAGTrjSBhzEhaIebX/ZEc2gLhREFY505hD6zf5q0yPvltD56GX7OQYk7R7PFYJy0bPcV0Vhw0+MzpiRcCjCw0cUA8etBabA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768202034; c=relaxed/simple;
	bh=vynkOavh+3wfR65NdKqf90+d0Io6R27MT5rUPlEZBOY=;
	h=To:Subject:From:Message-Id:Date; b=OMr8Dn+o7vev6a+Z7c1Nr8CsE+TN5RX0xUfZRSskyvQI0rElVPXBWLCwJi1CcKv/smAAx6m5vC7+NLjMhpndkno8WN5The3l3ktiuyGATj1gN75AI3E2pxCFDN82r6QPC6qCVhnTz1/aiWyPkPncgFtSpgaB88GUmWrCgzyEkj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzP92Aey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzP92Aey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C085CC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768202033;
	bh=vynkOavh+3wfR65NdKqf90+d0Io6R27MT5rUPlEZBOY=;
	h=To:Subject:From:Date:From;
	b=EzP92Aey7tosvMFY9gU4q+WGT5vZg4pZ5jfQXbeg/o1NRjCov8AuOQZjUWtHLkPGx
	 PY3b22CJJbdRc/59C/jZcRRPtRnbI90G/dEIQ/hnhPNbHaGQ6uQyveGYzq57oRpEOg
	 dPUSYfL4RbGUiWYsHc7HoR+QfDQ4hAVM4YIq3dc0Eg5Fg1UonvnEvdyXAwxCsUtW+D
	 FF7m+X4GELhKtGNIxjt89EarcUV00U4MrBGQEEQwY6vmDOQIo9jMmzKhl4PGegHLRb
	 eaIEhWIxbCwH8A+pJgZep5xnIj8m8lJCvyBO7YtjP3aUymJZxGJ3xTB26bBCcV6x8q
	 26Wkv4CVhTQKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F095D2503D
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820203357.32764.2043996623249471888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e9b0b611270ea9c7514f9b1be162bad922dbcfd4ec3e0bd0f3d761a78cd8ca
Date: Mon, 12 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768202033
