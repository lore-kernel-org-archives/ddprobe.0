Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7226B20E328
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749494394; cv=none; b=LF1BQnbV/wx+A7JBaozI8uiqaLp5ehnJRDlNhV30C9NWvG1d5E/LdlGWEYkSGP8ISAlS4699PI8O9SxNrqGfABJS2qyXO+xP9XeQ4J/98W+gR7CxAYPUtxvfDi5E/oxEDBFypTw+MFD7oNX/eXLR3G1VOi9hvo1+i5Qj0PrtI4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749494394; c=relaxed/simple;
	bh=ePha3dqYaC992RwQRgh8hlI0Mm2sixWf2OaHBPqqc+Q=;
	h=To:Subject:From:Message-Id:Date; b=Dw61YNhGhMHtCZm2q1oUaOpJLzxin3YjUBMKj8rWZt9HUjnMDR2LAS0vo+5etNXEpwYdY5GlZCczWKpkBx1GwSQUeVS8kF3Jx5IYt77gNhdZuNhsoAQWGe6BDEp4/gGGX2ZBz9BsSoKWJ11r0IlO4+IuUcf22sO96Z1CG7SVwH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIUqJ8O6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIUqJ8O6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60E0C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749494393;
	bh=ePha3dqYaC992RwQRgh8hlI0Mm2sixWf2OaHBPqqc+Q=;
	h=To:Subject:From:Date:From;
	b=lIUqJ8O6OLRDWEIPgo3AFj9f+umLyLi/tstM2QAax5N9A5Yon/OmuRKmCfNVABKDR
	 bjxgDiw/EattPrYDfqtE9KJGP9OWcywEhJJO3gbLQu/KDIrpwQ0cMqHJ7bPqEq8dw7
	 Jwi/SY8JJWKbdowvwweMKFSaPQWQ2SIypl/Tw1WBeC+174gfDvHzg9cxMa/reDNdrr
	 eqJjY83isY05+jRV28cAkpoRsbN4OSygCi/eM4UB9sNewr20c0JU/rjabu5XGgo3jO
	 jLxF5j0z9+zEFVVC8P2T/nt8tvECT9vuVEIrc2tBWUB9fnqoepiGigAX9iFg9Hn9Vk
	 yFh5SoqNy4Nbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA73C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949439358.21643.8962029059495137462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b3f23c226cbf5a6d6ca21c53c30364832eac14de8da98dfa44e2c6f8f163ef
Date: Mon, 09 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749494393
