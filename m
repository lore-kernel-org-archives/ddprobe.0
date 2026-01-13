Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0298F25A2DE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768315434; cv=none; b=VNwkT3ippO8jPOnT2WEV/KuetqLruWW+ohZbo6fP8G9wqagbWvBlNTkt3Qh77gdeKL2SmPD/vjdjqq3xUaBVCIZeH20vA8q4ar5nIqTsbGf7zlBBlbHE4ghvGjp+5GtFklcgxdHSsfU7/dS7QesoMOXfgYcYLdgbQDiuq0R6Ovk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768315434; c=relaxed/simple;
	bh=T+hNdkkJbV5Cg81EWOlHP7wHVqmPXuZk5qqfEjTEDj0=;
	h=To:Subject:From:Message-Id:Date; b=sqHviCXtu1STzhBy59d7Fkd1TBjnClyjoOLfGZuuLDluAoAnKnoL1XwZ2YOCNsOaLiR3zswjoOQWT86G7iB0ZlyGCVN8G3VyZcEYkQ4nOCcPeklmq5bifBPo17teCtbF64U2d3k0ZrWWQwPfBxyRHJVhYlucdZSFnbMN6kQZzdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdEECZWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdEECZWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C51BC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768315433;
	bh=T+hNdkkJbV5Cg81EWOlHP7wHVqmPXuZk5qqfEjTEDj0=;
	h=To:Subject:From:Date:From;
	b=ZdEECZWYNx10akYR2SZLO4uy090akSqvgong1inGk1qHFq9XfTcV5TvPO5vvWHLLB
	 pF7pDPHle4+29qnXXgtn/lckSBrOp2/CTiZLdBfetC1vqsfkoQry6HuRizmEui9XAN
	 ls0N56BQPlhnx7FjEvA2lqdZeVb0UjKadxIpmnlNUSGawRa2QEyFaH0TEjRWDe496i
	 QU7/BZ9dlsmaF9zA3gMr6r/Mn4BcWBKXAjBPAD6RJxC8WRbwxU7ngYyX9lE4MS5pLv
	 KuMVJugHNUI5xymWtnCY5Y07a2og4xRMQCU/rlPkx2dge9cyoidIeiR7MMeAqmZkEv
	 tV1hgLlBMzisw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB14D2D115
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831543357.1452.1210559986996386750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da0f207bb4c4a2da5c290b0ea110802b67f6931c4c58a817c1370cf2c8b4de8
Date: Tue, 13 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768315433
