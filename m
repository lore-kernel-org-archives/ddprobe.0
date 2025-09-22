Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298DF270ED2
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758584994; cv=none; b=TUxDhY5M7ZV0HdQW/9peMeU3N7A/luyuR0zjIi8W7PUnsX0uOpopkqEF2hsF1Z3fy6QsYFLOO9jJKZk46RMEoUnsHNpm4iwWe5ToDZH8PhgoBIPyBKn9eQ4tqg0eDt0mfYFCk3XMQZd07WVc/jK/raEjuyI61d2BhdHcfKzr4Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758584994; c=relaxed/simple;
	bh=zYV5ek3Af5IUjShtggH5vo0AdO7BoBFePL3Ux/ciyLI=;
	h=To:Subject:From:Message-Id:Date; b=BFVZxtMgn1zpgiPlxUM1abYhAk9LfLfuJGBqe3a9SebufpNWqZWG9mM3tQzknro609iibOWVqUb/sKL+XlMzB/doFJTHre/8WQmQd+1Xk7p5mWlWa6ZtG7JAfveVjb9uLDdOq3wXALatFeD9atsJMoflFP/4nc7lZ6iQ4aX4mSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5N1vx5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5N1vx5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1680C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758584993;
	bh=zYV5ek3Af5IUjShtggH5vo0AdO7BoBFePL3Ux/ciyLI=;
	h=To:Subject:From:Date:From;
	b=r5N1vx5wDCkmoOrBxOxnDASJniLruU3THUmJ+Pfi5Mp+X91sK3hfwLX+TTrb+0B7t
	 J5bBFCRF7rovR4pReIfnSVcE+9qzD3IApXeAqMp41GV/JmH2ACgiG8psIIuUQfcjkP
	 W2+MqdE0hbfvdcFpqgkfA9OshWJ6L4iYdVV9exQ3zFoPCPTU2A1dL46VTIdCkFqZ2g
	 SBMNWcBQQUNXRNigY+NjXQ+moyHtJ3++KQFuCG7sIqtBzj8T7Db2FNP7zrOpfsID+3
	 02yE9dm68fGnOjXJOWqQjhKPnKx+CRXP68Wj0sYo/LaL0qk8C+c+IHAtJ0bduVWWF2
	 JKh6aFVoU0SHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9FFCAC5AC
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858499358.7896.8848738426844926140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae36a3467ed5af044f900407a8ce57fe8bb32bf8e53ae09dc5654b7ecc3ec7e
Date: Mon, 22 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758584993
