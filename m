Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB80139D00
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724405154; cv=none; b=eQRiB9QxobSZ2fXDXzwLSPHN02wC76kEYozdGYofwaEy7LiSBTTtfBEIVyPYKKmorsU5Mulsu1CuSTHpmYuqGhA4RYSpZWHl+3bQqcVwQfHdfLDgjzMUeNVuPkrV8dvepTDhNVsp4Ho7TWovrSBrRiaG6FJ/tQujq5m2Y3zm+sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724405154; c=relaxed/simple;
	bh=T494EZJq7FVvvbs0pLTNymqtwOxcuvpiRbS4Lds9x2I=;
	h=To:Subject:From:Message-Id:Date; b=PIRcE93PYvxXAUefFKihNVXx733IdkyaYlWLMzeRLU2oNANUyxSWTyuGZ0EpqoXRbkZ46RZnPzFoRHUustU73aIOPXt5Bmqdy56yRZQmQNGcUGv2XbqV1inHFRM4WDEqJbCOP4cyj2KXU0klG5E9H9BKBZgE446zGG2E1v8lVjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srslhHyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srslhHyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF585C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724405153;
	bh=T494EZJq7FVvvbs0pLTNymqtwOxcuvpiRbS4Lds9x2I=;
	h=To:Subject:From:Date:From;
	b=srslhHygks1BqjfgVmHpmXBGf4llEEbZdlRO3Rh2/0KucWCju4u1QZX+Zv/08q9Md
	 BBt/DfpOpdyJESMqenax7l0CSAeo120QMdqPBVZOhu/NJLHnZ8NrEt+1ewPlFoagNt
	 XZhzcn2ej50HiHvYs/3rMNO03lWoBT3AOM/KwQbFOa8kX9NrqjTI4OjzJQQL76Cwxz
	 u1nRMthJ5cHsyXar4NSHAyNGfG/WiIxvJbOHd5lJcBPfweq2lvhhf3laqL7T6wEqQ6
	 00Y+tBZ4CHzkoz9wYNNRJMuoEc8J0zR6tDy61cBL2BQJBuzoE9LyoCZ6RylaJH+AB2
	 9WkhofoxGfQ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2D6C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172440515363.4859.16226568375036911731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906423297371cea3f64baa2c833b6e992c1a2e6c6531de1aeee8f90c05a7f286
Date: Fri, 23 Aug 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724405153
