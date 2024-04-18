Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593398C1F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 03:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713412163; cv=none; b=guBWmep15fcDb+HpsWH33pu0CNrnmKPJ5he+NgjMCqeLN719vgkQggt/lnpYdzAnb7uVNAEMFiqWORa+t7cINNCJgv5/gcQwpPanDtibXWIcICE9aAn2eAWxtcSVQ4K5S6juYbshnsSjNbNMXjbx+HbPZIxBe+mkc24ABOwEUi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713412163; c=relaxed/simple;
	bh=/7eS6ujwKqBu9JYLTujDWEd78qtkWUBcOouYNCpsIc4=;
	h=To:Subject:From:Message-Id:Date; b=IvtrqxZhiwAcU8/CN3Q1EN+F8mEo0ACVbgrGT3P7aR3wPbmerwPZ8x9xqHns+23QmAEIKmEh04DJkFapjGvFXWJDjKskPsFj3z75CYXK779ioUIeidIwJFxNEwyJB6Rby7M22vR9gmi/Yxi4gouoxzUgWc4t2W0aGZE3dporN7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wei5ioNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wei5ioNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E069EC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 03:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713412162;
	bh=/7eS6ujwKqBu9JYLTujDWEd78qtkWUBcOouYNCpsIc4=;
	h=To:Subject:From:Date:From;
	b=Wei5ioNMXTPeWB29+e7vS+bm+8Mximlnc6Z7ABlU6mTmTlDZS5tTDu5xKFpbmQEYM
	 SA2LmyRkZO5VMSNZxvfBIOC5zlgnbkq1oeKKArdV05dLwgLxDPirkKhykxcDxMGlV9
	 +jQf3wC+tqKkSFm6Mcp0AbowQnlYDPEuMk/yhDXbp3XOhOT+60iS4MczvT4iDLnmxY
	 nIAum04nMZuqbCHMKkjlsd+Xga09o6MHvwgaJ/+mt0gfNmHUWxc0ZCKas5OhEeL25N
	 qRM3bhUPj2GN/c92Pk+/OMScPnVPdtjkvdl29oknqT86shdOjUZNEs+1dT589sHP+h
	 ramjaHKHi4+7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29CFC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 03:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171341216279.8534.6784547627572161495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a360f8b524407167a622b3c9f04faebd74bde22f6c3ad453edf1a14c2ea23d9b
Date: Thu, 18 Apr 2024 03:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713412162
