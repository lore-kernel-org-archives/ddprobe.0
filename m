Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA423385BC
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782940114; cv=none; b=ZgtN5lMSn5F/QkFedR/Bw/SoCS7LEHW0pEAkoSgEsvMrju5MJpJtM6/ISvbIWptSs+wMSHI+yY62c6Kt90PkaFQwdgGX3zPFFxnNX4CuOayutSMnViWnxuN6c4XO6ZTlKqkA5QxhuiYCnaVnAASqpuRJoyU61uQGcJcZe5fRiCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782940114; c=relaxed/simple;
	bh=HHJPmf7OzlyjRdGskJTG2Fx1yRGo+hekaP81BfiZprc=;
	h=To:Subject:From:Message-Id:Date; b=qR2aW+T4Y4/skXcn3ssic6I/w9XS+OfjrzcCalvPXuE8ywWDiNDM4rJ+J1xlu19rSRYC76OGO+puOsueBYPp49iRs/leGsonWxxvReWp0f3jJE033sTs6GKoTaFrSL5J2al1dqBQhWu0z9rlQhMMb97G+IbsvGH4BzjjB6suq3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJ0fy6c7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJ0fy6c7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50C8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782940113;
	bh=HHJPmf7OzlyjRdGskJTG2Fx1yRGo+hekaP81BfiZprc=;
	h=To:Subject:From:Date:From;
	b=uJ0fy6c7gsRpS5+uaqiKFMIZG+6L/r+/GRne5Q8tAK6VHMt5lU8Af/Fjq9VnQ31Hr
	 Rb1Hbwcg/eeX5ka/eq2YXGks4bQB7GkiBOLcTU+fk7B5ErbMgB+sUHPTStBamesIDK
	 bdtTiixbDUpyYmmmBlgDf1eAbc9uoo4IFy/rCvZBvjQP66ojMDy1QojZnykX8L0skO
	 uZPhr9XYcw0+0sk3d+q33qKUlTzgXdahhxg83FxgjUKDBE5nCRrAJz5IWPps9fadSC
	 A68RLvqhQcDFo18MbWX3A+5l72R7lLN5l8NpV3TNjvXrVK91bwZrJhZMjM8NSrps8x
	 Fc087nxhmwmgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FDDC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294011368.3061.2513091354597008065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52557deebed22bd3c28433fa88853c27beb3b0dd6e96d279861c50c4f25da25
Date: Wed, 01 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782940113
