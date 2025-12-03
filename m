Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE71E2ECE92
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764757974; cv=none; b=qzCNsAsVqC0vIKDkXV8Fym/s+CweNM8WLdpKSNqxCRcQKzqu7dLJcjFSz4XT7ue2GdwfB9vB12f7ESST2WJTvWni4nAT0vyKfJ6rbJ4gn2uaJZXhTTHmmpOAKv62oi9qOKcGy+OfjFKqfz9IvF6l4LG5+gij94mrfKgWOxhnjy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764757974; c=relaxed/simple;
	bh=mv8MSsvrCDahI7eMENc/9zzeqYbMmcgqp87TmVAEA9U=;
	h=To:Subject:From:Message-Id:Date; b=svDTP67ChAVk+CsZGC6kEiopfdvaH14IiUJGHzYuDX9Pc97B51+cqjZ9LtGARgsnhAVv9VprYUjysSajpdNl4xl8kvCA+XQ0v69di89YrL9OMptcacityjrMoB0CuSfCXw7Jpl29+MGjSll/6Ho+zNFrxI/pmzJ/Jls/Kf49tXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfPH01sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfPH01sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0270C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764757973;
	bh=mv8MSsvrCDahI7eMENc/9zzeqYbMmcgqp87TmVAEA9U=;
	h=To:Subject:From:Date:From;
	b=lfPH01swa/gAxfhf9DrChjfhimfA96hQ1O49xTQO5xzkBmuXZ6RmsYpA5mAtJis4z
	 A5twYmrsjYBgvuEFW+x6jELu6WIv29yqAh4zAQQAs1uEhIuiW3I+35uUqmgDfwE34T
	 7zCgMqS13WOBXAyQRz3MqVA5wA6+1/ow9xwfqnUm59YdFJHg+/LQEvcG8fNZQOpc4U
	 hP6FegF5p9iQHl3MNKJZeXxd/+Rr6YHP//qyy1gNI4Eyy/qGHqN/la0Cmvlebiwbpj
	 K6O+DOlrOLnV+5ky0ciNzlpGDFZXDfPQYjYpE1ME78SeEsCcoa4tp/paLIs09LgfGQ
	 klCGF5M7CE/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB8D12694
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475797358.25757.18001484713613229406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b53b5af4399690c8167a04ffd6e4cbcbc72777bd5429df706d94c48c146b3d3
Date: Wed, 03 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764757973
