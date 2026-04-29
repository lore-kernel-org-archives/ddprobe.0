Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2590D38947F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777454254; cv=none; b=DABQNg8sq3zbzqS7TTojBGJI6oYnevHaIOGzN+e1uSSKgk1F6jfn5nfGsIwhz/TRbc7edrne5YuWxt+fbz84qNEavYzUV4X2a3H01Lmu9thwUJCPsR/8NCN6O64bL8H1tGYY6hsNQc6UHYGdiicZb1Jy1faT/pd7+QoOmFHMLJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777454254; c=relaxed/simple;
	bh=g7H5TBvsHl3+DmbkJ5FNU6TTiiwxrrT6gVfyjEhHsDQ=;
	h=To:Subject:From:Message-Id:Date; b=pmQa+rDTReuGsfg8+MYnaMo6YrGxzz4eiBCGJBfHKnlvpdK8okEAs41ZxkwEOLkBJHWc2GenaSo3GmBFJfzEnBo+eAZJq0vFOL1/6vMT6xLd6yl326DmXv1HxQ31BEX9ofOwXjJg+/LXOGMmoBTSMkz0116dF2M8/r7IDt4uEEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8Ws28x/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8Ws28x/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A5DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777454253;
	bh=g7H5TBvsHl3+DmbkJ5FNU6TTiiwxrrT6gVfyjEhHsDQ=;
	h=To:Subject:From:Date:From;
	b=g8Ws28x/CubPXm1RDHz9CqQlJfcf+GbKqnkf4o0OizcW5r4saJ1DP1AMq8Htvrs4G
	 OKZnVtZq3TWEAs9XgHhkK2flpAaURinZidOSsPE7aq5HztQGUSGf9TCGCuUC3k/l2U
	 3V/5lqlLDASaix+9GJW/5jF1RzO3vtg7UmXzJRkOM/4Z4WEGRGwZ9xyU0lS9Fi5E64
	 MHYsq8SFID8JcNJOXq34p5VLVejsOFW9JQX6z3C+lKxcRaNxX/265smAhLT+NerqO+
	 vAlSVRTjd6GVzGKqDYolXU98+yPbSUsRGd5Y2zggJm8JyDUOZUoNXVgPILedXNgXUQ
	 WTlkCMLJ/hE/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B145CFF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745425371.9319.7462251166736417094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65cbf05fcc554c5da89cbc82b90f6ea83a4adb90dce4754461a6d12ff3787338
Date: Wed, 29 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777454253
