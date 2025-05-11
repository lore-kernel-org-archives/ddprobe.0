Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A60125DD02
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747007994; cv=none; b=UzZkqRFHOJdon8MrX5XvA1F4+ExUB1WNf57G+L0KXmu1pE2HlmsfpBaQNLcRCFyaUd6c68bgu10HxuExqI/gT2MEhEsM7yn5BjIvfjOPDbztwFR1sj6uhK+sFRpplMxuHV8zf2kNbwaVd2XV629IxUN77p1p/hmQDjVfc6yECTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747007994; c=relaxed/simple;
	bh=6FJdE8a9xGQbVctpP/wcaFTYjpDqTGPht/AQn20R14I=;
	h=To:Subject:From:Message-Id:Date; b=dmiY6NvbYRqP1nwD2WHOr6jqtYvtup5Y97rZPKLUoMLJ/t4U08Ba88irFa+ZjdA1S+088HIod0+3h9py47Q4RK0LubVvIEMtqHx5WxyYW+S86r53MPNtrjDiQO828XVRYGGjamtielioUaVE9VwA0sSB4MwMXGI08g8Z7iK3KOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTcLSOCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTcLSOCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A594BC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747007993;
	bh=6FJdE8a9xGQbVctpP/wcaFTYjpDqTGPht/AQn20R14I=;
	h=To:Subject:From:Date:From;
	b=FTcLSOCKoZVfVWSFZGgMJP911bypB0NtbEe8xztQjxaf4UThvPmxyLOQpEb/gs5j2
	 5BfmzgpJXtKdn6oyr3qpAGAWVgaYpzqB+UFgPCgmv+rq891rtSPYLpBgjyZqQZ/sj2
	 6zQTcEUcxrH9Wa7rnGIP5koXjXBbWurxwEtzOpiaQwdfNFe+GUYs2vVccLbXHf1mgE
	 9awvE6IMg73PJ+4L8EaJ8XMy89Qj6gZgIgLQCOV9Nb0UaRHUjf6kS9A7nvmDap8rQd
	 Pue0vGROba21ETw+sBFR75xEyZZa/1mdgwtgLaar4TugW6WJ4crbVstIkGs611YIQX
	 QTcmbrb1baOrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158BC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700799357.29416.240814456465086486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47136321d9834db7ba56f0d6c160a433f6e10af1a9247bf2c29103eac25ef838
Date: Sun, 11 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747007993
