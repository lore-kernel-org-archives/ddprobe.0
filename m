Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3636D4D112
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723499154; cv=none; b=bzUsEPylqAwaRXw+UnHNaBUzL6pCRmiI2rlr8nNafBKT9Bf45bxEUeFoRH8k374iK8AVJa8zImpDjEgklpnIQdv722xJ362snYFmGWF9UVs75bexb3meLQRXSTR/9HeXuwZFLU86FNBzIh58Ww7wYTr3yWd/TYH2wYpuOrL61DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723499154; c=relaxed/simple;
	bh=hZJSXg/iIMuwUTm7XIxJGxXK+g/kraRTtJm+ux1Jujw=;
	h=To:Subject:From:Message-Id:Date; b=g2Q4BCTDXROmgeUOPl4KKiCu3NtE5muiMbc7Fcj13W2gB0R627tzD6cuZYX7vfkwH10oWhP3fHNb0gtwrWVDcxEgytW2HVtQKi9PxjzisvXErfvOmieSPMJiRnjP9aoBhEXANZn2nw9Rw2bJgqM6PG3yaiJXpR5tZ9LVGsAxF/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGnUB3lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGnUB3lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F1AC4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723499153;
	bh=hZJSXg/iIMuwUTm7XIxJGxXK+g/kraRTtJm+ux1Jujw=;
	h=To:Subject:From:Date:From;
	b=LGnUB3lwt51XVLZWOB8P197bZWKwnTf7Q4wR1BDMlgXFPUbHQHse5q6HgyOeOcIRK
	 XfOWNiyPT3rkbYEGMGWVKZUIGx4+dAeAFIbMWZKTOpgqY9gK46jXw/a5n9OVgw7UAT
	 n6OpgChly95ymVk9+umL9HWUxZxjGkosTEsFlYOQTw9vEJcaz4rwuEj1Vx81uxWaE9
	 T5R0sIvmzSPCazeqzGnW8ZluS/U51WZHgTJRYzf4FKFlKu9/juNSEpNxaJvcpR0e08
	 y0Ub43GPYnX3+kcujRl6ae1sWbn10EQMlqqOHyLX3IvF4Kce5DqNUZrGpC/VHLVj9T
	 xdbyzJHCp1GkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFC9C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172349915367.11342.1686261258385658503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e441090c840a5cb8eb13ded290300fd5d9d6748a632f9d9f6fe7b8436fa27c8
Date: Mon, 12 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723499153
