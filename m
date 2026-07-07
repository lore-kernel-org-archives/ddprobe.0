Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109FF3AB5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783406914; cv=none; b=mpthZ5hU+EpESlyFlSz4cHGUhSc70j9J05rCNCSTpXraoc3MuzTgz7FsP732vTWm664hIGu8eOo+a2WScH4TU1W9JL3aZ1DciMXvCaNmDeT+aTiQQ5Vl9QexYZ423JQICM4MiekvheSNgJ6RR71UdAifbp66vVuMJxsNMadKoMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783406914; c=relaxed/simple;
	bh=sfqFEdlQSsm20B/u6ferpkVTxjGC/8sOENq3E5qlCNo=;
	h=To:Subject:From:Message-Id:Date; b=En22ZYbF2AEg7blYRdo0wXU/viXzztFLRbFiaB+qLpcXVuq6Vhgy6R1u5kjK7I/q3Q7YSx3gMFC3nxQM61L+xIjrlNvgYDAtQzzgn6s1+xxVM2BoAKmAVzyuK9iCXTazYdo4pj4+/F8JELbeWDUDs9Oqq6lV/GT37LuCwkbNQoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMrkZGqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMrkZGqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACD1C2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783406913;
	bh=sfqFEdlQSsm20B/u6ferpkVTxjGC/8sOENq3E5qlCNo=;
	h=To:Subject:From:Date:From;
	b=MMrkZGqQa8VDHwPV7BwjqcP6inShv8cQQM20L5wCJ7zCgIRvo+b8l21LqIySYWKPl
	 4Xyi+xijxfahYBQrKOsoAuKgjIfRxc5XpQ3B3KrEIc1VRaRm15sD2qWii3osS4qRLy
	 5nq2jpVZl7PdeizUw89Xcw++kLTdfH951Mnvv00hDNS0Mn+iEYYaTH8rBPuUAexwCF
	 LsrPwUegw/9p35eVrh033/NqrA2h69IleB44J5nWCR4mB7v5veJScReirQQZFG8cTz
	 hLKitn7Mayt4xwoHibDJugYjsZqaCT/wl1mbP5gcP0PXG2JVguqwzD0m0LOYal9glK
	 1+D8riqZDj1Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA77FC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340691368.21896.463352632605839365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de09e18d0930e1608688d2dbe3a2e8ff293c25e679339995548cc1570939d0b
Date: Tue, 07 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783406913
