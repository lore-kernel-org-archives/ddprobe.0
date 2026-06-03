Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9AF3822AA
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780456474; cv=none; b=UJqX1Gp+Rj+8ZmEzqkpeHT1vpRJ8AqBUC71BJmjbotAM8UPpxMDR0MdEGdgkFlFPNff//lAPVncWcClVy+5xJPCZD3fiHm7Zse5VI8gBiq9xaU2tB2Ewfnux6Ge3Qi6Yf5BzYswjmmIvl/OzkyR7kaa47KMQwqJ0zyVOap/9MD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780456474; c=relaxed/simple;
	bh=e6tYCHGqWzkXxKk9tKu5jNe2ksAZUHCI/dg7qgP1IbQ=;
	h=To:Subject:From:Message-Id:Date; b=rlAdnhriDYWerdIrUPCPcVq9lxA+Nlt+Nqf4lVleLJI9fhh4nMmZ2u2/ZYyLupp5Xr7nKOoZW+VmDK0Q4g4hIyyNbEI7ZhpFL5K1gMeLIrXF791BgPpL0cdbZIx/RLbSvABvhhyg0FLotVxlXSAhWZlPo2YcNqFCHnvxVwQK9aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUrfTTy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUrfTTy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C162EC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780456473;
	bh=e6tYCHGqWzkXxKk9tKu5jNe2ksAZUHCI/dg7qgP1IbQ=;
	h=To:Subject:From:Date:From;
	b=hUrfTTy+S0VCNLRYom8WE9BMQXSfPwzEdn8PYu/iBwVMOUYX03XDU/ekTd6bh5Wna
	 Nd1XDckzmtGZJznjJ6nLOy0qgblNrXv5H6sAXsTFG1amQ1FC5w/G7q99cSzgGSv6ug
	 0Y+7ziUETxLlM7Q+Wn45GENNyqdM/YloRpmmU0Mr44+KEBhl3NNus6C6u5kzVh8wZH
	 qg/2T6MCtWLV8TcOIt2mBURllj5K3k+MsiA1eAjhSvVf4rv31ndlvlSnbOYkIlhh4Z
	 pUAKfGDabKSMoJvEb45NwDOjfCUEKZXZEQZE2yyVWdiQt7YgIKdnuTISxsYn407N3n
	 oWaJbTNIeOolg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87BBCD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045647368.21417.17129428383304656889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a2226335514fd5eacc714348e00886548506dc4c5b79f360e1f8636ecb7e006
Date: Wed, 03 Jun 2026 03:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780456473
