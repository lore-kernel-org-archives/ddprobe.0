Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81DF285CB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777204653; cv=none; b=gngxVVvT5XvmUvm1I5JQSnSk30FqTt7NSUQk1ErVtfhwlEkNBmuc+lLJDpmf8QiSs3QLH4LLVOfYFesR92vJRZJIkqF/q6Tx66PLYGzATW6G1IULGg9ddteGUCRxIG7pjsT2v02NndfT8yYgyqGCkCuWKGD0lAGVVoZBammRSCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777204653; c=relaxed/simple;
	bh=V5I2sMr+/0SOR4Aq3rrxTt4zdMUPMdFTdzM8YCXNvi4=;
	h=To:Subject:From:Message-Id:Date; b=uSOoNEf9xuKYG0YJGqNKqfTMHoYae9wM3zbr+VUSZb0w5iVvKcVw8DEj7dfXVsJxstyk2EpV93UMo5UY8ID83AJcjuZ9GzP873GaQGd4RvHzRwM5GIWnhds1GYTvFIKAHp4705nvBK7jXmOiyolqMXWrJ0uN14rzcAXl8qcr1Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbcO8+m9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbcO8+m9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CDFC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777204653;
	bh=V5I2sMr+/0SOR4Aq3rrxTt4zdMUPMdFTdzM8YCXNvi4=;
	h=To:Subject:From:Date:From;
	b=tbcO8+m9LuZtkQIdw8INq5mzF/Wguebea8D9rFoOXsfAG2q8op0kHFnGOo9DYM7B1
	 ZQTIjb/yv0zI9zr1lHKrp+a6TNFvLN7iLU6zZRe1Rgndh2RGbLOLg7AiInhorps6I+
	 Y4UaFxB1xx7OV8m10jm0Mp1L9QyUYOx6Hk1X2k9h2zP0yj+35R2XNg9FK5H2dyv4Hc
	 2bbx6yeIca5uNfEx0SKHtGTtUl5g1+ySuky/a2CeVbcpk36zyRAi4Rdql2EVMKva/i
	 cdguYNAviLvb2zsfTdWrIyvQTlMG9oBqUEMA7BUzc264ebP8OMDDYV1+XSwkGo9vXI
	 ouLfNhkFatNsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D38FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720465368.25451.14314046321450792457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37dd14bb0d19c34bab4c781e9730564a913bd120d36c6e16a23c59b89665c9bc
Date: Sun, 26 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777204653
