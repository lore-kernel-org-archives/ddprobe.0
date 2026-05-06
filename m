Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6BF3242B0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778066254; cv=none; b=DGgd2pS1kZ1tkqf0QvPmBP/F00Vdw0XAiElF+Ig3zzkRKS8RG6JPKiyclZ6IC5juez1+YQQAY+RtJVsvt5zCqHlG6N+OHEyCOR0Z4ynPMCPRdBEj0YGLk1rHdtH105L9NsaMjoZIOts4VgDCKoG6cG3tqjoq9HDNB6uQzDMfqVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778066254; c=relaxed/simple;
	bh=eJbQR5Y6UCQN5yZ6yi+UB78v5rSt/RnZCFECRsZrrr4=;
	h=To:Subject:From:Message-Id:Date; b=EDkh/ilYOd++CU39xCs8DBq1RfJslSWAAako9Uoq2mphl2ICyEfsI0DhoEcm49zhshJGoXJ0HXKgk8WTl+KQh4cZslqpGsaI9FvEj5LKrh98L0tlMGiKsd3A7o7oHMNKLjcSN/wF9LjuNuoMh6wNLJ95L846E3MT6TE8qSLxgTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsk8d90F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsk8d90F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFDDC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778066253;
	bh=eJbQR5Y6UCQN5yZ6yi+UB78v5rSt/RnZCFECRsZrrr4=;
	h=To:Subject:From:Date:From;
	b=gsk8d90Fhi2BKX24XOVbdKZLpeLG/0erTmGiF4LYGs/58gizHTSE4FQLp6T9UtnXU
	 +0gX+iD0aYhFN7nAwylNIQvYN/t75RVaLlmrocBUCbhLx0L4T6m6324GLHfXFEGEj1
	 Vc1NQClJJ/e8iDdcAs8e8fvNn/ig1+Omjfkz90F35iHCrmsJSl3z7sYWPQWurOMm1h
	 lvDQh575yvdCXa0lQdOWkPz3ilAe5p0dhVjWcPQ5+WUikfrMjP0LWHLeePZci7Vc95
	 8U27Drp383AisWA9BQ8xVNiQdwOmkd0cm9OKTIHjIG61nAXmvG80Zu0gAWkf2iEMWT
	 Rl0EafWlxRZpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB446CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806625369.27029.17064219994365234425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699ba54be4d4088c4afc71ce11cfb8d590364d4d4bc2ddb85612a07d5711809e
Date: Wed, 06 May 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778066253
