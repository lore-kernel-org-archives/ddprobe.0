Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE531F153C
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747337394; cv=none; b=YIaYwqLed2twFdm1LDIb/Jf5cxWIlai5bc40WytyFGU6EvBCXyvlwZG83b4VKQSSGu3q0y5pI5Tsa8Afz8J0pTMjhIwrUPVqQVSQeT4hioXuMuOoSs1NhL+TygWK+2z393Ejg96GcIik0eeHX54YZ2M2pE7dgiRlcAvgc74tVz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747337394; c=relaxed/simple;
	bh=gLHQ68qokPfaLQPujoQrZGewKelHVE5fBumirrOrLbQ=;
	h=To:Subject:From:Message-Id:Date; b=m2xMMEDPnH6D+VQzawdovvSWIbVAj3cv/SjR5JGsLgt9HACGIyHnelDIeEaFJXUc2mAPe2Ow/RNlF3lTtAFz9rDzGoQgpxCNjPROjjzLzrqegBz6XM77p0yYs7ErMMg+VCpcdhWhw0B9CNbLcqQHlgXRhvfpwh2tKyZMf2VBquw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+p5uVVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+p5uVVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A292DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747337393;
	bh=gLHQ68qokPfaLQPujoQrZGewKelHVE5fBumirrOrLbQ=;
	h=To:Subject:From:Date:From;
	b=j+p5uVVseM7uUZlhRbYvEQG5FX86QQNYoe6SnzvjeeFPeGSP6wtjS+UHLkN0gzYa9
	 UVW8oge5R9FgGpREh1TrRKo2iLVdNTDYGrZoGPPEdVE4zz10JG4HruZ/e3ftEjeTKg
	 lTVV1SiGKxcV89e/6u68fjo5g2SiRfGnWOmRgHaBGH4XoBIONLROcTI3xanYeN2c8P
	 EEqhmIrKST6jq+PSb9ZiauZlbnr7QbdWBpw0viHhmcOAJKgndFCn00gvaI+ejwHTAV
	 HNikFhi7LYJYiDec7xx1UY0yfr4wZrhIveAHzYDjydCT6agaF3rRooHgEqkge3zXNz
	 x7Ir4hxOc1+Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E5C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733739357.30063.3500329227933074405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce56dd9467f526202fb0f274eaf6e714f2e46e650c6f288f4a3cb1c354f96aed
Date: Thu, 15 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747337393
