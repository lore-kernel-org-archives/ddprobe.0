Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EE91D63C5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753133995; cv=none; b=NlR5ez/mT0PKesnHVPpV9bz+b0MLiQ4Q9GenuEyQzPIxzmNn3/kerCYI5J08WYZzWQKY9IrpYxXVGNM3e/GUI5boIBfhGELAPFBtCLtbv5BA4ErJaE1UPfdxZYNUgLa7lDMjpqqNh1M5WwiRUNtj7vSidhSKXK0ON1ngxAQOnLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753133995; c=relaxed/simple;
	bh=MfEfXADc+UdBFHGUckNo1MNbPDNvR1UldDtFhA6sSxM=;
	h=To:Subject:From:Message-Id:Date; b=YvHUUnuelKj+sMs5Js916WF+iIBsPDI8Sovu6zVrkTB27PdxiIHejtskLQw+4n13e0SPldxbkRNgpjAQwen6ymy344pj9vtO5dcaFNzKYjXBcHregdwwqrBlVUObC02L0PKnj6qhqTvhSajB9b/hSOKsaRzA1f27p26Y19p2XCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ga96HGVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ga96HGVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E75C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753133993;
	bh=MfEfXADc+UdBFHGUckNo1MNbPDNvR1UldDtFhA6sSxM=;
	h=To:Subject:From:Date:From;
	b=ga96HGVijkbo050HN3jNEcWtMSFT90uD4Rpuw30j2kNJiUUWjwYB95giPBG+ZD+z0
	 +cRXFaes3MFjtk+pK6rToCqbDlv848S/+1XCSQVR1O3Oit+BGnyhR6X1472tqO+gZ4
	 DL+TKHHRg3tbIHlU8GdbDM5igpNaNiIos8SfClyOnGEOIUal/neeVkNL9Uwi/iEedp
	 E3vywe7iNGw4fuocC0IzP7Yw1vhxF0Vc8mjzH3N6RHF+sXkT8H8DaKC9WHAe7vZW8F
	 IU5Loyw2bLNRnn15Wj3cxY5BTHclNpmS5cA9A1RB91TyEkBQf4LkGJRvRcI9V0vm27
	 eCJtBu+8b+oxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F313C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313399357.10363.936407196247106672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c5e140e7bd643a3a4c6464387f3640dd9390fe1a267a69261760c7f565e6c6
Date: Mon, 21 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753133993
