Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D92B219A8A
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767536634; cv=none; b=A8ei+mVcG48ymMWsAvDaEfB/YtMPpIDScvPEbdhJyDR+/hTz4MvIFjTePONAg0JZhptUh5DJD1r0mdqUOxV9IgzVDfhTYJGA2XyuCjq+AW6QgPl1vlGPJ2dklOk+MZrTxaCt2YUQ4snFJ9teGP0PIGxPrKiXdRDAudJoqAhIx2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767536634; c=relaxed/simple;
	bh=hG3GuwegwIzIQDfNkNG28V0kCgw3gf3Ryvq5O67DwUE=;
	h=To:Subject:From:Message-Id:Date; b=JDNf9EVmHW8zEhyyRP+HAJFMG8XO+OlcutH64qRbApf40MXdvicONpvAo2ex/jBlP3Q5rOuQ3GmvT31zMBv9C7l7AqWNaIoiJ/DpvKgEx5StBGUOSGtAhfUAHwshsl43d3PAMXk+m4W+lY6+fhCacYrHEDoo1k7waGXeoKBvJ5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4TqTMk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4TqTMk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F85C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767536633;
	bh=hG3GuwegwIzIQDfNkNG28V0kCgw3gf3Ryvq5O67DwUE=;
	h=To:Subject:From:Date:From;
	b=p4TqTMk/wkR00/cOqpQ77aVyB3BuwNTuIEMjty1OSeJJ+AZDBnDixnjM6S/2pKfLH
	 n/xjG9xkk1Jed4uLysduTWso5vfA44sq9JtL4I7wn2JoQ1EXQfH4BG6WnU7kerxnvs
	 Xp8cUA3/FDdr1n/+PFmmYqw9PWZzbYvDpJY9vSnxQBeGkNHvue/Cl6iNKJ74JuQKzh
	 0injPIf7FDI3PxrmRpRz8Z9jKw3B7PcZPxdwISO1EFjgoWdpBy+sOtJHxO4VNbwPgW
	 xJx2ygSXPWElnupZzG2/KBM0UpgCzA3fzlMs1CKnYyhddeVWOIp+sTg0sbNeil/Cs9
	 TsJ52ZjVCwsrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E8BC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753663358.11944.16268073868737255943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35c42e2ecb08dc1a451bf7ce671cc7bdf39b3e6180893e78fa4d7c96a374636
Date: Sun, 04 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767536633
