Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE813FE651
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778673034; cv=none; b=qeGJNyGKVD+BqbOdOUVkKfNnzJE8+/9zJBrqCc2XjpH825ejyBHp40znG3Fwbvy/nbODlr9p0g2TmJj9zD5Xd+ZCgQ+NFfEIeb0csFZ0mlB4kmsv/45j9MfzE9wmdmV6NY7D3eFeFQPT2mlFTdIbvQH6gHTDGcdndg8RmeDxVIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778673034; c=relaxed/simple;
	bh=r7HMnMLsFiU0MccRguhKoevSUWj1stn+XBkCOXWdpdE=;
	h=To:Subject:From:Message-Id:Date; b=GHBscV9H91ELWlhlin4BFAeagku+1aT/2u8sOP0biIoeIiF2ibJxfG/1fvOdItv70mklN5jts9yXSRWoRlflrjFtgabaSPdF3d5Xe/tVgQdNGSOgxE2rjllkoE4GjGAMhrdSZgCJBk8NBFqphGrkxkspIRX/OdKwEaqWYn5GoeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gL0bwZwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gL0bwZwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B11C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778673033;
	bh=r7HMnMLsFiU0MccRguhKoevSUWj1stn+XBkCOXWdpdE=;
	h=To:Subject:From:Date:From;
	b=gL0bwZwPt60jGyRJpw3uYFdqLnoFbapmPZrjxwmwI36GKM5oYYwatGn8PjIb/NPpu
	 trLpzWsWZgBWTXfAnjTc2hSLN5G0z7wh9ZBBOO28K5SYllkHsCqHajNgJrrhb2bNe7
	 wfeal4Ngf7tFP89xRDk/faKEt+cxT7imyJT7wILwdJfcwW+6M8vBFFAN0tBdfkMg7g
	 /dbUGr+jRw4goae4mKANt421HXHIhKkV5y+43LnmZ4aFTfRGArKcn67DmnTvRvH24J
	 ZDIBJiuDfB42p7OSZfhLMMybeocfpif42Px6sGgbBDescZvkIZFd59VyNd+H8ddKnJ
	 DgL4EbZSlBcyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB12CCD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867303369.30838.16262898056542662218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa1876ab5fcd86e998bc581d2f0ec162a267d2fc8b11f32b087e626256c78b7
Date: Wed, 13 May 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778673033
