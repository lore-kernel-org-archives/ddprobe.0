Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9A4224B15
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759927194; cv=none; b=MxDSYCTCaGM03GgFOEndLRdF6gUd9gD0ejWpm7TV2ZLHrWAJWQgkyFhiFcuvtEHYN86VEOu1WA8kdpFZS6rRvdOMginqOV7niBb2DCzqJ0imoL/7CeqCwmF53jMt5N2HTzZtCYddargSJlx2YSlCXFaoQXkWVAMjGYPneyr4QVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759927194; c=relaxed/simple;
	bh=4t8t1SbtCsrAND3yPonyHkjooQA4hG55IBWB+05JXU8=;
	h=To:Subject:From:Message-Id:Date; b=bUIUvsE9yqmvEfcVFuLMYM0FvU5mWKzlnqkHZHBKBpIECjSraidsp6xjwEsA5zJ1WdQKOLpwpjus611zc0xCohs8MXRatNUrCz8VOfuTfYrgU2GqwIfwR5hSuRINGrYa7KahxoUne2DE/T03RbPg466668HMIkF9L/c3ar5HL20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTvNjM4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTvNjM4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02BDC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759927193;
	bh=4t8t1SbtCsrAND3yPonyHkjooQA4hG55IBWB+05JXU8=;
	h=To:Subject:From:Date:From;
	b=aTvNjM4Qn+RzNn8P/PIc8w6nF54aIzK37FXPmtl0DJhhoaFexXAr9X3S/FhkqG9lU
	 Fz5PyaDomsXs7/MeTG46wh5/a47LRKtUz+mmrl+6mftqUNKTF5fU9vfRTc/YxqJfxB
	 BvcrWQHc5L9MAvr40f3cd4AU9+IJK0eyXg8cnWwW2JVd06HFuV8MLfd69zY8oW6ENw
	 D22nt79HIZvLThZ+ZjK/R/bP4vtv032I7osImzF6qZdQfdUxX7pbVKO08sFxs+RqhQ
	 ueAXFEqfGuKWNzP+QIgGcy61r6lrBHwMMWgvTiyiZs0DcWBcjp5/03xsAMH+IlBVCU
	 IW8XcLqRwJr0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F63CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992719358.20400.11536452716401624481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2fac47b8227900ca0700bf81067074f04daea6943a46bbfd1db878e3f0c4191
Date: Wed, 08 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759927193
