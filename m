Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287E38460
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777868254; cv=none; b=nK1cC1yof6boh3oYumY/fZso/dB6ICb8nE/rK1oBnaJzsTBmg4oXl2pUxp279QnahxQkd7QlIFih1Sx6QlMeW1lludyR+GKlln2slLIPZDfdIBxQrZRwAIkz9zowBzWa8H1977EDON70ZZHhhkTToGZBP6YAhEkWP8/y+3iW4cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777868254; c=relaxed/simple;
	bh=AZG/GuviuO1Vcbyqwlu58ue+Tql9ov2TSWJ0eyGftuw=;
	h=To:Subject:From:Message-Id:Date; b=h7mZUCKMQ/oMoGnWmME26DW90XOc8IMWbfBMo7PyD9CQ2vDb47jGhBvdhq1RGENBpfCyVuRRY4YE1I4sl9aUFjCDXHek4g+cjQX+8rIPhVL3PPG0Q3nCd1+OIuKdpC+KgSSH7s1yFZq20+WxnmrQjSPKSCEnuuCeHACp0FRiWUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMtnkY7J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMtnkY7J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8163C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777868253;
	bh=AZG/GuviuO1Vcbyqwlu58ue+Tql9ov2TSWJ0eyGftuw=;
	h=To:Subject:From:Date:From;
	b=lMtnkY7JtSpMeHcHg6evB5f7T0fJN2Eenh9PpgE97MoizgTlw+xaL8mpxfCqukE+W
	 4jAOcnGzx5gH2a3DPO4ovFLUOziZ1BeopsDqEJacYj0zsAPIzTRAlxAIG2uWCFm3zn
	 kXoTWcHelksUvNcflbMQp/t5aUvL4JwJciE0LpgJSL9YMFi3DN+2Qgm2LbU338QCw+
	 yeSQRICr5UHCDZZkvRt7hbNngGDLqHNEevEKVfsBDGZO+L0Apk+LtOBDvpAy4NVxJv
	 XmhxbS0tuuCcVcXp0IoKBLGir+bW92sC/lKlm4UbENniWtFRG+jZfL1YQWjm+7QPOX
	 YcNOY5w+lByqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9946FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786825368.24193.17019378703132225005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95997c89831c7467818a984e3ab3e2d90d960018182362f69c7c06f6c48c4ea4
Date: Mon, 04 May 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777868253
