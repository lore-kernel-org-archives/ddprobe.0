Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C5B30FC35
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765529574; cv=none; b=J6bvrZOf+oerIvDXmJY6zwcljt/daR80n7RNdRM44POotpQLKKqpVDHlyBeolrfj40FxRKbT1todCE0/nGeqbPFJ/fPnQznMGoxw/nzg01OzOmH+ASswc+SiRkMFsC6GGzm0yeNn1dXxJ5X/2oeOCyy+LwfWbP5ZWMyvpdVGGHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765529574; c=relaxed/simple;
	bh=+YwL2CNWzQROnpt4yggs5eJTG+nHHw7dDTmX4eQsq9U=;
	h=To:Subject:From:Message-Id:Date; b=FdfYHCD5fX2lBBw1ysmZaQC++7ReATcFOGiihqY3KDnkF+tMfzPd3Ck07YRIu/Jb/26L6pGM4dwttwAvKb8LrDYxGRFNrE+4olHgn6bHE191tQ4uDnwQgG8aURK7eerWH4nvAseIqr6Xddsdo1gHvymzPfxaVLSBDZCOM+P4O5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peV7iwAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peV7iwAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25C3C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765529573;
	bh=+YwL2CNWzQROnpt4yggs5eJTG+nHHw7dDTmX4eQsq9U=;
	h=To:Subject:From:Date:From;
	b=peV7iwAn3PCxrD2IRaA1bNONXyehE+Bj/IkF8g4zAR1NFJldLoFAXpokNgpfq4QW6
	 MwqyJIL9VXz7R13SB9qfj35WsXN2Q6t9y6uZYe2TCcJiNt/B8Bu6mB/6GxKn2xcftn
	 e2HBwneupph616jsyoOGqRepH8GIlE5U70nHLBirpvldtQcKA4bnc7R//e6ps5VyfS
	 gzBR5RqRRLASok3QhQxII3Xto+7Sxlz7bcRdAyoGGFNaGCBwzIrQO1zXdTmdCITc6F
	 qTEQ9MaRkwBEJlXJMLO/yWkSf3zgEskVcY7Twl8mNrzj9KHrpJZt4/RWUPflhFYtnA
	 izy40rKmtgESg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91779D44145
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552957358.11341.18037537981777035877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1198628ffe479f25076f07235735e006d5d998f378a031c74064d129d5781b1a
Date: Fri, 12 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765529573
