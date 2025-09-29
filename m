Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2301B21257F
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759165794; cv=none; b=X1FGaQ1Q0RS/W1A+fcOHzpXYHmQmIDbg6l6TKsCGgsOvOCkbUw9FhTub8jGkjKnouYU58vd67iRl089fCey4Wekcz0XRFuuUt6tJl8920Mebuw6sTMR4cE8A8E7nLbSCbYa/LfOp8gP2D7lB6yn+YxskyWRuuXYfwjk+OkVcm9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759165794; c=relaxed/simple;
	bh=JGOMt8A1BtxMwr9wA338V69+E3OCx0vSjHKeRnpc8kc=;
	h=To:Subject:From:Message-Id:Date; b=k/kMEvIH1n7cjTWqySBmAbgzIZrAQZHUszPvOwMbiiRkoLAbBunPSSi9zvjl0pbnqyjprZZPLafVNi6gPZ5Z0nCja/0Euelstt0AgJkNXhqYA3+GJ/oDcfcr51pqddoefy1GBoWJOfQx9POz+qt6SBdsoIMZ9l49N8p7YPDuPT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZEPFtvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZEPFtvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4333C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759165793;
	bh=JGOMt8A1BtxMwr9wA338V69+E3OCx0vSjHKeRnpc8kc=;
	h=To:Subject:From:Date:From;
	b=NZEPFtvFSGnH/jM7+yHckAtc2EET72TfQ5n75Ft+h3ugUhDCPWBEAh7bKEs4uIs01
	 65rzZKGpmZRXmIWpTYDzllVsTFXGo53rsmf6HaH56+8ykrnrJoYnIj78RRPvxUOEPm
	 D3UMtf5pQHXNgMC3jM17QXhfYvje3CruXrEgP+0X3/JMY7NfUYJmPzJwbcsamTD+vB
	 pwGXjTNEH1sDn0QcbH1F62FR/fhjODkHmeayw/cSknPmnLgKm9x3Q9sxWoJC/FhOQ8
	 oKLrPmlROIvHbgAXRz4iaTb0NJWsA8skD1fyUMRX8Qs3pm/P/MIDKhsJoYBRLLpuCl
	 DZ1mKYAL0xECQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F119CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916579360.7399.15261796123751455241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56d2d9e2746b94dd9cca1ad3d3e6c79bb66a8a6217b115ccc70924c11bdfcf5
Date: Mon, 29 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759165793
