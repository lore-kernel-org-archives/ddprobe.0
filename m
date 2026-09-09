Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBA6501F25
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788995434; cv=none; b=klFNN+yp5inV/FbvLnCMJhK4p1syAD0O7GP3/ahuUre7mb5gG6OTeHMGbiDjGkw1y3sxLiFwyd0CokJkqq0IEgEzN7XQ2Psl36PPalkfixC8LFINgMWCB2t7wRsL6RHHYhmTdDRcCLoiIPFt6h3eRnsv9WVOFuYlEbWBJBBqOCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788995434; c=relaxed/simple;
	bh=cPkpEdfZJCRO+jSuZVa/tNbw05fy/MM/jOtzcWSvZ64=;
	h=To:Subject:From:Message-Id:Date; b=NkFVZICLLMtLy9Y/RcZbhaC2yczpq3F49bS4W3JOSQN7xvUaMOgPlJGF+ni90a85bj3ZyGMuXUMBigvqD7ADHgwH+tBcwU24ZK+JtYPggDmrI8oHA5VKLNYIMty1dIHRUGRJS+N0Sq7apISvmeoZiWjSG85/E8YLj07iw8NnVJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNBOdDuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNBOdDuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFFBC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788995433;
	bh=cPkpEdfZJCRO+jSuZVa/tNbw05fy/MM/jOtzcWSvZ64=;
	h=To:Subject:From:Date:From;
	b=LNBOdDuX+BFAl49AORChJz32CDb0zqMffzykduHM9p09BtOlmhEk0wdCZUST1PASs
	 cZNqowVKH5TGF9pr8E5NYWQ63P4fIQmrBRrqBKxjiO0hkZuwpzNi2ODROeDE2I2SHl
	 p3xuIjFWBcesY2SBG0u7Kzjr+c6FFz4qKpT2oup0OZgxty82LdsuPcfNVXZYiOWrRe
	 PRvht0QApq2N6R2eOcdOh2gS7LhRIqyIUp393gf+bu7ANg9c8vs+4URimjJyiAOfaq
	 JMJxmivnq8gzmfiMy9BB9esv10ttOIbW0JO46GQ7AC3ambAI177+brcvnLzsjAxRSa
	 OzOIKmPZjaPTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FEBC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899543373.29354.5425818796238253107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c6ff32dc4ae1f9a7546138e6448423d46b1b0d7f2f553a5146b4cc1dd78cc2b
Date: Wed, 09 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788995433
