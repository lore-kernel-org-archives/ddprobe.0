Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CCE30F95F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769777034; cv=none; b=HF/2ZNXmRU3st6RpCbvaJWDGmdQsCoHbCZIlzjJaQtJnRYqabnznLsNcS0Noj3bQAZYkKyEjdlSZ3S33TgPLUhRL70YQkF0J9whEvDs0rh2zarCPcJRjKQ8YTHBcgvKLP7TzHIrTOciK93m1ekeOSDETmePNNaBY/9PmghAaBKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769777034; c=relaxed/simple;
	bh=TBCq7Wge6YBumQ9Ykp+H6zVazrprPR4+O39EhNFytTA=;
	h=To:Subject:From:Message-Id:Date; b=Z90NjC8Nj8LishKr0TkqPGpqUwBLTzpqcWaBJwrpPX5NGl+orzelQyc6y1kglpWivwd58IKjNh/HyZOtuBRvxvW6Z8xOYhj6XVCc0AbU0ZdJ5KBL2QdgrDEAGsNaaJfrENlaGHWc2inmEM+D8xGRn63C9u4DRvDKf3flRfpQtBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8XcIXpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8XcIXpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74A1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769777033;
	bh=TBCq7Wge6YBumQ9Ykp+H6zVazrprPR4+O39EhNFytTA=;
	h=To:Subject:From:Date:From;
	b=T8XcIXpqvRwp3Amppz83hqIHmd6rD3izAL2/8s7mUD+veLiyle0+uvt6DQERCFcyy
	 wOV/d8d4pdzYuwpDSMjRn9GEmfbR6Up6ubC012YtQxrZUgj/fABkQ31OhbZ2oIdNst
	 lUK3Gs49yjOH1NfLDks489e0O4x5w7PxDad56di/+P9KCirjViaedLg66lVm2+NAaW
	 pStWdVY0b07eN47BtbLL9cdgYuEp6EGkMOJNGx1ztg1EgcoZT/o+YYdHSYG3g9yZrb
	 vNkhxp/94g/F18vLyiYOTOnbBV+Smq61kvjU+tGH42/RBQxQk/ROfaMT+/6j3G+v7X
	 woNq3Hxzjx3oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930EAE6BF0C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977703359.12118.16698579150480212024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1691e02c05f678e0a3c807dbb46f02a51b41f3da80d0b8e2721aff22d4ee0814
Date: Fri, 30 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769777033
