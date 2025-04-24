Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD971F4297
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745530793; cv=none; b=B/Tw0IgVfETENClWt7w7yde3rp0jKDLN3y6AGVsoQSf7AppGGl4/4Qml4OyKTrm3GkgQ41L7D1r/CZMPvjhKeNXymLsbh1sRxRuDj1CsTMYr5E3VANfiO+zgXNRU2KXk7UKqETCKtSlgYcE8C+8rGzBjKf/cWhfqdwOM9msOO+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745530793; c=relaxed/simple;
	bh=y4MHvp8fjN5MCeUHaRC6fqBsZv6WCXPnKd1OMqKj7fg=;
	h=To:Subject:From:Message-Id:Date; b=C57xAA3ot7vCNnkrWWsVRw5YRzcLCtpj/MxykuLtMbnyKy0TQ0KgTXOK5LkJrqgYyeuO+mnMkDX7RMGTzxL/HLB+fIBDoQ50+HsDoim7u2yRnOmVq20YFJDR+//TZyBNpVjFAFIZNLPva+SGNNupR3BPZkHwKLm+wRMfg9eQOv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7rylxSn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7rylxSn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D149C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745530793;
	bh=y4MHvp8fjN5MCeUHaRC6fqBsZv6WCXPnKd1OMqKj7fg=;
	h=To:Subject:From:Date:From;
	b=t7rylxSniUWYC8cbUnmx90L8Rcx3JdVPmeNmfXPPxAeOEV6kSeUheiTdEWYBNucYD
	 bkzxF3GJcElux8par+vLDWZxIP+y+G9uSgKQkmjIMUAjTrjHQiM6tENb//V8sdT4WC
	 VfI5E9ogDqIMkAfNTJ2v/wz5mmsPeq3BGjYGrhU35SjW3QD1ttadE2DGzjg2W2XdnM
	 B7+AOrLtmNFJhd91y6mii00u63EVjk38r1jU5wfRC2aHigmcxTFVgtlDyfkuuXQJ/b
	 QuSm9I00/vOxTsvx28Uq9XsjxxeGg3VT2PRV+Jx5xhhpAC1JI3fPDSEnaGfJKtsmZm
	 WcylztSQh7sNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0B9C369D5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553079357.4710.4104540133156341404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4cb72cb5baa2f2b5781abf20a0392cdb23f000a2576cb5a8bca06181f4b5b55
Date: Thu, 24 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745530793
