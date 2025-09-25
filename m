Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B56442AA6
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758765594; cv=none; b=TYJX47WMUMLo1kwq/YrMOyQ4xnWSiBfv1D8ZsO0vu9L/Q1n8c51C2zKI+Cy1m0RvZ3ddIVXNJzzLErW+Hq0SIwzJvSw66PhkFKSYO/Ou+h9bAafzBUefJv8zoikN3wYAXNrB+KyrjAr6MS9LjGb65pHQxoA7Wbarn6ajske5tPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758765594; c=relaxed/simple;
	bh=xv3DPU+9riTm0LF4S626+ScKMDW5EcEsP5+MF0aU/CQ=;
	h=To:Subject:From:Message-Id:Date; b=TvUmI6FTmmtGV21MGP4+L1DL0Vn07GKAyZkns0zwTDNLV6CBEYb3WgGI26wfvNDzuSx9mwxVMXqgHe9N3JUqWcpJB3354VLRXKj1eesRhQ/PfFDy54U1Q3E2LmWdnAnc6pbUSHfRSbo8pcFJERsrKaQiNo1yGmJoOPjP4P2lBx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qg8B6B1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qg8B6B1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E63C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758765593;
	bh=xv3DPU+9riTm0LF4S626+ScKMDW5EcEsP5+MF0aU/CQ=;
	h=To:Subject:From:Date:From;
	b=qg8B6B1GdPu2Oq/HprsPt58pANFVO9HE0FZwQtFQ4YvF355c0wbFraqCiNuOrcZ/C
	 SX43RFt4M2roksVpYSsNLJfBtlMRjzgPkUWzYb754IvmoFm40Y741NTjorqRero1vu
	 C/87r8DjwD9VPgpeUFxebuEUr9BpxsSagkQqNPwNK4/bWEaohz4dwp3goS5244SNNe
	 uQltC6wuNSqTOj7G1Z+2sOix2y/hv5JiyTePvSZ4Mh3JK4CI+5nvjfTDbj/zBnYLZT
	 Ij9Ie3IB35nt/7FATINgAf0RF6XuuyihWNLJQSShm+5Y+mDT6qermn/SrS9P37v9um
	 i7RJAcL8s7mqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9267ECAC5AE
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876559357.5039.4384561073208068814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e350e02e3142941894a6a5e235ffbf6cc47a24fcf2988f6b45bf95bdaacb51cf
Date: Thu, 25 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758765593
