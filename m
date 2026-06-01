Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D12375AAB
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780318474; cv=none; b=eAa5bKnKESGLvEEPVvrf/fgLJyjd+zbltJ6xucVYVX0G0Uc977NmdjpWxftkxF0cSgxkcNeinzcfMEpzHncDZaTOq/35s9Jfu0ZtrYanj1X1DXgcfZTE3WAf5JMaSPKcX/g+Pk422crwywy5xj/Z2545TYVawawOzNeXOmMT6iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780318474; c=relaxed/simple;
	bh=F15ul8/x4t4fadW82WR1uM19bquIYI7V2mUsEHVpTQ0=;
	h=To:Subject:From:Message-Id:Date; b=qPWFc5TdDTHt5uQEiWPjGubB3cpWyAizVeFdEjB2y3Jl96/o+itnqpNIpc/E8L6GrOdIEqYaKFasl3Qm8vYOOaJFmaWNrDbXsF9ep1YYdqKqDnlKdtTssDSDc2TRlA4AvcDwmV2udJMsDL8ZELnd/PXrrtUT7AmQT25j0wmfgwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpsxsZ0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpsxsZ0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 044D9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780318474;
	bh=F15ul8/x4t4fadW82WR1uM19bquIYI7V2mUsEHVpTQ0=;
	h=To:Subject:From:Date:From;
	b=YpsxsZ0+MsARnATKA08NySOLwpQKD5c35NP0Blgw6m3CQSPR8zKuLiuqEfduvD5LS
	 WypFCx/nPSF1+oJJNcfgFm8CeuD/va3ZPhtjGyvjUWZ9JwNHD7EaQrgLTIjsn+4pzG
	 WuQZbNBT5dHebmZ3zauJEJGVpDxOT6HAbiFQFkEXYxc1YyD4PZY7RyWAC747xAX1CY
	 YXu72ahOrAIxpuIxGVQqWrMG4P8CGg8MkrGZzBXfTWSroCYgmBQV2Ep44/D8SBuyTO
	 ydTc/n24oeJbmU6gg+av1Wc0gntEbsqwJwvKGX88JjFhEzDtS1Xf+jKKuVU3RqABb7
	 l6jagfD2LfWZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE913CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031847383.20281.18432520173165558511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330f8f605609a541344ab67b7f66f8aa58af5c9434dbfcf2f3c89221fa1104dd
Date: Mon, 01 Jun 2026 12:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780318473
