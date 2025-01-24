Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74481D63DF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737696953; cv=none; b=HYnahgVfcctrmaWjqTQyU1tekWCuECXJ0xVkBsKoFZeaw4XAdbEH9Qpv6sPQqZ29g4oHa4eN9fD1ArMAcuHye5DTivHN8kl4KpEHzjFVDl9fL9tfGQKge3a4O49B2DDrVAjDMt36ibpJlqYCnNbOKBTw3fZ21DBeFyqw7LWdoa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737696953; c=relaxed/simple;
	bh=YT5k2j/3WDT7/DHJxulgQkLBcE+bScT6huhM89sATQ0=;
	h=To:Subject:From:Message-Id:Date; b=gW4eadccwVPx864lOY4/ScnblXlvglrO8QFKU3e4uvmYmhS2rRjVyNXMqMWsWczNchBhv9MgjJe3c2vPIpX/O1SKfF/KvfMTXmcvEXHOBn6Z9B8fePXCaoY571olZqqDEsHxTKSa/S9hpgFtqXg7v9QBpu8cVOabRw5TXg79Soc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji2XLmqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ji2XLmqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9368C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737696953;
	bh=YT5k2j/3WDT7/DHJxulgQkLBcE+bScT6huhM89sATQ0=;
	h=To:Subject:From:Date:From;
	b=ji2XLmqj3eZ1wJ7ER3Hlgp+N1NTKH3/fmGi45pYcaHRpB7o46qRNvrvE4iZsPKXT3
	 mMiAmYtSD7dosE9sqB24Peg7IaBWfSj95TR8i57Z0Gk0hBWCuOekMkAcrDJ3y2AeVu
	 PWoJdW0Y/9S5UxKeCJ1zRN2AB4gw0d2hkh2LcqBQtzSA3Tsbr6a3Mfk3lnZ77dFra9
	 ti7sEOGniKXONRzC/JTza5husbcnfNj05VNPynh9KuY1m/7R9D+JNTdM+hJVPxW/Wi
	 tVbgslRBHuBVg6elgRZmEXbfa38YTDKavXAzwuZ7Odr92JvY4TrLmkz3g0GrtOjJPu
	 AyVD13ZsTZu+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F0C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769695360.919.3527114001058303323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ea22a831d0cfad5dad55955a2b19588d45e13e4c7625f45d54310367dcfb93
Date: Fri, 24 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737696953
