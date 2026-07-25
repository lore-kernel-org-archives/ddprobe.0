Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579C8175A95
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784960434; cv=none; b=UKHa8o0xm/u7xxW9xsiOVhiHM7zid5ExGoVYxvYDlAxlAGe+LTCng3Hl+n/KL7x7jh1nNZ33zp4IN8MWQ7rpXd9F610ozqziqixkwdYF657/CFUNyD/kQmwLpcFk12lC/KfzfUePrbIeK3lolxbw3ZRRDPYKxlu6giVz+jGFltA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784960434; c=relaxed/simple;
	bh=C6NQ3I/+/Cwa1JiTV74y19Nf46dggimLHuSekjjvSd0=;
	h=To:Subject:From:Message-Id:Date; b=SCL1bMl5yy776yldVDb9IoNBlP1uD89QZwbL2GD/aFCSVSYE1L+iwhAZ0rDw3kPPYJonhn7WC3LsRgqkP/xi7J4gdHc2JC59srOIuaFfBVb5k+YoSTpeqJYzQ30f4WeGhp35XloqSj0zYb+GHPfg5W1JgriS6I1dZtS/dSadEMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqcjPBaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqcjPBaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D819AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784960433;
	bh=C6NQ3I/+/Cwa1JiTV74y19Nf46dggimLHuSekjjvSd0=;
	h=To:Subject:From:Date:From;
	b=bqcjPBaXLcUJroqlwGZM8DWW9XWBXrCAEnjjwxd6uVjfP+qot1/dNRdtYeBykH/Bo
	 ZMLfsv1LOxWezGgBRr2KjfQMPiBlw/6148gwCX1F4Ts++wH2uXSu2DePgQf9uTwPgv
	 kgGqWMASTubXB/pb7dHvUucSXR3Rw9tkNiAwyb4wLWu/ppjzGtUgVchdELPl1hYepn
	 cSOZSfPI47glcIaKuOKriO+mxZ/eLP/nB9b4ODG5igWovPyHu2BFPO5IDwOUblGMov
	 0yczP1C7Qv5e/VfwNZzVzSbvW8bJLmSdRS7d8KfwtBAcTOL2Zc03lgr9Wzo1EKdSOf
	 Z2g6huCg+r78w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB24FC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496043368.14932.18384069366204102874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd7c6d6c614196e754bd8e41983af7545b8e3065f44c4d634df69fc57047c1c
Date: Sat, 25 Jul 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784960433
