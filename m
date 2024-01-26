Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E7114ABA
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706244497; cv=none; b=W/6ULwNDeXf/wL9zMlC+U526yk/3TKClCNSQ1VA8rueaN4GYQjPkPIOO1k/fmKHCmIo8FcKQX1ZM7pFcWoCPLQiSbfuM2a2FDaq6mW7reDctuxD6cAv20bV3FpEQabmR1Z/dJP9hTRoZvNCUNbXQsHeRkPCq//ZF/epSJb4AbjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706244497; c=relaxed/simple;
	bh=IP+0LVv5ox1JO1B1fXLS1q4XFIpH33KSaqa705YD2L0=;
	h=To:Subject:From:Message-Id:Date; b=NTcqImTf07wAw5BbornD+g2CAUueqWRYiC+dwQEnjHaJnmsizyeG01slYnKjw234D0sNMPZ4sturoMX5m34w1FrqklX2iNW/zR/y1rkYZdDpTQZSe9DVZGPYuZBmEoQ7wFxOWUyqv0TfHS9J81Zj0OLiJ6x+NtL6Yr3LINL+huc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpbcr/f3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpbcr/f3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8448DC433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706244496;
	bh=IP+0LVv5ox1JO1B1fXLS1q4XFIpH33KSaqa705YD2L0=;
	h=To:Subject:From:Date:From;
	b=kpbcr/f3oVUcoufdJp0vBmmPeS5fElJ9Lh/nE/g6RPJor+bRjLx60vgrZpNJKPAsU
	 fhjTtS7SFs+JXdukjFVZF6nW/E7PwYqipStXZguHt7Zl+eslsqDMzKCp4x6zaKeLan
	 i8TaFX/I6L7luL4b1oV9mMzhlxYML0mogA/laT1TmyHQpImXG6rEiS3jcVJ0Npudtw
	 3vVZwWmHQEbRKW9gHtEJJKq/tkzhu9VpSdb/ygUEPx1p25FFCL6Lej9ovSHHe+6z2U
	 VmMnIIjvbwi77KgxbBX1muG1kiOU1JeLoDaySd8xUrUNsEr+gfl8CMAQR7UtICFZCW
	 lkdoPtBHypWrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D4CC47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170624449640.23826.6384682905388449087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca4d23551ea3e2c3858d51dfb269a5fb4337146faa481347999eb9e8df8a60a
Date: Fri, 26 Jan 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706244496
