Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDA3328B69
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771866294; cv=none; b=INPdO4M8u0hR/ZD68DXdRIhJTs9prZWpWypLXLGO42d1yhHcK8BBdsPBEvsR6WXg9lUk0QN2rUwECs793NgdFSCxk5//ybN9sGpX1xFcTBRJo8EEy2KMDNAlXilXnNLcKY6BjYkqxqpT1naubL9VbJAZB1s+t/QFQUh7Eaw3KwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771866294; c=relaxed/simple;
	bh=UiuFs5vN1xhjrHaah5Zvwh3NN7IcEZ8yinn7llrM4Ro=;
	h=To:Subject:From:Message-Id:Date; b=JDsRAgTFT9bNWijWzgwLe9i3sejhccUt0XdR6snLPjbU+AL+7zj3LbT4u7hAsSJ3H9UBnWe3/HYwh54zL4rVTS+7IC2NPOEVupfNN2KGrxDVHzD0PCBcDmgE7Hdb4gOarNZx/Nx3LxjoYoLcmgUuFv4/Zh+HbmpZAiZ7kBfVtnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Si6XfdO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Si6XfdO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A5DC19423
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771866293;
	bh=UiuFs5vN1xhjrHaah5Zvwh3NN7IcEZ8yinn7llrM4Ro=;
	h=To:Subject:From:Date:From;
	b=Si6XfdO9n7KCudMXeNVdjz6HTnDdhDqbyn7J4RDHwWZViouiAJ+NX1365B7K3Xh3Z
	 WHD6XLywMHBiZyRSY5w4a9Z8Au6lXY9eujUd7FWn1V126TwGUp+VMni5QETSBBet5r
	 0VvKgJA2Eh13zbf/6pcSe4VueXJq51ihdIX13iNL6GySRrqBwYUTT3poiBPtb+fEWe
	 aCxbGsRSI7w+cQ5sAL+coY1SPMfao4u/5NlH9LC0YEXFvZtP+l7TVIrzwbA47HeUrq
	 Cbzaq1gT/OzXJwZnu06ubwCS/uc6X2em+VilZPQVYzjo5lLt6QjMOBUWHMlocJp56e
	 kARVHaj1lDx/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94611EC110C
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186629359.21889.17168408094629380245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dadabc968ca48802a567c1610c92782578a1a264a2d5fc600e806d0c765e7aca
Date: Mon, 23 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771866293
