Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D67923E32E
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756092595; cv=none; b=N9ppT1CbKH7gqppiRN9ZaLeUZaQnMg9JSRcPF5KOAgqo/WUsHl/XHH9HURudpAA5+WuVQfZSkbjN85OFx6evKOP51G89RKhrrO1ZgIDcl7MJgYuLRKHPiMfCxu9ckQVe40eY9OwWCLNClQs+JDMgjlUa7Pyf5DCOHV2USe3QdQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756092595; c=relaxed/simple;
	bh=zYKIDu+EWKWKFHb8kLoh+n2Aun2NspM/y3DzFJg5FVs=;
	h=To:Subject:From:Message-Id:Date; b=DfhZMkz4N/mMs2riuRqAnFd0klg0xmQ8SoDg/VPpw+nxgnMk2oZC2yPGjxnDRveuBcGQelMRdPuxsoUo5j/gWiRpehDth3F78UHSFRoAPFNwj+U1GEiKzcQ+flAcx/o9Bxu8vwHhJCMXflhNsXWDaSX0kyJad7MXu1ncSVMr1TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9HBTj4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9HBTj4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F0C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756092593;
	bh=zYKIDu+EWKWKFHb8kLoh+n2Aun2NspM/y3DzFJg5FVs=;
	h=To:Subject:From:Date:From;
	b=s9HBTj4upOJoM+VFhF/YaVx0RM3xP1Uo9eZ10VfJt+L8t+Zicwt4chf8bAD4Zfd6O
	 uQBit8F+u1CueDPNUJ5NWKVF/RwcSU1hY1XcgiRYPqTtob0PSxFAj3ed5lG+Q1RJ/q
	 l3NLjNharaG3QJUeZxwigeNZ5bRUk1jOzgXTwcDVxZeY4gt6tJ9HRVOX1fpSSstVJa
	 svYYZKn6XfUlQO+oaUorqNVvy0TfpetfaEXBpkZm7WX5ohvvqLkJMPWkbWhWxHqSwS
	 JPYG73q65nrAM6fWHRviyvAD+lxfydW7dSIwnAyKdFL3o12eG0RQuF9G1Y5wLJS7WP
	 0ijdoxzXXSWGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E765CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609259357.22327.10069349044001776667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3df36c685e88c7678ffbd79e4cb96e4a22fe04a85a30f83e6d2f9c119f003c
Date: Mon, 25 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756092593
