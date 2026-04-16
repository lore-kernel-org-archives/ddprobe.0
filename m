Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115A4EEA8
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776348454; cv=none; b=OgD87MdcK+DRjUpKztCXcpjRs9+tNH9fsCDtXxpRYyWi/m8CTHIdA6DWwL0qkLFAwV1dKacedSW0r4K8e7Vd5kGGvk30KprmLZ9N4rUpfaFkuNwMUiJRXmoqoFSI3GJVaMMg1zioNx3cKOtQjqRW6vo1kw+rH8h5AN07j/xXPVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776348454; c=relaxed/simple;
	bh=mK3/booXQexY1iz7JKaHkvxEl+e0RRyRU+RE+f+d/ig=;
	h=To:Subject:From:Message-Id:Date; b=b0dbm09R1ZW0lZkU4yfZgM19yXR9qs6tejDN1DCTVegJPUmDUvlrTAphU8yKqj3Cld99d3oSvGKOBwLQ23a2RNnDBm76aie4cilVm5+QXEHEEuyPm9iyRH3OST0xHJ5XvCKpCqiJtXYrYM6NxAjepAq1qN62aMY65icrRmLIiYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtBRYxqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtBRYxqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAD2C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776348453;
	bh=mK3/booXQexY1iz7JKaHkvxEl+e0RRyRU+RE+f+d/ig=;
	h=To:Subject:From:Date:From;
	b=gtBRYxqsyHo1GXxorRvvcn4p7kqBRaG6Zng55XpnlSQIIOFr/dK9ifm9EzqTcDrhw
	 K9h2st6J2qtUWXsiMRAdT13p2nqsypaZKsV675ujaY13K7plVHMo4o6WSM4BriyGm+
	 pKqIHm5CEcCv8TDwmdM+VFkvyCW3vWva9Rdcgfsq1TLQw4RBDo5Ad2LS+XztN+dk+o
	 Gd7svrkySaKFMTMuE/wU4j9ac58oT/MULGERBgg5kt4+tKc2V4dsFVMicU6xhLP7tD
	 xer9PQxuvlZoIjanTDTSnykmwtrcQ8Udw2cEffVgNbDd9l+0WIDOn77sRTardc+QIl
	 wMrOvyy1dXIfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EABF8D74B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634845368.30542.2677638282842539796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb1bbb85da1836c12566ca3722c6fcceb19cc542e579e87f531ddb6d91feca6
Date: Thu, 16 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776348453
