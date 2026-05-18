Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1022A405C4B
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779133236; cv=none; b=uuas/4c6eEmJX1HPYsVm3sXpKR/nBOLGgJU430dHRAsycdO8SwSrab+jjJBngC8sQtY1A7vAphGIYFYs8vMBBg/NlWAO6S5Cz49Ndx/7IigR6zhjySMzUBVKxS7xtTajY0/eUmXVkXbl2xb5plQnkDIkBX0y0iLPIWKP3L64Il4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779133236; c=relaxed/simple;
	bh=JR72wEZZRRWnGH9kyJHtNuIxj8O4mbkew1kw7+LSzR0=;
	h=To:Subject:From:Message-Id:Date; b=Bi7LR3ev5VolKKGpYuwlxNbAoj7GlI065jxoW4ZQ5L634U/lOmevkxcz+m42p0iAvW2boPrpYj1PWrorxqJ/ECjm0dMj+smAfDMY6MQWk+ykztUDmRhCzgKn8mHpMnthR/csslQMPPN69G+/5bDI0HlU2Hku631YukGH7u1KPy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1+jcgLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1+jcgLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9715C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779133233;
	bh=JR72wEZZRRWnGH9kyJHtNuIxj8O4mbkew1kw7+LSzR0=;
	h=To:Subject:From:Date:From;
	b=a1+jcgLDGzldv26d7YP3W3TVrZiSloVcCfsenhtPRB8kI0xxpUYAC+V+x7/qqjOLr
	 4ciINBUtMtfcLx/F325TnKTnHt6qrkqhl3fIsUwuN8AwUbFl6oOboBNHMe1pldZkff
	 /xw0mFxeStzXIU8uY4YxFTqF39yKgKT19LwPkgOjVadB2j81eNzGvJdL5z4kdpW1fE
	 L4HR4tnTyOJDGisceLkpqKUZIE4f4OPY7JrzW2PPSLozEsYqXYHUoCXitd7/0Slbgv
	 +E9tQS3WM+YEXSMjpjTgdLHlzLgI+/VR/pJwdYE1RoDZfUKcv8gFJH0zKU8OQi2QqL
	 k4adXTpVZ3jYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB51CCD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913323369.19084.818169053658952591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2fdf83e050bb30b6659c32543d1c692849d5ad2ee494bfa8cf8c4112cf1608
Date: Mon, 18 May 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779133233
