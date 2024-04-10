Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024D2181CEC
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712782697; cv=none; b=FqGZGHSGSf7sNaUL5b3Z1hccus6L/kQ/Dh8x+wDGq6T6JSU7pQ0QcnLc9DfYCXgGRl8PiVilxYqkuDEg71wWIDUTIqYbwSI06cH7J8C9vrgJOEaSwPGHvlRFo1SKAFWNNFziT3pi69J7w1hXZtBHbb8xt/i31kNMdw9OewnqXmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712782697; c=relaxed/simple;
	bh=J1c6w3utqMyJOsLaQiQrmEnQ8cDgq6jjVDV6V3YN1I4=;
	h=To:Subject:From:Message-Id:Date; b=AwxJKDKHtkGg2elqEY2nPDiOftmtHY2z5xGFZbB49e0LCI1Ved3JM7U5IhDk5lXBlu369AL3aKR2aYrxmZaGehf+sCse3ffQ0afUtbVvWP5M1lLVKilHsCc49Mj3ASE0jSkryJFBrueXWIflBUhhOx23KwNSKt9ykx2X8aWJhLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctWd/XVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctWd/XVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82CECC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712782696;
	bh=J1c6w3utqMyJOsLaQiQrmEnQ8cDgq6jjVDV6V3YN1I4=;
	h=To:Subject:From:Date:From;
	b=ctWd/XVW0jwIrqMxj15F2dsqAnlxbg34QxxOgmFZbsQpTuNwgpcYWm2N50wRb/5Vi
	 X2jplDTM/GR5mqVeQ4ryGWrgYfhCRdB0bgfs0P2YJJpoLC05Ta1fGTfKfBaZOR3Pv6
	 0RLPmTh9aChLeZjuE4qGK+MTsm3rXi//WS0NG98laVCWeIkfyvLoBlUuMyJqqNKY4F
	 BB0czopRqWfAwMj+QCuQMlgEeNFaA+oSDQcEIExNT6awE6Ebi8rEbDe4xTlrNHRf51
	 mu1DFiAQP0h0j4Bx604ae01bajheCA5ZIYuNnLcXNQ9UkfEadawpqH7grsA7FIhH5d
	 pkk1lP4CWqQFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70838CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171278269644.10032.17749890729485555260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbdebf19115c1b83a1fce75a5f7b0a2e8eb5c11bb31bd8453941c08278b5136e
Date: Wed, 10 Apr 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712782696
