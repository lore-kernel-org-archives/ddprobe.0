Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650101A38F9
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749226194; cv=none; b=MV2gZ4CFgOjCfozDuIFlOA0Oega7xDckffgmV99SiBnHdUHZ3BM0yxr86+G/N5looYEvsPUKzAZsHOeZ39scZkmMcNOV3SGzxcIzTD0p18RMjeLh+KE4JMBHkZ8HQMJROW8drHto23VyzFFJCwUN8DxHGfj9envEp73mhghVbec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749226194; c=relaxed/simple;
	bh=No+oSu8tDThk8zcOBAO+yLYs/0REAGfFh/doi7cxLWU=;
	h=To:Subject:From:Message-Id:Date; b=md+kvlESXnFVJ5BN3lHtkcIxsb+bRvm7z1oDe0V7RziBj3eIHA2kH8c17b6cjlXVSvrvaq3bpxmU5AEcO9/FdtjfOgevL31KlvQZ/NBHSTYuOjj5JlEiRJjCgdnwv+pQunIlW0Xx9CWXyiX+mO/yxpKILynvAIqtcqjrlOVzvGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YldlFiar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YldlFiar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F925C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749226193;
	bh=No+oSu8tDThk8zcOBAO+yLYs/0REAGfFh/doi7cxLWU=;
	h=To:Subject:From:Date:From;
	b=YldlFiar3ctw1lHVLyXpv16H2eRUIYxnanYmF0hR6OdgigQfzgu/u46Lnt610ioBy
	 bmFoS7I7aOpBar4Hc/Sd3XXkUC/y81njdsMPZYe982kCdheK37X+/EufEZymkqbVXn
	 lV9TPa45e8eFBMNjVoQcMgY2UR5DNVteNl2UEvHKlEjNoFi2q71Cm+XAVTKEabwGdv
	 hvgyWZdwoE6ovwltoD7mHR5Rh5vrq9oQEuOdRektMINQLND+bxUtRWFexFx2GsaaEy
	 GXwCNdz3+pKOAOSoQS6xTkd/8tzOuyaNskxGgGQKQrb2UhjwVIG84mmgK4SvBsimJ9
	 j4xzCgUyBTTIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBBFC61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922619358.9556.3936266270245062599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0019a82c8d1d58eb35318bb30cd462fb986729f737565a6ec2652b1bb3927a08
Date: Fri, 06 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749226193
