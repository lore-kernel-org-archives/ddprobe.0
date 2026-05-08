Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7DD301485
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778261854; cv=none; b=MHyxRkN21jFbC29a76+VYFPSn5PPL2C05sW0KXN/lQ4p2+CsiSRYU/dMQfKy9O184kSMpFWQgWJ6iHxkVOzuvmaidaAPL/Semlxayg+wrKNwW5kyEZBzoCKBMtiKPMT3sqov9QGTKCiwEi16vSKoXFKEGmwBcuX4FbuU26isXnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778261854; c=relaxed/simple;
	bh=mwoV1PPqd/yoaPmi55byAU4xPY5vcZvv8bqfxTTQl5c=;
	h=To:Subject:From:Message-Id:Date; b=P49q7LWEqNQdFTHPkfrsoCjv327O2+TwHMwjSGV4UcLj6RKtyTy36kGuee0G+C5LUpg3kY5718/XR2GlhLLh2A/+HCV/CqAh05nS5z7M5rubp2w+3Y3r7qUIijuqcOI9MZNEcBYkJDJRte5I5lArEqsEq+YNitowmbP96g7I6BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7IeTG48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7IeTG48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0D1C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778261853;
	bh=mwoV1PPqd/yoaPmi55byAU4xPY5vcZvv8bqfxTTQl5c=;
	h=To:Subject:From:Date:From;
	b=N7IeTG48wq2NtqR0lLVx8rpDRAFwzpUDO01c39ovfK4Iro5/9AQLpEGk5LBgN5Pea
	 j6m1z+ZABPihVDSpjFOTuPzXPdMAE819EjtEBR0lOlFJPLLgEpFEOb71iD9icR4VY1
	 pZ6FR1eC0L7lNserb+XwA9p9+ebZQu0jnumCtO4CxP/S8IkqXTGZyvm+jt8Wbt4d7Q
	 eBSmKdgWpuk1bNbeaxQp/TA8QS0PW+et7gi6ZWrWE9LQ+PN67wiRq3BOAFB61gE1gE
	 GdtACBksTGRlccerEBuE+A9cqgadh2UNintH9rrRxHtJycsuHF5T1dJTJLOV167Jgk
	 wQOFL3pggg7gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4A3CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826185370.776.9998813537237726499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da278383e3279cb3b34d8188f8fafb950630668b5aec36d001b0b83c8bf153e
Date: Fri, 08 May 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778261853
