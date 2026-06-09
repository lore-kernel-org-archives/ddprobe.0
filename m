Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F208313E34
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781000734; cv=none; b=lg2UJdRHEd9XTCfY3bkOkX7q/hvj8Ha9YiD2W0dmPNt2jdebBVvfVLP/7NiKD2ngrc90W/1UaPdvJcv9W46ZGXv8G928fLbcr70ZM6N2rpV+/tAEvTxyEjPQW52Z8I/UhD7GQglf43LfWlXRiKQ+At2gp/QLetVLyzHYalLFR5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781000734; c=relaxed/simple;
	bh=uv5wfJOIawjIOdwVnJghdItF1oGLEO4lpSYD4Wv+RoU=;
	h=To:Subject:From:Message-Id:Date; b=EbMpdkP6OlopA4S1h7zeZdb6KYlAfEKJa9x1mX9BbdmTgDkOSAwQZTq7Za4CcQuUwxVHEoeu8p8EQyPkulv6NxSmsghof5Lh4kxpMF200nTbcmOlUkOm4JDnzzZaWzmdr4NesLVnxRu5RLq6k+pqEBeRfaZ2evFVC82XV37mT90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLBMrHws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLBMrHws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6620C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781000733;
	bh=uv5wfJOIawjIOdwVnJghdItF1oGLEO4lpSYD4Wv+RoU=;
	h=To:Subject:From:Date:From;
	b=jLBMrHwsW3Jk8Dgf6ufj7F0HFhY0bpVZoOrJgpP+TFhkkQ5k5c/6s+rBQwJQU6Nrz
	 LnCTHN43yDBXcBIDs1nE2frS10pZt+hMDKH5+6vFpPSi7y3Gh+8nHzhYdlDIsGzrGN
	 wUO1iPmENVB+4stKEcLQxZ6Us41jFVz/x8feBZLaN//J6mNE8RLyqjxSxnKslOCJOQ
	 w6eTTYMzeWsnUVaweKpk5krgalqqOHoqlTqEAKg3Z3GL9A3NkCERhnlj8ny9w2TXqI
	 IEhjnMxFBOudSs8ht7/4OlaAIPW9xv+oHjHP4ppINNqx/IZcSusOhip69VAiuZumF/
	 Mtkd1rgZrlhXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7459CD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100073378.15227.97703320195831063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10507463bcb81bc57e73d431db8d0b8a8722faf2a216f5826001c0ffcc6e9f99
Date: Tue, 09 Jun 2026 10:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781000733
