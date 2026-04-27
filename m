Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAC12D8DDB
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777330054; cv=none; b=cLHRqpBDsTks3vG7AlJ/+uKarpgzlafAV6jlSo/9nCv5ct7grCHIrgOZuRfgYPwM5/hTS+OMjqJ/oxx5cy3ZzK1zxnNCExSexAbxDbV/gQmsNKYYSrQ6JCasEPoDK/ex5R7aHzOxDkeXRSMbvJVl6KmcThCKZCb1y8lFFFb2l3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777330054; c=relaxed/simple;
	bh=RFaiZ5RXavrcRdUkmNNLwsMGDTnFie9MAOd9RdTwBck=;
	h=To:Subject:From:Message-Id:Date; b=pG9DQ4Gxu0VnRS3LJZeBF6Ehuql9bhLaQkGiLS2Drb6ls/s8p50Ve1X1BfMytPmvt4uhQtsMhSltQNIIMdkoJz83IdBnEb72op9jEgCDp+oLnN+XWdwIAJOtOc4XDfHQh8XMEOiPnLjfUFQdMNsUwIumDv9gfmm6fun2liCUcmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCu5TKy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCu5TKy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7083C2BCB5
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777330053;
	bh=RFaiZ5RXavrcRdUkmNNLwsMGDTnFie9MAOd9RdTwBck=;
	h=To:Subject:From:Date:From;
	b=TCu5TKy+cRrKshPjd74KVEV3CiqsnxrrAr5qwBdWKIChtJ2lSDn9UPMqt45OxgCNz
	 i+y/uuBuL0Bqyj3Dpem+rOSfQegpdLHaY38UY1XDzwYoqDxjcJ6kdTXpBfFU9+N3J2
	 65TpVh8MaCo/ixUdU54txqm//2Ko75p7iteoTxaWMXgy776L6AiAClEHfYAJUhJ4Vu
	 sf6Gay+zOfb2dLiLlsjHzgdn8tZ6M/LLxX0pVm4TLmSyLjzLUvWqdJDPdA9BR1nk/d
	 l6YipzHqUHcQWHtR9AI26MExY4SOuqe7zyA8JFTzKWkaI8BSQYVd2c7I2Jbfs2QGjj
	 3J3IU9y/s90yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B04FF8867
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733005368.26830.57182877080066969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9217a7a9d5c2e55959abcd1119691bc08bf6534e3533a9006e8fa10b24c28dac
Date: Mon, 27 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777330053
