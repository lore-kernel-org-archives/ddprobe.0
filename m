Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F1515491
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 19:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721072123; cv=none; b=MnITnmJ6Gaa/zmD2swir9hiQHXHS2jMtGt6xq9rkdVNr+8oRdMHw/B7SbkP/O1AgJoka+0t0lKyV/J8HPnRWJPS+bEBAYGBGQaBu/4mFyIHHqKRkzeA94PEyFVAftuTqZN474bECku8Fo9kVp93qcok1B09JdIcJOBqU6T85nHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721072123; c=relaxed/simple;
	bh=Ng18I3KjJ9jMMb97QkNbOVuwf+MP6Kk9MQey9e4y0ug=;
	h=To:Subject:From:Message-Id:Date; b=TPvKcn+JFXaZ2W0UYyWrV0O+vG7DlfoZGKBiB61N4ycb6/3q2XvJ0rQjIBPxmDOh+PHiE+nKQD3gHvcfafkuUzrb0P6fDdeJ/yTcQZMQ+RfDT/MMRArz2h0jR49lIsJ2iiUe5TuWK+olLpUZqMZ+J3wuD910s6t2TD99MvLqm1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGI1r1uV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGI1r1uV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6BFC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 19:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721072122;
	bh=Ng18I3KjJ9jMMb97QkNbOVuwf+MP6Kk9MQey9e4y0ug=;
	h=To:Subject:From:Date:From;
	b=uGI1r1uVhPmtyWuqowdEvlgMfACQfvyF2uFA+TgCRKSWbYPRUSTxvhQ6TwZJvUUCU
	 5GK/opVSnTaPfULnqVZ+uJxPjSR0+cIxgFpbfnJ6fnSWDXg/LfeVw2Tg+Ou6bpcl3+
	 34yD+JiW6FjrIYsUtUXB5bXgbNlD1rdioW66a4hYm2dwBX/OJGQgt45ErLe1JtRX01
	 pGmAG9Q9jvtu5Im9Z1nZrhVfMy6K2N2yw0uxHs3bIE/oZ6ne+cuJ0xCtKUiyNmyKRh
	 4YXNNtg8ibwlFiuboZdGmrTwd775ZCnaV73IwTVZqN4LAUftvg7HG40TNBUSVacMll
	 BJJl1+8jLrEeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C447EC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 19:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172107212279.13780.18011464604762676242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991c6b25641236c6b0316aa9cf4e07918d2ec749d09021c97c42eec76a3d8e08
Date: Mon, 15 Jul 2024 19:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721072122
