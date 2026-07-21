Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466503E958F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784615914; cv=none; b=polhgzqpL1ElNrNtfJa5vJia1D6yBsfSnr7853ACopkbvplDhcjvqrjAX3rKioH3UBeYzCLCYOdZyb/amMarW0DoZNsiNivwmupTToq9ZuHvRcDIDLmyA+04OzvYgrTx53jsljOoI3xO5bKvIRd5EZP53eHwzPMJzjmBn6AiwRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784615914; c=relaxed/simple;
	bh=+/48mWD0nhOj+zfCpkvI15/revk/L9LAnechhMC1rsw=;
	h=To:Subject:From:Message-Id:Date; b=d7zCWQOuvN6r4Ob+cLmQyplM9wy5d9rTrf6mLOwcrx3wD6EOYntS4m/dUEE9UJhHqmRd+JNc1ozChtR70MqevbHJ54lskY5AD855mVhXee3xqEqn7MmKCPxZZ2V7eutB2uIKEkG7gYGObfDfAFRgrXsSmZukbHQCr0/8m0l2zWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihjCR+yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihjCR+yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4490C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784615913;
	bh=+/48mWD0nhOj+zfCpkvI15/revk/L9LAnechhMC1rsw=;
	h=To:Subject:From:Date:From;
	b=ihjCR+yotqP68bpdM+fCqrKOPyUgEvKWPa0J5YNI6+/cA1uNxczi9hmnFBLNlWJev
	 +TDFfiD8qMClQh+cbTI4DYPVt3kZ47GRZ5uh11KMfg7itp6J6r94H/2F/koWD6dC0J
	 1IUvy9m4UZCo71toIkXOrmPY/zUM5fZuCTLsIKOsOTRhGaQGtq2Y8g5DtXM+ZxEPOs
	 n/TARXjb6UpPEN4vSbkxCj1D3mNDHXvbckKhsYpfAdo4bBzzfMhtZRe5v6RXZdpY+9
	 oddrBNPf0MRGwrB3UPBCxRTidwpT7mWD3GKl3gU8H3wHZRd+TtSwRp5ILJqRfyJbUU
	 Q+GnnZuo/SBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E4BC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461591370.24682.4674479282797595135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71dc01b151d3e28e2f2010fedce1c817d18c90916ab76c130c987c12595a9530
Date: Tue, 21 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784615913
