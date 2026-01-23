Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C98335573
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769136234; cv=none; b=iGjAjC2injZgsHRTQlwQg3O+voKwCUc6PfGGSbetq4m05udJZtVOVZWZp7BN+EQoccDK7X4hpAh0Zl2A1hHecmTE2HTnRtJpcBO8+Ic00+Zl8g3FsGWOFBn94djGUc4WTU6ZzJ9xp86eBz9wDXq98TW/o4aAnJj/VLUSvYqjdeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769136234; c=relaxed/simple;
	bh=1XrLEh0t61CTutYodc9N+8kr/2t+J40EvNzCR4kK/TU=;
	h=To:Subject:From:Message-Id:Date; b=gbbsD5QWpVLNMKsALRRnQMehmx5jmo+HtZmsxHO9QYRS1Z79VFE/BdqmG1Xv0EjtThGsl0zzOblF9lyCziL5mTLl7SLq7qu051tZYGLOoOiwWs7LjjwGXfQWi0qe5wvVWfl27YjVz6rwLedksiEeHzefwOCGoq1PKMX5rJyh8nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijVUgnD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijVUgnD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68FDC116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769136233;
	bh=1XrLEh0t61CTutYodc9N+8kr/2t+J40EvNzCR4kK/TU=;
	h=To:Subject:From:Date:From;
	b=ijVUgnD4eiPZQHzpXxzi1WsZvAEfoPdhox2jPHAxqbQD+tngo47VA3bSMMO8VBR4O
	 q04hJUjUEYFuYc1rZODfVyA2eiK4u+HxbpqzoRl9UWrZpJIib9nb0lYpWT4tyQqlED
	 3YDuqv+Q5bX8sKR+aUBuy+oXQHdydUttGt++giXAfV+Z1RNKTiBlgUdcuu+GSx9wtR
	 8ZCfCUnyB63tpvQhYSbpnO29njMuGYchbRgXLkqe7vMnqI2F9KwfIOrFmr2nbhC+nm
	 wqW4HpFSu7hLr6jOvyDicsPDmPn+ybg3hfi+CPEASPItrm9xDjm2HW5RdwHt060P6T
	 hiaeh4Ebxvwgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FC8D6CFB0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913623358.8943.17039461091854710990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a23d8fdb9e80f9af14d8deee3cc8e084d0e21f16e89f0edee18f0bdbfdca32
Date: Fri, 23 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769136233
