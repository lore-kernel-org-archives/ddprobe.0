Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110D716428
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707037697; cv=none; b=NVB/KrbKBNovyMfkc9S0+R/u91IZS9aZxhqRMvbrdzTXTUTl0we8r9jg0krIq/Nx54HvJFJShSGh3ZKuo/S/rSO6HBkFaezwoKGIFNmNhzwBYbn1FKZFd6MYYGJfsAy7iVoU3BsYlJ15a/WuDpyeAcYHPmOWlw2Z85LvohwP3hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707037697; c=relaxed/simple;
	bh=HMCfH2+VRG/aGIlpiNKPlGNUYH93NMfEZNFgTwCkrEc=;
	h=To:Subject:From:Message-Id:Date; b=CCvMCTRvrt1vLd3KzXE+Qee1pFtPntHvBn1wp/1FOY7qLTf2o3c8bA4jHoN+gTbjDFdITLMySaJKs/x/PUgrhf/d/8SLChbAwHpkEQEi++X/gA2p95UfgCd1uDbfYt2OVZY+oqXrNQ34JOOXbghnFd1DKIHmzxuZBTqg6yCpnjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCHxwejC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCHxwejC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC85C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707037696;
	bh=HMCfH2+VRG/aGIlpiNKPlGNUYH93NMfEZNFgTwCkrEc=;
	h=To:Subject:From:Date:From;
	b=FCHxwejCJaMFqp8fRzNmNr4djjPUVdTt5Lj2ek1Y2iqKxCGIcHB60ZhgzmkomNG5R
	 6yy4UDT2vLGGU/rM639U3Htodnh/2vluLxbvAdYtTXb8WwRDv/Ss48lvahL0ZX1D94
	 Q0s2fyo9MHoyKDwPCTZW+yW5H0D+/qOtA5VPSJXBoMZi+OUhSZsA0dOm9j76gPRiLc
	 uIWx/6relLmxn2P9RhWI2eeLL4IQ9wNngmWD6EE2aId+Q/Rw2ZQKKXP6bFVDm7XYOJ
	 YU7nphctyYGMrSdJHFZBqdLrV2MJoCDbgUvg0eMpME/L3DCGXRuLZX5AnafkxejGIA
	 afLjnYQKgJFtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE7EC48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170703769638.7384.15859236287440930668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb5259e82317a9e1e7f3698435123eec1bf3c7e3e0b2261d070a32311644b56
Date: Sun, 04 Feb 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707037696
