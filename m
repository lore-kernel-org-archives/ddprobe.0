Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FBA13B58C
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758687594; cv=none; b=BZ8HwEQofnHwEJd2Y0gL/nq5n95at2ZT5v8jKJ0SidC0GJsWF/RRHu57/we6kl8cZSoKSwYc0bSuTJoId7jbPyfk58XkrHVKioCjAxjNNbcttbYWuY/ewLI9SvBDVy6C59VKF1UKZlGLMU1dlkAHKyFZXTQ0sGluyL+iEVTTlI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758687594; c=relaxed/simple;
	bh=1qY3xK2lrxBcOh+0jovToiUcJ3k8bb2ImxXWBaVYLC8=;
	h=To:Subject:From:Message-Id:Date; b=EPVlPjFl6dRYdxveOZ1uaE6KiD+BNAG1L41syuflt5+Omz4jITPU2tLDImNauQ+tqLvM/1EXhps9FJ/fOpUzniOSj+tEIDnGI2puYNyZiwac+hTg3YD8g5dutW4LgrBV5p7e6b0zBxcZNdSawvYWRUWdbdALgMo3ceJM7NUlM2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgZvW7Fa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgZvW7Fa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0335C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758687593;
	bh=1qY3xK2lrxBcOh+0jovToiUcJ3k8bb2ImxXWBaVYLC8=;
	h=To:Subject:From:Date:From;
	b=JgZvW7FazFtUB/zh26JC7Kyow1mokOeieWEw9LBT89WAHkc3VF9Hf+GWNchKoV1vF
	 xyK/j0Xvx2clrmkNUNgP3uJmqXI6zYBZRLpKrPDZYpPyCmHNVmL1Dzy2T0emUWxHud
	 KoUCEetHlTsVbuVAI8GqIrJmspw7ABwGuCxA1omS2y8wbbTVu65e1Nvwo2CrFGHSB9
	 IavcNdezKCiNKO6rylIQF8KvzmhAnMJNF9Mf5PHGTanHvRn35JYLAPOPQKs+N0XKjN
	 5fqd2FGXLUQf1HisiYZKGpNwUuXdV6MoRRK3On0oVPp+/VVolatq71uSUNqDiv8cL1
	 lnAEkuBwfCahg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E30CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868759360.20392.17452529020244691025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5cb2bb81f2a31f877f297843d1524e98cf1af62d694b03beca285d03a919d7
Date: Wed, 24 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758687593
