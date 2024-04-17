Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C554084E
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 23:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713398363; cv=none; b=UPvhBF4p0UNCYSQhrd3BJcA43ph1aXxOebqKQHDSpxYdUs6Qm2HTBON+7u0Y25/o42g7Kb4gFjU71medbgSmyPkgf6j/xjDQY0ZBePU6PxXSBqVARbZhAsdcI1q3z4h5PUTgww14oiej2l7oHJE1oAO1ZEVMBKLOicqYk6nXMRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713398363; c=relaxed/simple;
	bh=Su2zckX4gFvNBeeBzHGeip7ya0KC3XTtRMrNQ8Bt33c=;
	h=To:Subject:From:Message-Id:Date; b=mkKiFbDlVZ8OaYhUqo9f1aWXk6j0WYXX4aYxiuN4j1p2BEBLMHEXd8kPPRX3xbHcBoyIs3iL+FrEo48bvjLpRtoi3UjtvDvHwWhdArdpMeRQX+e1Nzg4mNIEtCJXkIxiX7Fz+TFWRcrHi0F6T/HkHZ7bIuHe8ElFX+pRcGfpWm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbhEO8xA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbhEO8xA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9217C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 23:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713398362;
	bh=Su2zckX4gFvNBeeBzHGeip7ya0KC3XTtRMrNQ8Bt33c=;
	h=To:Subject:From:Date:From;
	b=bbhEO8xAa0sszkHgPJUhcUv7h/ZAOxvBi7hGRoCyoE4yzsZvISBFQojJj3xM7antr
	 s8BAdlNqjHSDKKYsZAn26+yJ//78176hiwuz3q+wEgli/Oe9KrNssK6YlQt/wCtTPE
	 z9bm2qiazXaWfOiZsgXt9jNzXYifQclXAqpeDMeBJ9DUfcmMvvV6ssFCPjKKfMk6ov
	 bQJwTZ+xu8lvUIWXQ+ITOsXMX/7px5E9g50hzwiWyZBfExUIRqjemiuxMRA76vzx01
	 dwkAHJaUMHVXiF4qWOwpsZjL/Y8Ik5zxGV3iJjYW4vWpsSVGqo4BUzp2Ax4kJr5OkA
	 fC2gOlV/XIkbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C640DC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 23:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171339836277.14713.678297497803272746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cde171becfd8fcfcbd0965a3b0d105ab8b66c569f9bd4fef9b9a92bae21029
Date: Wed, 17 Apr 2024 23:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713398362
