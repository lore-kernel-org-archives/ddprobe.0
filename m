Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2318B285C96
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750082394; cv=none; b=KqASVKtos6zqzTRudrTusNkcJihnx9KQdPU8NVzLmsgkLwc14V+5K9JDiXagMmOQUNhV4ihgisI3ixYiCmcrtIVecRqhpJH1FqnKxV4uRAlzMQ4JWmVgrLDWb50d6K3WgxMgNXAKbvGAVQOXSapGHsFEXcLrY4e2zTmmWpoQENo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750082394; c=relaxed/simple;
	bh=KNzoJvdF+eVuwAjWMq4g9luzRmBFx/Ux6rT+akozv1E=;
	h=To:Subject:From:Message-Id:Date; b=AnbpyVL8q82wtVLvF28nW1hwCJtF5nhzJuDms8l9+7YLlOrnrhEN81ypl/64mrDIfvwX2eoZvq+kVbdYKH6JSSEuhJGcAimnK5iv/Ib3oSJLxCXiuH7QBImzfNedA+NXdSn1bkpptsO6pqc7kKMnD+vnUsZJAPhbc/bxdCOOmTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWqmnBmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWqmnBmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9015C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750082393;
	bh=KNzoJvdF+eVuwAjWMq4g9luzRmBFx/Ux6rT+akozv1E=;
	h=To:Subject:From:Date:From;
	b=SWqmnBmKp1pW4JJHMfQGuK0WD17LmRk6On7Q/bq3mOfqrZP394Xc3Gom6F2pk/g47
	 0WrBoOYPQ7/a2REAzbkIwqI0JzMa57z22yDCTuJUpqltM4+68eZYtPKglRxxdutu4O
	 vsgfrS22icpXsLG6F9l6LxrkhLn7Nk/DSdZExxPLmCjGPbHFe7Pc+K/jLaMobTwwrZ
	 EIL4bPqO5LDe1ISuDj5osuv5KOwkfzqeWJgubF2xWJrOTsc6hs+Bi0l/NfYDNxbeAI
	 H2PkM7dZNfEjEp8KYNFNSkvWN/qnFTaS3vWQuggJzJxpXaLFdh/BPq0B9PJFfjhIOm
	 +dEQvh2IENaIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938DFC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008239359.2517.9195316695274489702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e055071de184feea7d5d7a8115f6cbd8d6feb6be20cdef2cbbbc11349082a900
Date: Mon, 16 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750082393
