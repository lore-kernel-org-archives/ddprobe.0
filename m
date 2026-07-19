Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B64613A3ED
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784499514; cv=none; b=bL72nLarvusK3C2XA62IIu4YUdwS9bxzPq8IKoT6kymw5gzwlbjEqHjsIc1QjL/ZFYK6XF9OPx9aR981GEtRZsiKBmNERmqTgBxIqCKjymXhN1K5uqPfORKDuukJY5DBh4g9ciO4nLiYYww/hYxQWJOx6j74USXAFPP+ZqdxaCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784499514; c=relaxed/simple;
	bh=RQQZBA8tmRMb5JOqA5sbvCTBQVDwMbMuX/svDwF9q4I=;
	h=To:Subject:From:Message-Id:Date; b=q02KSWlNztxEle8kV3ll5JQnB8cw+kqB2f5JynP/okeioo8y4SWrZWskoWKOKC+gsnpZ9FyE1UR8/pDNcfE9Rg36rOJZHwLkhqo0ueHswZuYADEzFUuW0ls59aR7vYPsIxNkakRgkC8IH8n9W8UC+m3JQL7MI3kgDN84rCxK0b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUUw6/nR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUUw6/nR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8E0C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784499513;
	bh=RQQZBA8tmRMb5JOqA5sbvCTBQVDwMbMuX/svDwF9q4I=;
	h=To:Subject:From:Date:From;
	b=WUUw6/nRtm9hls84JVl0fEZIHU3yRorRgbxFgwg21pQPcR7euMce5Dp12grpSOKnA
	 cJvxc4OW5T+7aOJJVCs1ot03q+1l8cgzi+ZOM1dTx5dLLAZSy7wnKBCh0JYASh8kgA
	 OAm+Yp8cSAA+4UlZcf0psjLJHurD9XyonngVUCVSe7rlhBKxIXCVvVLVxA5HgbuXah
	 TMdbgPanvnCK7KIx0lnhKDFTbMUHAqXPiHOXYUPK5iqxopM5RBMiqU8Uh046l7VNAR
	 vZW3p061oo0DyJtnAA+p2G1XHhRyOWe18b+trpeLxM+06r3f0m0y18ztZTcscBGuPD
	 c4C8bYLPhn1Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5DA0C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449951368.21932.13900222404473763716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623abe39a8b8af7264e3bcdb7bafcdafd7fe66f31f6045d5919686ecd758c4ec
Date: Sun, 19 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784499513
