Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307BA27B340
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770924294; cv=none; b=a80UsRZqk9xa/ODHzAb/m4yY0ucFds9SL1zZx+jFBqmSzEK1FqD4BT9H7R5y9gLUWPio4BC58KDAIijmb3RXc249zn704200h7JaC0wcc7bwrvwdWT9FpG+yABf15VVLUQiO2gH93su0CfF2AKR6VKBITTkn6oRyRXUaHxPG014=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770924294; c=relaxed/simple;
	bh=6CrPupx8rFMb2+RXaxuhLi70fdj2jlt0MewM8f5Z7pY=;
	h=To:Subject:From:Message-Id:Date; b=iJAhpcTMl8lT0dAX8uttqSDP/wZLCH+dHZ2ltK/j14tRUCnJo1OtTuiEJ9mUVqvwEFu2SbSrpOJx6WFz6/BWa4NAjwv/VfYOSjeFGtL4fPeFxMHpbFu5auFJ+JqQ1DrW2VFGpu+NGgz52UO+3VzVQorXEhFCfBbWRi7K3XWI/js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtapBEZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtapBEZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3218C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770924293;
	bh=6CrPupx8rFMb2+RXaxuhLi70fdj2jlt0MewM8f5Z7pY=;
	h=To:Subject:From:Date:From;
	b=RtapBEZl1caAbUJyoaMI9S6MSesnMwVShbw6+obUr1Avy0L7G9r5G5+D/Yhsl2/kh
	 DIShxxQOrkfDag9KdGsxWUQk7DjM842ieIc5T0FLTqGLcVhpIpHGwcmOxJ2Dz5HBRU
	 OtXKUIddG8Hmfjzw0g8jpOVLUxfGth1XMszZs4TiSBKhePUsqatxKMMoMTT5G4H4sO
	 uRSbHxE4IGm4dxMXzU62Nn0n45rguhYDMyBNzKO/qdE4B/aWeCp5fyKI0rnmQZi/Rf
	 TW5YQ9RKtzM3VKzki5yWJ1dfGyqiP88l5tycowMpTN56wn+Kl7zw+Y/sX45P2HCfS2
	 R80w1yhOnxadw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D346EEA845
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092429360.5179.604826112228805019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed610dc06d9eec92bf1298e808e70bc80eefbb297bfe930ffc2d18399b64dee
Date: Thu, 12 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770924293
