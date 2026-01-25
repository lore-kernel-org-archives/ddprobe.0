Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E6E25771
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769360034; cv=none; b=og/W3WOc6jsa1YDg1you2cxXSa1EFabT7zYkD91jBlO1ZJfjiB9QUB8aRb6f2LoEIbuib4wN50QFyy1xkKk3lqldGK9isF3ISHcIKM5PTUKMX2c6BOh9V/WZh8L7fXORuj1txeaBpFTabFnCGPh3FgPj23QbNFY+qH2ELx0anB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769360034; c=relaxed/simple;
	bh=Q6722q5dShlqLGoFnIp08GSmyPZuuYtLiALpLzN/6dw=;
	h=To:Subject:From:Message-Id:Date; b=MFMwoMtgN0L6f6rx6g+3J5VirNnlgiDckcgrq4U7I9lZEHcvWF7yl1w1gDk63Z//iB9ilsmjM1C9yhbr8mgOHqrz/P8Tr3WNDsgbMpjTlyFmfPGYtg2nq3KQebmPFuA0qdV/DNjbhOykGYJFl3KZ3e348XfDRRxZzbZVozi4FVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/RIr7TQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/RIr7TQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FE5C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769360033;
	bh=Q6722q5dShlqLGoFnIp08GSmyPZuuYtLiALpLzN/6dw=;
	h=To:Subject:From:Date:From;
	b=O/RIr7TQt2pJKBFL//K5dq3F8/EQnQ2I8t0vkDJle8qQdQVqp/8fwpT0mdxeyMZ5p
	 9J0Qb994ymEYsncgjaxSwoItuYlNCcnfyu6EM0/1dv1lKLPCvrA/Ck9ygr4JUuot88
	 +USELP09+B/46RcMdXhFheO/rFoSwyxgKTjR7yc5+9B038u241giVkwEAxmPkaMCMN
	 L+734XUf3+46TCqD+SN7HY2x+ZRmCN9/QJrpC7KRGLQvlxelEobbIrYDgk1q/OCc8o
	 ILzGJyQyz+hFmmMKYEcxP6NYniWluo8AKAZSjrkTTqurDYjSKeo2yZfLq4i38yra3U
	 Trvv0EsPr7vgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941FEE63CB0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936003358.6516.8060674307938889866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f1284d519fb3595e95687a172e5a90b68c7b494a0f43a5948a9751def70f04
Date: Sun, 25 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769360033
