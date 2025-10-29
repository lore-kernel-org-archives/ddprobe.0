Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156332E5B09
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761778794; cv=none; b=IGms0wi+Go2vTf3JX+ejO98vRpRu5nRQG+ZwfvkBvI9/GQ4KeAJ8YbCP9ggquR/PdHCtQpxAJbumnzfN7YmcFc0V20MXsY8JAYbJCjm2Y5lf2ZCbqQdxJP1XRYXH6W3W1s1vM5LBQ8oKfhS7c1pMChbi9Vqbk4fXq10MAy+aZLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761778794; c=relaxed/simple;
	bh=ZQBfsLcHfwyUJLhcinPR5eQoGti6367xQDBfTro4D7k=;
	h=To:Subject:From:Message-Id:Date; b=iHk62oXLz/zxTjbrXY5OqBFbu4t7eSXe+1W87Y4KD8KA0hby5wv3jefpC74wevNkW6zONweh2DJV3H+ctcDuj+okFWblUP8DiSJLgg1mk5EnsK1UkP1SpFQOFWxWDV/RcAn7osLWjlmP+l2Sd0kaOKKlT5L5HaBHwEjjis9U3c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itMjZbGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itMjZbGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDC0C4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761778793;
	bh=ZQBfsLcHfwyUJLhcinPR5eQoGti6367xQDBfTro4D7k=;
	h=To:Subject:From:Date:From;
	b=itMjZbGn7pAJWpxr6io95xCFprYdsshShvrnoTtF5C8M3HiijyiqOnwx7rVMUaZRL
	 kJLUxvbJF3DTofEOURlKuSqTEGqO8tPbmb4xpXYI6TawwXTcmSJGwGYqFQ/p1zHDD1
	 lgwZ9BB/KwjcQ4LJTwXqV6dIxnaqUYIZ0duZ0ORw169GPuDLebX0NMQgtnspWesHQ1
	 u90tLuVBnGUnP+YHGtkF7pJIbAmNDU8sOwZWMx8KCpXO7ypm17az4roL2UpXZ1vkXT
	 bdgdpp7TS5OFb7bwNEqbxxIPkVZCfaJQDjJy1OqqY2R31Ci9Gz/idUY0sA6KhaKhSy
	 +8DtINxwD2VNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C4CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177879358.4834.9614867078880576392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f388e0d5e146c568bd958848e57ce903211ee4f2e5521b799f246934b1720a12
Date: Wed, 29 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761778793
