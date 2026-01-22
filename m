Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACBB44CAF5
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769058834; cv=none; b=az6WmuLoPe5wB4ocnKL701Fg9uSg2tuQoJNPAh7K26gSuzvxwix95lGQHsHbwr2fAW+bKLlDUzQ3rTXBgsNxOn/CFP097/sUVZrjrWlPmFOCiduvwspgvbVwVIyS8v6C/jOjxUIGiBFSI0wvmfiKXo2svtQI6UYjmO4CvE7QdRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769058834; c=relaxed/simple;
	bh=3O6eSvhJz6XCVcz7tUlKiflKg17jsz9mn9ttkx5gBH8=;
	h=To:Subject:From:Message-Id:Date; b=TA+f+TLMxWAiw2vB3bdA3aK2pD/E+A9p7vB09MKSqPbQ/dJNdhmpBSigHsrwHLPvhOFVV+YFy2KQUWW6TOnB3oYktqVMAFt6nLKxXhSS7AId2sYyjU4gug0xUdhY1HIwNpAZCLTFGyH/DFjyD4249HZzAhR6V6sm1x03SLJA6MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNA6JedZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNA6JedZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A990BC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769058833;
	bh=3O6eSvhJz6XCVcz7tUlKiflKg17jsz9mn9ttkx5gBH8=;
	h=To:Subject:From:Date:From;
	b=PNA6JedZT1tPv5JNJjiz8I4QlBkp6ITLj6tIvxyK/KGdlwxziJKB1eaxE6LDbAJSo
	 5gt/Jhlt9aRSTt28a/TBA6uA8a4b8bKZn1WvtBN5phcXzR7W63bN6sQCbRIjaUYYrc
	 sdeDR2Tl/AgmhbVazWZvXRKVq/zDPA8NG/lVGFBekUmYpxlJNeNORvHPUpXzGr6KiX
	 WLPsOi3SPJe9kyxkSz9/qaojJKh+ee621t/iKGHyz38NdarqEv9uXnH8vuJm1L3tdA
	 RCcbIjuXnBSYlN7ETfWv/buoanR5hLZMUIWMljmIsmdd4YjLdQ4L7ia6c+Pg88pmVu
	 yYipWaksc4qlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96035C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905883358.23741.114894856768481069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee07f2797d6c35b3a13b2708733c01ab0e16a4160e2809753299205591b1884f
Date: Thu, 22 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769058833
