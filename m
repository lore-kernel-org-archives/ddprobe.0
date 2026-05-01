Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338823D300E
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777651054; cv=none; b=JbbvgpKBFvN1FGJD854wHOLrZYuo3NfOwDSo1npSag7TY3MXUYMfz4BamuA6es0HwtVu/CjQp4T9VBmL8GtWcwJZJW4zSSR68KhpADwNFblpBTFthmCbIoeXBQtANOB2Av5CJfGUdPYowfnAk49ASaqng14J4WKztiX0puGtnJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777651054; c=relaxed/simple;
	bh=bt/rwNBrbpx6WST1pI5Tg8xfpRrbQf2EGZppeAKNRzk=;
	h=To:Subject:From:Message-Id:Date; b=jQl9d52f/gVGIAC4ealjzbZU+3xJkC+XCQLrhoYu2Hh4b7Je/CMCbia86/dCoE+BAfT5Zuefn1+ga5rXNADpSPNfqChzbcrg0hb5yVmCvKajdzqrGtC1NER3xR5yoOcYYz2q/hUBosDrkYgUj3K+pF+P9MhdPo2T2DiwZY0RSWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VO2rWqH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VO2rWqH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7472C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777651053;
	bh=bt/rwNBrbpx6WST1pI5Tg8xfpRrbQf2EGZppeAKNRzk=;
	h=To:Subject:From:Date:From;
	b=VO2rWqH0HzeGadzS2FgnoNFbHtZSyr5SvEMoq/f70ld3e6Y/sgejjA/y2KIN3cX7J
	 Pvg3r7pS3A024HRaO2Hjx0DUbAsb2c8H0sO36e8+tGGHvcbUQ0k9Q+12Z0ly/9FAVv
	 qh4UFIkmPnvEKzMGMC3GBsWE+IguF942vTBpEDxZ2e3EzMBATbvkg2ffsgWDA+Q+Ka
	 qryG7Oc0pdy5qjiWe3m3jpFU7GDPkhepOYpd83D5rXuLoEzab0F81yFkwIU7m2VlcB
	 HL3Zj0AsQAqRoHSC81XUDhpy+la8ZFzzT1kVt/e3ql6tXY3MYdqNJvqps6n6cbuZqe
	 /TZTrQpmMm40g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3738CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765105369.19806.10083391929346096017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf5e93d3f3c45e4a7f934dc1cbe088567596bdfab3231651c77cb365ae6dec7
Date: Fri, 01 May 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777651053
