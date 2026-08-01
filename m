Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E35A1DA0E1
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785593434; cv=none; b=vCml9wMQd46sS/YYPzWjLH4QHlz0lxLZ0Jn0+6p0fH3ZqN/qukJGP4hL6Z/+YwaWOCGOc2Et50tA7E6vqysWcn7yFZb23Vmel0vzpLbcnpg/gP5aDKPND/SW0Su2sKIunU95gUAfSYClh9l7CMwZL2pb9mfO/eFsvnm3m/oLliQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785593434; c=relaxed/simple;
	bh=4nD0cKCAq/6oqPtqCO9NDmXGMQA9OAOkyWe3w6FNbJw=;
	h=To:Subject:From:Message-Id:Date; b=QergQww+gVc3rKvzZ4ZChBcWj3vmI/Xmq7fg9TqSFEcbpTeOaE2d+xoTXbqp7v0p2RaIC+oRBFk8DQgFvbHQ/UnvXGN9c8A9GVMsKPtT/MCpjMfjPHp34Wv7h7OIQ0kaqvFn1U3ODU/6AQA/gny6FgFivitkQwUjGokgpuQGcHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEK0/vKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEK0/vKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA878C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785593433;
	bh=4nD0cKCAq/6oqPtqCO9NDmXGMQA9OAOkyWe3w6FNbJw=;
	h=To:Subject:From:Date:From;
	b=TEK0/vKLNx6Xk2lvVnLUW19Tcs7b2P5HJr1DmVRlUgGVu0nTXzuRqLHZ0p01sapqq
	 qkTPtcdiiYTllknfclYNdHKpxEOxlnVELpYI95/JOp+2Hl5ApjYRcSIyeWze9lSEOJ
	 Z4qtMhVAkU+wTpQ+F8accZ3aPl2ivcCdaa8DQEx1fHG1Ziw8+vzxdFBw9ipoxKuOGc
	 HO5K/9vZ5QoqascvlVaVdM9B1/E9EuXs04IvdddJeEj8hM2idzDsyNRCIYB7fXagBt
	 lLKqLAlZALpn7Crx2efVWG4VMq4SxV2EXzoVZaVXayLZOcsgofO4kf76lEYvXWm874
	 fKsIXfMFs5nuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E12C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559343368.15784.10163388198778746645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42393eb686be06f02e81ac6ec5a4fa1a690e8c632df4c2914404b50009854e3
Date: Sat, 01 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785593433
