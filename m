Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0A926A0B9
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785702034; cv=none; b=tGL2/E96ZBxBAO4VeuRI7mpXDlzFU8RRZIGy6+HYOEpAa4aEKZbSuBcvn+q6Eu2+Y9/yVdDMBdS+NlfZci/5XYwKvJvsbd9q5jbgAbhY77CzAo5SU3YLXJgG/3l+Xa7dAv5pSpzgfQeoJUNvtpXz3crf7FRuh2dFcFEUxe2TX4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785702034; c=relaxed/simple;
	bh=D6CMS2W/s2Lfr3crzk6uxwAI+09gZzaDafwvzbLlxls=;
	h=To:Subject:From:Message-Id:Date; b=rSrsSjD1z+EUdNxmcWTrla9Lj7CmDZI829qW9uhqcr8SkkK0WqJcLK1gg5pjS5/uCTHdn1ERrnSLfGWMsPiRH8wYh9k0WE07RVyav9aj4q95wWtEGM1oSMFhTYyr7M8tymp3q17vab/1OiEzv6rDzyWzRiYQAo0iRElfLZNQRvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuGouDXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuGouDXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBB0C2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785702033;
	bh=D6CMS2W/s2Lfr3crzk6uxwAI+09gZzaDafwvzbLlxls=;
	h=To:Subject:From:Date:From;
	b=EuGouDXnRO13vFZLiVVGiYSbWBGMjqZPfe8GjAhyF/OXL2QyIIFJz4EdIrNQePv0K
	 eISyBq/V5ajAx7IJOO6UXHXjtuT422SkX1NwGiYN/lODYwjXU5NLQkdPyEZPlWHjth
	 TxtER7M2eqHps+Jxr4yc8CvoWoV6XYTy5yujUoMdgaw9ALBR3qmL+yO9/6t3o7alSQ
	 DL2meG6mJVEVF/z/TYLiUcv8IEFdb0rojf3wR9oPbWwOmaeUqCYOvtLzawzBqWUMk1
	 Sqj/tjoSmyi6ryZm+4PuntlA41RpXURtGKr6YLEGXFr/A3oh1mk9DTX2HSKaLrJ/f0
	 cSCP5YgPsNgCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1A4C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570203368.18719.10885350989576494330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a563f1e5cf8d1739f39aa83f31fa6787be5aff2a3dba548952ceb7e6e141ee
Date: Sun, 02 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785702033
