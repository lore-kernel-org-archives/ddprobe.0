Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E262FFF8D
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787607634; cv=none; b=GUBUU2m+lTHncEUkSzx+dsYcUMQyjFYNqmljpNSgFPiPkoqYLf/HZMSMvxdw5xe1z0VJ+QONGPKUDc9G2fE6WCWEbXzLxxEkKCwzIuAS+MulwI7ZQz5RZBNCa972pWbz1aRkvt3PxUrRAxecXreaixePtTB+ELWqObuQrYnFYd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787607634; c=relaxed/simple;
	bh=y3vnjKcxunTPYoi9AZ6NgIXVPbPjFX9NThupQ/ZRIvo=;
	h=To:Subject:From:Message-Id:Date; b=NV0nDRTGgfBOZI3utlE8yD6XN42Y8QEbQWvufkXaTfaPYCIAdteDOG9gPXsegeH1P24De4QFKRkLMJBoLcs1CSL83qQITcO0sK74hPM/QpznsuACj2uZ2pncyzQD43QqDCZB9UBkXsFnEtioUnJ6JZKVELebZdGCIizFl5JA/5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryitZuBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryitZuBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B9BC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787607633;
	bh=y3vnjKcxunTPYoi9AZ6NgIXVPbPjFX9NThupQ/ZRIvo=;
	h=To:Subject:From:Date:From;
	b=ryitZuBVNm2agnzQUKkE1127GjsyPEHN9gaKtPn2iRExWLOeZ0EsHd0RdDOA7f5rK
	 FdfZ2oBw6bJLQg8bAycE27l2BMBdJu3eFRjP1xB2sfM1A7es52t67hnhJ3S35x56A3
	 EISiJk1Cx3o9+FXJ3X1mF2l+fQNjl0EFMXtionGe7HlFTGZhXSAfz7+xNSwSj1vdud
	 wLUqMNBg0s92Tz2t12V72z16xvM22xTzPVJjHnpUltv8jjFJq7mb05X/0WXPj37GVn
	 M6hVzvt2MyE9Eo+6ZeW+B/u9Ax9wdiGUMdziqPMpgE55dLF9ofvJPYNRU5t5pvrMgA
	 BVG2Kbw+SIjzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F34C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760763370.20219.7121603362540664005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8faeb5bae74fd24b71f4223b8131a9039dc6586b8919d8a65aa60ed34de22e
Date: Mon, 24 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787607633
