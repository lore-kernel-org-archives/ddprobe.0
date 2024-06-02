Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78FA71859
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717296323; cv=none; b=SvGvG15ZrwhpQsJ0xRHv/kHvAuE7q6lCsoLagndy9JIXHsoficfF5ZRolIQb6KNroj9d1rGqm0AZNKekOdmuysOgNKa+hp+KCEkDI6ox1+cbk9aEHgay8JHs4uAv9yYiB4xzJb9tmy18cU3FW5D/vTroSH0GCTXH+sucAQ4RX6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717296323; c=relaxed/simple;
	bh=yny+cHeRjkeLYFPGBB8oumrMuYIyCdsixh7+3QWFqyI=;
	h=To:Subject:From:Message-Id:Date; b=P1memJEvRbeubE7anHiwaN3D4cJ6LdVpZ0apGG+H8dHoPECUDOdYjgIbjy1lh0TgTOYFvP8T7KVluMghADdyMQ9Bac7u5ZA/TnybcDAk/aslYjjytJDJc+hEl3arNNTwHerR0wKqtWvUeV74K+LG2ChRGQi+zEWcvmMHWlfIWT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xc5TAuBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xc5TAuBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F373EC3277B
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717296323;
	bh=yny+cHeRjkeLYFPGBB8oumrMuYIyCdsixh7+3QWFqyI=;
	h=To:Subject:From:Date:From;
	b=Xc5TAuBlsJe2QXwjke1JnWkNQyt4qvR+EepK8DEpf0wKhQWRD0t1TzmquQN0Q3lao
	 7nuKeBGL5XDO7AG8uTLp7ZolKk40fvPmpbp5B+Ic+FP5wGe5XW/lEE1gIFUiTlg1a1
	 KltsAPYWq75K1gqqzcC0iBU49vOi5WdGpueOlwX9bc5mo8wVxyeD/FuV5+HLp6f5El
	 XHluIlsct8MpjpbJmEjVNNwoHyKaLkhErERp/z8xh3HsJ23Gn+FaR8xlp+eM6MRuUF
	 a7mUP18eF0EYAr9PRdoH+xQXW6qpiY++cOGexlMFNBM/rOs9+RSLBnzfPRTD/z3lYL
	 xHtxFu14ZmhTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D342CC25B76
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171729632281.12626.16820710656916248064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7329e35184d7ed78dc04379615d7e3fdd4e9d8d58b49823cf7dcc4474722cc2f
Date: Sun, 02 Jun 2024 02:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717296322
