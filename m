Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4833CEBA1
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776088654; cv=none; b=AU9hiVxfJeIcnxAZ9FydchfjXyebHBJpT97X45CtWMwu8nGGLBsWGF+7Bxh9tJDoLLysHl8kR8jj+PglMxtlZPaQ3LACJrCwrFpW5k0Kl2N5gf7cibrQTZ+BSMvIc2zvOAq/MzN7GIRFroIoEXvg3B/yHIuX6uouB5g7AtoGnbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776088654; c=relaxed/simple;
	bh=T+TuWcgP3LnKEiqIy6yLWp6K5XkvK/Y30CFjeiuBGAQ=;
	h=To:Subject:From:Message-Id:Date; b=JmgWKOzauGbp5H/Myd8RI6PSZh06IeFyvB1GITDybGhkOiK65OjlrZ+ukEoDbaZcA/gstkJmzfkaa3fEbnD4CXIZ9nRG3aklaaYLIbJsNX9TbY3Kn5AlUOdn/JNLD3xIuOqnujyJ0DpadygJ4yhbJH1+y+bNXfiOy8sPsR0UlNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAEkjsOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAEkjsOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C4AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776088653;
	bh=T+TuWcgP3LnKEiqIy6yLWp6K5XkvK/Y30CFjeiuBGAQ=;
	h=To:Subject:From:Date:From;
	b=PAEkjsOD1lxPMY23bDSvTE9Lnq56zEl7FjzxP1J6R9cNuMjYc3ju9COofSFfX33mD
	 UmQ7nYSaeLhSqOxjoUvu8Pe82ms8pSnF7H0GZoWhgrdftvAiG/Z5/PDCDVB5QDAlCM
	 jynEn8EvpMJETvVy8Ux5EFJ1Ssbj5/uy9/VK7clpMaV6yDZ7QOPok9/2YHXg9YBDcv
	 bi9T2srqYmSYydgssLfq50u0yQJDOu1ndPLd0Mq3ozVudzRMiBS/lJyWHdFrxz90xZ
	 b5dYkjcZSCvIMP/dW8/Espey04FVLjIJwCIL88wAfpAZDob3cQk3p69uTsOST1+iWA
	 WoqBRLioaNJOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F03F34C4E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608865368.1871.11190884414223890395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7ce13dafeaa1cb427b9b5f5e18ec06d42728f58e937a3ad9fd572303053fd0
Date: Mon, 13 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776088653
