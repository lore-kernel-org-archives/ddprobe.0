Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8F1192B75
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764631974; cv=none; b=vB3Zdu6oRF3aLMzJWryq0FM18pIpj7hu/TBfxi7Y/Q9NDLfUSV3B/VaELNGeCGZZ2A8cbFKDy6lhG6qqdhikLXox0h4rNcLMW4hBU5XnL7qknTqy6hBZC7ZiZJjQXSUFRwe7KyM/01PgX5JTWuRpWPW9x6SlEarrghw1m98+CMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764631974; c=relaxed/simple;
	bh=z0AnVkVpZHs0BKoqrBQD/IXKL4QPu0/wNSCh5exB1IY=;
	h=To:Subject:From:Message-Id:Date; b=XaxT6wDvmQJRDFQ+ovhRSO0oNo3awqqR9xXsJH1SPJvy/wUlU+K2gySvN5XxQwlAeh/a1A6+UZ9Vl8j3zpS0Sx/sDOAL4PobT3Yod72gnJFgn61yUtEYLxwcKXQps31ORo7sgUsSvI6HpHbp/NhEozq4jL4MrpwjdNhUUwb5MMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHT+f/ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHT+f/ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD9DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764631973;
	bh=z0AnVkVpZHs0BKoqrBQD/IXKL4QPu0/wNSCh5exB1IY=;
	h=To:Subject:From:Date:From;
	b=OHT+f/ex7VEe5Tm8t8UJ33Zx6sBGFpV+4/b9hHxz6qbakpHFhBGYhjemYix8JIGvu
	 l7ZxdSNQem8KzZ4VTx15O/IcB1tibd5Tbakhl5vdWa9OMrdUpCRpp+BNxv7PTAA0w6
	 jqE4mCAzCrdrN4fgNWBvaL0CZRhQlBwA2EHpo7P19jYLIE2BF9N64Cw4veYi21KUbN
	 ixaxYwNU/mzY1/rhZ6XqzD3QuuICJ2BppTw5hV1PeW5MEn1nDDmXl4tku7waG4pG2s
	 EEDXmtLEY1rJvWLBuvoD5KLxjhCFN1dvciLVCZjHbNs1eCQYayJzPsYxwkslOqayWA
	 hzF/6xdY0UiCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB5CD116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463197359.30516.5410707218633343842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b5590c4dbf70c53a39147d4a6f551ea259e876d4c038c379ea1d435e872d82
Date: Mon, 01 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764631973
