Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18881231C9F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767319436; cv=none; b=iFjFSq1dcFcYufrwJU3lHnECS06tzQLYQi5ZkrnQCOu6r0huADf5/KZtrV/CSZ4VaGau22qNS9ctn97G/+W6AePVbFQ7xJDOGkCo5YqhfyfDgPAvZytp4V4AeedlbcD0ug4hNAwF4QaauF2MvArGYRODuwhTf/xmhe3hKbgj+y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767319436; c=relaxed/simple;
	bh=tOxPXI83V+A/2mCHkFn2BXB72x0mTxWZ2aRwqxBclCg=;
	h=To:Subject:From:Message-Id:Date; b=b1Hc0YSqGxGuEdaj56sRfgjBKoPHnsi8K1y4UsOxN1S2rBq+AlsPf6X3yW5WR63UkE95AP9HN/BPCz3k8ibEVIqLiTwToCCF07OeMZ1aYAHK0hZduSM9lOwWdZQpNXiY7KqRki7yj2TWjJ0+VSWpm4EQbrLthU4q5pY6oSDKs8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZvm8jik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZvm8jik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A691FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767319433;
	bh=tOxPXI83V+A/2mCHkFn2BXB72x0mTxWZ2aRwqxBclCg=;
	h=To:Subject:From:Date:From;
	b=EZvm8jikPqPw7o8G/s5b3Aphjndi5VxsXfL+J7hqjA9IPhB4HR2JypLPy6Wf0/DQz
	 7ghg2KNkPKuUeb6ZcZcMSX06KQvBoBANyuxTbqliP8siMcU4NTnFII47N1W+KCc7de
	 E5yWOLcq1qh6MyPFVkweL+nUlncSr5fTsBi35u1ikhiF3BMKbbt66hLacZNpEHNnnT
	 A1BimOiJacPf+BT0MHBeAWCFnmcHOvGrqFcUd4pHwMqpbZFzgFY2SBvr8WdIhgyDff
	 PPnQOsmPfRwMvqS5IBY1eHQcMunitokm5SuHKCYFnlggNVBgqGak5bBTjsiI4FF6Gj
	 myqi5Lab5xwUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923A0FA3724
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731943357.17212.12451130257050437548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efecca232dd70ebfd838b45fda8c51aa97d8a8ed79c7598f96b918393c8205f9
Date: Fri, 02 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767319433
