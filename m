Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B17EEC5
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 19:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713380963; cv=none; b=PEAbFuGcoSmFctQJu7zmxcLA2oknB26MP2k8R+iVUmYGinp2+pMElzRCr7m9TtoKuf2TecCDiThVeJz9ITdb35WSeQaMW0MFQA/kzd466HzjVlQLHIsVbV6V3SrB9eAh2Xp8wuvzRF2Py3xbdLvFTCaqGsL2OaeJi3sP3Jo2keo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713380963; c=relaxed/simple;
	bh=KATZ3RV6JSabRH5q2xagQtECRAFP4xmY365Elh971n4=;
	h=To:Subject:From:Message-Id:Date; b=IqDU/m1kk6ckXpZe+CwpZzLFBWW1WMeYjF8nW+5TshgM4XQYeAkyiKb2WtVHAIVpHRxLga18PU161XMReEeeogsL47ZUtA2C4rNqpedyF/MjaW8rWYPqvDfeXFo/W4PgRqR1mmw26ihTJb/w0w3SIxE9U+txUdX1s29ghZ/JNfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEp6KRe6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEp6KRe6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2643C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 19:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713380962;
	bh=KATZ3RV6JSabRH5q2xagQtECRAFP4xmY365Elh971n4=;
	h=To:Subject:From:Date:From;
	b=BEp6KRe6nVKRHMwRF7jOWvjg84/L/lhvRlNB8MwRUzz8Vx9V2ntomI2dbHuvfyim1
	 JxEG8rgX2sC5ed1APMSfpoSVXcmFs7rXUZk/hYHzZvF0dW3xOET5sOOdLJrRhszy3U
	 C/g7QlEazpNm/nA/uHiomNWERnVPAToacWmFjsp+NsfpNPe16sODHM9KrMpSJl1xGe
	 59ufT7ZCyruKvC3VZVegU9OUSjzhkZjXMnlQcusuLisni2YcJBWz8Zwvdat1QuxvZe
	 4bvliy/EQt9YSxpS231GyuPrpj/tWZ5JNfpjVDOZ49osWJ/3ClpYfbI+RexvaC8ZJl
	 o1t7634d+U7pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC24BC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 19:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171338096282.23900.9457252136117691463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc6c5036e584efa54cc44964559c5a41734e75a1c7cfa93d37cd53bcb7ae1b7
Date: Wed, 17 Apr 2024 19:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713380962
