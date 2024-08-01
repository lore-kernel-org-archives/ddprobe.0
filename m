Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FEA19FA7A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722514554; cv=none; b=EEkF/75T1C4i8ygnC8TIHZ8bdUSmwM/cbUpMU9EPG7NhhPGGu4tg7lQn2BakKPpBgYFg/qfFpWAjYHl/elc4Lq+KGAOsUY/lQYnXbl/eMVBPqIMEYuPB6e+AOsDuSXi5qyWf6CMfsEm9Zb5JBJfoRlJv+MZ4ZNsp2NP1QZq33tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722514554; c=relaxed/simple;
	bh=dVxUuhhi2ghW83hLclR8hBG/c+WHLpDisc+K2uiP038=;
	h=To:Subject:From:Message-Id:Date; b=p9Pttw+tcL+LqIqhtlyLc9f1p0v46JMSxrZOmkQOHveANGtun1Iux68hgBThOUzHP67XX5LufY1jTGwP99PnSfROVlu8VG58amq1c52qmPzVvRXAOmNBUJGTuHNYz+CDRUkwN2FwFFrS8A2JiPlBYIPRvTa+1MhC3nMNx9pdEyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXriOq6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXriOq6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C316FC4AF09
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722514553;
	bh=dVxUuhhi2ghW83hLclR8hBG/c+WHLpDisc+K2uiP038=;
	h=To:Subject:From:Date:From;
	b=iXriOq6tTkO89Jwi2rLv8t6hxV1tXIY7aemCnaq7/p+m3zWD5G8vbj7hDauZ3qMHq
	 y25lizXAe4JhJ+XfKms82V+BwJsofeN4GHsqNGCzqSezhrsqJZdidkb49gMutJR6Mr
	 szZQ5VhcU4mrQSs8vwh4AQ804MsffKQ87hSACNBuTR3R2WbfYNCQw8T6Hlekbxahxk
	 wyrTgTZwG9FENrTrlIIr89pKv9408D0qmDBJlj1CryrumdyYMjzP9qMLRJZymItQD/
	 O66AUA48RJhBy4jdxt553fuK4r2YZzIZcjwUPbl24gsAvNpuFzuupGbGGyL/M6YM4G
	 MzS8bPFBbOTTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E6AC3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172251455372.25204.5271233566831022604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb51e113f745f89c24f4fd7c3c89a09327e62875cdb34f646a296cb9b13f845
Date: Thu, 01 Aug 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722514553
