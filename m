Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678E012E6A
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713704423; cv=none; b=qNVsk6p+o4CHePU5OkavxmklyKPf9scqdcb8Ygc4XYkBbalMrGxenlyqPjHerUKOCHOTpKrE8baGH+4S32f3p+gTBpe4Wrd+QAaSMMorav/4RHhRCQ/rTejg9Uf8/pNii1n6vnPostFeFPzPFIb+lpVPeVLJqNyXJHxRpckp2ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713704423; c=relaxed/simple;
	bh=5AgocLC3vz4o7i2N5BfLKqndb4JmS1hknwF5zLW4wpA=;
	h=To:Subject:From:Message-Id:Date; b=Uh4ooPr8QQcWqVXHLmePBuXl1C6cOlN95I0jacSSG8bz1MvMyqVl/K9pYLzJ+CdGfjIJPF9JX+gki8X4lRkNyCb2uywEQJzZXAKLAsNHi9dpxOPMq/+TMO5nexySgOQkB4cELGONvbYBAZp8xS0Vgs95aG8GbEQXREDfG8Slvts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBGkUUtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBGkUUtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F314CC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713704423;
	bh=5AgocLC3vz4o7i2N5BfLKqndb4JmS1hknwF5zLW4wpA=;
	h=To:Subject:From:Date:From;
	b=MBGkUUtpfppgmLSnPch8vRs1w+DaXEIwI+qPeFYJMRJRp3FojNsWy65Kk7Nzyc9oF
	 7UXZZpJMax4H2mHQ8m4JCz3x0F/ZnDhnxDEuroI4zslV+lKVaHpmlcAIqLjYQAe+3U
	 mkwGOrCnzf3tBj5WsqKx9IkHAfpBZ0BGePtdUzKpmTwu/ed79yAxm/jqzY6w5ekufR
	 6iLYvdhewGKjyvQT7P3Ep3ly6m6I4BkGzvYAxN9W/ai1W/pU74XmUSDSLr+OVdsctQ
	 G9KYbV2Mej+g+qM329poppJjqLpPPNgI9cluwVwYWeiNnM718AMsuuTaASvj/rxo7Y
	 FW1ImFeKnsvoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8B45C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171370442281.21353.7807525058084351067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e5e061219ff2bdb14d6bca261ce3fe13dadb155c4fffb67d61ef7a7d079fd5
Date: Sun, 21 Apr 2024 13:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713704422
