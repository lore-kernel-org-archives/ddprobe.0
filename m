Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAE11519AB
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 20:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739563734; cv=none; b=fbOlJfO3oIdFLtqP2fqCYbTCMSC0tROG+PekFcmavK4aSB/d7YyZluz0BFys1M6s8OYuWfD6ctfT0ZhsVTP4jzWyAUolnlCBhw49qT6SHePj7tHNgGpDyB5976vPoTtqQApQZfiggipFpPyvHXUIgGVUJLDuvVG9iRDx/znylq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739563734; c=relaxed/simple;
	bh=sba4AhiP029UYcO45iI0IOycm3azyVuD0faEM3DzOo0=;
	h=To:Subject:From:Message-Id:Date; b=gL3M7v0bVJkBPQBPbkeerVV7vfE4nAmVurdwm+M6F4Xpnlx02t+6rAZeL1Rtz0e4PlT05UJQrq+0I61FtCT6i6TqKfL59Ub/dZZCNNBopkmdzzkrMXRqHM2bmvqyQclWnHFYKpybLzGUc6D1AZrLKRfqd91VK4kNkh0uRp5FVgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvY7ulYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvY7ulYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02FAC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 20:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739563733;
	bh=sba4AhiP029UYcO45iI0IOycm3azyVuD0faEM3DzOo0=;
	h=To:Subject:From:Date:From;
	b=jvY7ulYaWCdYdDb5FxeFLpY1wUc/NPJUXZX73dW+zq9LHCtL2PhfyAVXl4QElhZT9
	 81tRRO6ihWSNUOk13tkq96CgSrvsJqoFTheuUc7SrZIODYMQXQckngghBxCNbgL0Io
	 iF+hvVwKsVkFc/yyVHDNEPQ31QZ8k5Wu21Dr6ThdKebno8bQWN61M+XmrDe7Pkppri
	 OLu6+0JLjQMN6fxB0DLr1McL2k3m+VekjKuAvFIg27nyIHHSjd8skglNQ4Jm39rZ60
	 V/e71yCYk/qX+aSqRt15nbYU1eRwX+eTrj0coCXYFOv3nPp+GD+9dK45Xp7RqtJV9b
	 nZo5h8PVLofnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99520C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 20:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173956373361.26624.14154476532386051248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff3b8979e9cc5c38267e82ec3e0993e7b68f8b05179782495286ace662f840e
Date: Fri, 14 Feb 2025 20:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739563733
