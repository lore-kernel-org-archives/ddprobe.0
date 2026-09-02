Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605F0490C07
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788360634; cv=none; b=E3C+9V1/LSAHjNNiMf+YY2jwmC1Cj/84wm0/84r081SZbef+zMqFF36rYJvIz9ObjX/9VceIau9wUNC+kEM1bMmYrNGYX4M1oqGNBwOtlCjQ/YDr7praLC0gyjYRp0wgxWs3P0VdKxfD07p/xnSqQ7G2rMWN0uE0xEBVZr78N8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788360634; c=relaxed/simple;
	bh=yxk4j8UZ7ltX8A+B2N+gpPten4FF+SWeQDnWHKoCduQ=;
	h=To:Subject:From:Message-Id:Date; b=I9iamlssmMd33yzZOSbJ6vo7WDR3RCF8pawGfbxgTvM/TGl1su5Hqy5Xle2Q3Xeb76GT8aMb0w6FHUo2YCHCFUCxD3uoBUK0CD53gN088fxe5MWtPCGEEqtlgtPwgF0Dm6C/fOdONDNiYPdVF8YewYYvxp1VWpM4R0K+LKD5yLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAcdYRjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAcdYRjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F7EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788360633;
	bh=yxk4j8UZ7ltX8A+B2N+gpPten4FF+SWeQDnWHKoCduQ=;
	h=To:Subject:From:Date:From;
	b=VAcdYRjSYvfiiKVVQZGzHMFj1RDHgRALBJYDK+6J44n6wtMgqNV0fcdhFXhK2G2Lq
	 rq3KtG8LmZlfJW5Wt4p3771CRam4tjEPsRZKM/64w6kdtUkMYU00DcMMehOJDWfjgs
	 mQ7Eu6LIlcnaczgCkday/Uv/eNq+Dnroh/46V8CdenK1LXNRFf7yNdqnBmNlkyxMUX
	 7Kl/GneMpoZtADQq8qX5v/tjOTdphHQBQ/xzm2p/y7oKFTYz3bRRD02JrzpTH6h97y
	 20V48P2mzLPsL0h78kPjzhVbm30GXDZ0C0QuJRFPa01YddjHLGqeVug+QxalsUWgz3
	 sPSN3FOqAaOAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADCCC624D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836063368.17852.9130440660023508272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613fa4a581fc40b8edc71db74e0f70067e22084cfb8ec4cfc5df598bd2e0898f
Date: Wed, 02 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788360633
