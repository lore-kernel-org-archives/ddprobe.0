Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338B419D087
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741793335; cv=none; b=r0oA9NfJgA7LQVRqnBZ+joBvZS/3caUgFY612m9rP6EpUrKtAfRVQPHnoIk+387umHCqPIK147QPyts9vP2u9WeUblPqLAF+UtUaExhqOUg1rtJspl6tRXwuKxeG25w5vWfoo51rdWY5dup/eYzwKfHqF83U+TN+49m3ti8d0oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741793335; c=relaxed/simple;
	bh=kV48JdYSVio4S+ce+ruhV2IzOdBdyxUHazVxa9NTZd0=;
	h=To:Subject:From:Message-Id:Date; b=W/Dnc/IQKbojHVj3P1YRabNPOJylvGgAFJEjQVOhlj4fLZqcjKGfCgFu5QlbzZb+lvrQc1v2fgVdjcPKVTR2T8INcHSXWFNjW/W9QZgubib2ZLa0U0UP2gTxAKMg9k51VhtATL+UabZQ2UGUgDVTqSWsPGDJrrDy7greLpycSH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gopUNHJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gopUNHJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2503C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741793333;
	bh=kV48JdYSVio4S+ce+ruhV2IzOdBdyxUHazVxa9NTZd0=;
	h=To:Subject:From:Date:From;
	b=gopUNHJWqYURsFKV54D/jiU0/SmX0p+lDAvleoO1zr46OIxczrcrTx0zZVPNzDfVF
	 yBmm2k9Tt1evam05KO9x1DOsbkB51jcezA8rJPyFK/8b4J+Gm/hVz7WHPlUEhqPv+u
	 fCCi2m9lH0ujKId0Qanlb/NNZVOuHNCl4b4eCRIjgfaM4o9o2ktaIQr4i2BvGY+cbl
	 myOt8+L1oMu5cbflfwLo0mXTBe4y5mRejpftB4PKLpaMwzVW6VF9wW20NAPglJeAfs
	 D1By9h08RNhXF53L0KtbQBH8wNHJw+xh9j7j0bEJYqnPL9RSI6VyVqEIET2j60pVkY
	 nUqYdUnHV+gbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A09C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179333359.15346.3082083959469188335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37fa5770d0f493745616e1a3d259d4954ad97eb48ccca3843ebed83f770190a6
Date: Wed, 12 Mar 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741793333
