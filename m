Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA54F27C150
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745969393; cv=none; b=tQSgaEU5vhUdWvPGiasGLRu0KFMxsiE9BJ26LRR0c2aUw3GV4wlr8qFUlGr8IKIAjKSQMNFVYG5l6uewJg3vLuh+ostve8lENBiR1p51d7DjEQrkYdJVCH8ETFSi5BJo02VozOC6mHlRU0dRhmB6JiFX4BIRl7qzuiBuPQNhz4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745969393; c=relaxed/simple;
	bh=3VaY08Iffb/clbZ9aFubw/evnLPFnmhvmqRxdhL2enw=;
	h=To:Subject:From:Message-Id:Date; b=J/vL+dhhcqqb8pn5tA3l10IK1bBgc+3F/BsPHcSIBroqs2xnTavRNIEVCx+lnM0osn7x8dE5nJKDNBIEis7ayFkkj6ZcPe8l6FE5NQHGsIinw50a3sLwn9YUqJLX2pBbA47+bYXgGrvjoUTc4/tJUAIztXiQfsx2ef6zz1DE8vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7+/2zR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7+/2zR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B31C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745969393;
	bh=3VaY08Iffb/clbZ9aFubw/evnLPFnmhvmqRxdhL2enw=;
	h=To:Subject:From:Date:From;
	b=k7+/2zR8dFFNXILrn6IFzduNiduX4HSJu8nmUPotrjN6+upevWdV1fYwRDA7Pr8cG
	 L1CUXenKeu6SLStZOhqdeGQQVWinCTSkgxo+m3sJkWzUFEPCWFCNRKybXyqkXMWTQG
	 UqNe1+iixtrOnB8iN2Cq0bJcehb0RvIF7hUR25maHTRd8Te2QxU1M0QmV8zlj73Tvi
	 o5Hs84bBY4CLZMhR687LZReZSAFbnC1yF18ofL3YAmg56LtClEKXXxWtvtFiCUJPvM
	 EVHWlqVhkQQBRzLnPMwKEL+Lw4qLF1twVcptJUvMIl0/6NK0YqcWb2Y0bedFhmZGf7
	 5YA0bE5xdToow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97101C3ABA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596939360.13370.2231802532483351075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6739a8fec0b24d5c33f0a000018c22768df24e81b3b0959f23e8468eaa641495
Date: Tue, 29 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745969393
