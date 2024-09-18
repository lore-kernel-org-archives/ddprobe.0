Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C9F1537B5
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726674954; cv=none; b=odkx7y7qJG7l+R0ibgKapTHIWf/tTUddVW7mK7P2hm7PsBU26awcDsB7/cFVsS6LAUwEtV1uz6NcCuAxsKBvJCW85TEWy6gRtlIxFpMJfG/arHyLotf4O6LLxjSqsqo8wEE08Sp/IxjLAw12m8gcScvyOmLUOQLAZ15hzCdbuBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726674954; c=relaxed/simple;
	bh=tiZ5rgAY7s+iPZRcRdQ6nG2DpJtCoE9CCI+t4ftwknc=;
	h=To:Subject:From:Message-Id:Date; b=F9Jez0PSSOvV6TSJquykSbtayECbtm74mPw0epH1AdS15X3TOjPrKIPyJnDvjjC4XlBOSSFv0u9Ytv+TKfa5/Q4VMA+CQo9NDJvWCzO7unxpoDWRxaDpDH+GlDm3uVSu4+VYIdcjzqmcKSKr6kdNMX8TSNgPveC0sDXFJ5e3iVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/8eKGEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/8eKGEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA98C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726674953;
	bh=tiZ5rgAY7s+iPZRcRdQ6nG2DpJtCoE9CCI+t4ftwknc=;
	h=To:Subject:From:Date:From;
	b=s/8eKGEiXP3pUI/z4ktV1IJoR4ng//rd6jRgnb9dtPdVsU5nAyfCQ6tiUG4HCduUB
	 NkbUqpj/UMKygMiu4khqmLuhTlr1PBJMuPQBgO3FFBQ7tO9dRr/BOmWLbCICPFK5e3
	 /vuMbop7nLx59wqDkidGbT/nwGgQr8auRDClIY6/A1ME6tOqBDOyfrfbftrbZwWCc2
	 zZ4ooSelWwIb/lf8XwTDyCqWcThixZtrry4B/H5V96IsZ8ZOVSIMmAYLiXcWoAP3tb
	 nHazhT3R/gwm6Ps8HorEwF4pPKL7vts6fLIl6Fgs2/X+bCHeeprYKxi+zIhvhHMIKK
	 ReC6KKI+BEv0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A0CDD547
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172667495359.12776.13674267739227631502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d46a7cc56a19384c358bed5301d47126de4d91eeceba5cb32e3374ed88a9530
Date: Wed, 18 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726674953
