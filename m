Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC5220D4E9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759938594; cv=none; b=rFnva0WVUZNtAyLOIwik0RrCqz1Ma5ni23fV190RePQIhqSPdpFNEzZOdyB9bnPmuGcL+x6CTNWT54Z7TvdtDLP5ThlO0Qwg4ZkbRcvsCxMWrH5JchJsVGxw6WTjJrdClMv2n6mm/gXVwnLGkmZIF5f+5J7EIl1BQjpwmsxNA7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759938594; c=relaxed/simple;
	bh=xez5SEUdWBIkSAcwAEJWIoSAU6n8hdc8KN3AhsSdF3Q=;
	h=To:Subject:From:Message-Id:Date; b=a59c7kQdS/lIiJd3EjfDTB2uxm4Ji/ZUrYmGw+YezjCGdWtOypYKHg2NVnJc13+i5owhizjCjydQhOiN+16R/yiIk6zbhNc2F2Jl1fizqOpvU8vAFuH7hQMjmtDG8o5Fx53dWK4cJ/BT2AasyOeidUPPxz72XGa339/zP1EkGaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ine6qol/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ine6qol/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22BBC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759938593;
	bh=xez5SEUdWBIkSAcwAEJWIoSAU6n8hdc8KN3AhsSdF3Q=;
	h=To:Subject:From:Date:From;
	b=ine6qol/wQgVWW+kWnu1wvC+LkhWoPsEi/hYemAMjWmKdtTHAnccgX8K0hVVq7mmB
	 8peiDhQ926wAOmrHx420PQ+ZbjNyUdrCTC07Tt2wbk1XsJjP/OVUQOs8p4Bcki+4Ib
	 QtAWO1cj4Cxj3sFY0Lke4Mm5Ofcn7ThpDp4E3hVqgkF0aBKhZOiAfdLW0R65rltiXz
	 dCbSNnnYf+14stbwPsy5A1v/54e6ipledcUqmQDFMpTLiuLTf2UU35P4c0bsuy8V2I
	 +7JZmTHaMpVieefhiHaUXVnerT/LQ6Y7e4FENtY3bAeXqgjcuFJwzilNZ0BothC7xw
	 oMmA++r5ScgQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FDCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993859358.18863.3091850902884094408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1bc7a74f6a8be4b521596611ec99e2a7c48acd2b7299a7e4448844f949b353
Date: Wed, 08 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759938593
