Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2058340DFDF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777346854; cv=none; b=WDSkCn8LCqGkqBwazkIjoHUcnr5MlglrTD4jTna0wLnmm8HLDZN/DkZG2SK0gJS0cRVXNhEcF3phXFihbDH2u8pJxUgZcndMDxigkzGTPzSAs3zrJIiSRvbDtwcDq7eA7cktMVkZEwbyq7fyga9UvUnehwD9YGOL+LsOZZ6k08s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777346854; c=relaxed/simple;
	bh=bKOxOsRlPchUyczUOCLSReRrCyHbJCiMQgNONKC1IYA=;
	h=To:Subject:From:Message-Id:Date; b=jW7ymkhIixgk7muqYLywfU4xH6FBquSZkYjYSM+AWCfj6ywht3N+fckqySvdeILmMHbu0XSETEuuSqZvB0HmrYHN6zM7n5D+gU3mjjcShvHIyuYLjtyoMTIQSr23Hal+UGN2xQSMtMSi05wWUAuofS2guf5p51zIIkHmsxM5uq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lj2V5o9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lj2V5o9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA495C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777346853;
	bh=bKOxOsRlPchUyczUOCLSReRrCyHbJCiMQgNONKC1IYA=;
	h=To:Subject:From:Date:From;
	b=lj2V5o9/i7qf7/dUmUPr6WU96rNU2tHtUVkodIht+mLgMMm9OBduPdw2OQ4QURzl9
	 aU+0E23Rzf1s1zNr895BeuM9B/DRyIqrSjmn8rGwUka3h+l+PMoIVFY87ak+TZJJnq
	 1RmC1m5m1eBnGshopfaxlGlNk9DR5Iq6HjF6LRhJuYPM09F1zeY/Fx3MWX5IH2EWgZ
	 xa81SaWwrgnjUjFpKU6VT2DKli7Ll4tQdW3VoOHAJxweqSPE5ecYdXQ6RCgLXQSODz
	 VfJKZVLt/FLGYs5CD5lzpc9AbE9GHMUD89hHWZCCM13rd78ETBNqRerpuqeH2ax6Hu
	 3QoeFk1FRJkoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D03FF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734685368.15583.9400470405678219355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3331d21c86ea265e33c1cea25669d799ede2e8ac044537cee1f8246ffaa6fb5
Date: Tue, 28 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777346853
