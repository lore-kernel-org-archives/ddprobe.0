Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B81E1D7E31
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729203954; cv=none; b=DlbsqEcyWpwe+3S8kHriGijGvAswM1Egu18HKFYqVRD/vXF1N4vT4NUiYZQPJSjVF3TBvsF+0Z/7OkOn3Olj+RLSUTNVBgIcVcS6EooXhVCteTk4mQu+tK4x0YGv0HYvb/sTtU4D6oUdnM96UvTRhH/o/W7H/RhBvua1jgYSpgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729203954; c=relaxed/simple;
	bh=mDH0jeF80C3uHE7LNVz8NNLUdWn2iupggIkqy63GTww=;
	h=To:Subject:From:Message-Id:Date; b=GsFptWUGMQvEuEsssQcBBQ5BwqMkXZhzDa+0SjHsppK0tilyM15FEZ6eGeNxrhwYmnxusMeALgX2ErAbQX3x3nDHgBuql7KSSaZ2r/GdMatWmqWWfz1LIFFfilh+b2QC21fttL77/MYod9/+W9RY9d9qg+3cIwUN1ORM3iFhB4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPo0fOLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPo0fOLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB71C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729203953;
	bh=mDH0jeF80C3uHE7LNVz8NNLUdWn2iupggIkqy63GTww=;
	h=To:Subject:From:Date:From;
	b=TPo0fOLGLkWLQyd1x2qwVWqo4ONyaZkxMtL+NCI3/dep96TPGnI9fXs+n55EdOeSK
	 zQFbsawrTYLSFt2FDzMkUenBhKSz7n4jJJiXWVgBu9wSmMbP6sPcPtyim8QVSeoPyu
	 RNXHg/5Zj36o/rpUxFOHkli7ZiWiZHraFHiWTPhCKVS8fXWiHE0Jac8iQ3sHVzTr5Q
	 HRblyDu1+cO43xXkNyWXUYMjg9XaqGV9VPrWv5uk0YnmR8a0gh7mAGpM539QQ4J44g
	 zQNEtDm6pZNKrcE2rYsbkiI5IvpPmSfXGHF8Br9680nz1mkIV1IVxeP+bE6FU1jJD+
	 Tjf1uW6OFZwjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B8D3C533
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172920395358.7460.15757643950978921187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8eceb8aee769717b88f80eeb287f26d5d7e4243636f294df73837e7ddd2a523
Date: Thu, 17 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729203953
