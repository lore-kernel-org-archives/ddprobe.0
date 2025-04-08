Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D034525EFB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744073993; cv=none; b=imM/jC8MvifPcy7uc9K1mFbTu6KvWxLkvhZVAgWlttcrGU9IG3KtAUc8qStttXxG3YEQJsB2as4uxJcYQ2near8vWsaS37UY74l53BNQz56ZUhBAugeNUtavebm0Yx3wgN4KAmDYHK9q4KxvsjPLCLwrsR01CntlnS8zssd9Vhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744073993; c=relaxed/simple;
	bh=UbCttKOgYLkAnYU6aOK5+NP5nUYwHzCiquVEWGjxG5o=;
	h=To:Subject:From:Message-Id:Date; b=ecdjd7QBG2K9q1zlV6O1kpStoCrMRQfCHCI9AjKx5carxy+W7SnQyJDNWJ4kr4L7yqQg825EiVygzuzQidHZlmH58ie9/hKNsGb/ZpWL2MIYNxt6icTnyo+kzz+1o8Hm3vPsHkry5F+qkzW0F0pklKel0Gm+t3lyR3iJA3bjnG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1oDIOCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1oDIOCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC109C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744073993;
	bh=UbCttKOgYLkAnYU6aOK5+NP5nUYwHzCiquVEWGjxG5o=;
	h=To:Subject:From:Date:From;
	b=a1oDIOCV5YZTXFEVNwl8VczudDPLT+P6Wa28gqh1hHxsXR5EpFu+XWHAe03i1W4qt
	 CwPyJH1So0HppSykfFtdNQkg49bSABZMIB5U8dDq5p/dliXYnS3Q+wrB1U1TaLuQxU
	 jqFFJI1JqbWk6FJh6B9sr+RuzEV+/zokbiv1s7SWY8VRev9h+yxBldd/k0gMNOp5wI
	 tjnbWtEgVijBh1WUYhuG6rDlCVAfCUXA4FxqraDEhp4/6wOsD4sVyAWt4QtBhnx69G
	 Ue9wziUuvQMtb1S/R7wFHqDH/5iohrZwtlU+D2/l4T9Z297quNGh/4UT6RsaOn5ccY
	 eE2ApZMa/ePqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96126C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407399360.11674.7826692617700952605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2fd6172eb2726cf9be7c3c9ab10c7990ce9e6fcd0ad97d30c6ef6d4520f54d
Date: Tue, 08 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744073993
