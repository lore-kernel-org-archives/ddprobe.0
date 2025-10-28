Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2892AD32
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761655793; cv=none; b=gZa4DeKg47gkWpxKMQ8I9NP/KpXjSkvCzKw7LxpyOhU6TJxQStgU+ihpnyynZmhFOxpT+Xe26vH9kxr2TRqUybUCGxYGwXhfK3qliTdQwNPmwZd0boj5bwGW6nscjThuh75xPAWU2/lJeZRba6bQZUANpwZCeb7wivUXGn72oR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761655793; c=relaxed/simple;
	bh=N3G7t4KkETFCmKllzhl6HyJff6e2Q+u6TW0cc05jrSk=;
	h=To:Subject:From:Message-Id:Date; b=eiN0oqtqgqAuw1sGqBflR1qS3JU9eiw4RCFNYQTVaInIM0g98jRfGQAKLdbgK1uAjcODKoDeY0l7viiKVoXTFngNMLY1CxJ4ELyM4iXpL572X9a/WVRIJtN6gDaWdDh9BGP7cLXC0rAttKyOp+ovHujmBI+w0AQLESc4o0BLu9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPmqnFmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPmqnFmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F22EC4CEFD
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761655793;
	bh=N3G7t4KkETFCmKllzhl6HyJff6e2Q+u6TW0cc05jrSk=;
	h=To:Subject:From:Date:From;
	b=mPmqnFmb6iIVPtexIN3pMuiQWLyiFsN/LAK/N3wf2E4wfcLtw898YRWI5qxxXf/SU
	 mbem7V9AOZYtRWOfWx8B232X5SnZRCGmwcZ/f5+jKlZ9XzUML9jXLYjPTg1f0o1i82
	 zozTK6zCSljmxTbCsHyJVhW7regdgDR4JHXNaqB7cWopLdpWUQrqiqDu4Q3KREGnv0
	 TBYRPcovtQpP6TknKCagr7YpalUXyWEOJ9sAfa1SPiUs+ZSjMO5oixd8V6A0mnPv9t
	 G44UiJ/Ho3AsoMGSZ6iPsHSER4iYMOXddVgDv7nLpokpSvX4ZzogqzzFgx2StDoX1S
	 U5XiZ6SzJzRDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90455CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165579358.14467.5399195888170679234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5512ad8455a5eb505a3ce0ac1fc5d4a8df7ea0e5b0d25da85a3495e0457336d4
Date: Tue, 28 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761655793
