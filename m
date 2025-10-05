Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195218488
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759696194; cv=none; b=NlAHkDFAmDZkdfbp3k+ZtSWCNGNQnvA8QuEk0K6pSTwAhjsS7StOUBhNJxTGNpP8YQ2mKTP+jBZrpAb3Mq7CbwTazQCZxug4PbLyKy0RvkqUpbclCzck8I451N5FavheCtWdjn5VA2dfbj3gDkYHTbx11dPhy32jWsXdj6fPi+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759696194; c=relaxed/simple;
	bh=g+zFyK+emXn6/GcjK3bLvRUq/O5fAPP7Zk9eatIOMzg=;
	h=To:Subject:From:Message-Id:Date; b=bwEEl8QKGmOdA0gUjDcv3RqjQU8zMAXp1WFyEuvIQbuC49rYPv1ME2mQCeGTLXWYld2BUafH8ic+Qtju1e5wcq/l+xzkOFVM8ilH4XW9yf3vuJnUc80Hgxp+BAksNYJlwKOtqixjQP5p3D/sDm03XK2UPRjqgaFQgFvWAHTLnDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvdAarrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvdAarrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9571C4CEFE
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759696193;
	bh=g+zFyK+emXn6/GcjK3bLvRUq/O5fAPP7Zk9eatIOMzg=;
	h=To:Subject:From:Date:From;
	b=LvdAarrLmZTTg2J/4zGOjBkl4s/5bno72qhYEtA0zCiQ1d87oJ518duKkXoAczkD+
	 geZiyOCPAU6gyuhNK6dY5HJgagsR1b0Y1Y3HmEzlSQp5kjQTXXzYWQgCcXhkUaxMpS
	 389VDGriJF7JWLZnVD8/i7UjGn067qIT83RrU8R/wXMF9eemdJaHNk5MomsqVKexwJ
	 9ZGIiwJELIIT6qUt7xZcPj9LdomMR9EYs2iHzMwpGx58KWWX/7U4gjOv3YOQXLQYYc
	 HW+v1sdnfZ+yHjj6p4B18PhAa/qz8kirEq4HcjaC54BJssRK49Mudf97E4C3wodaRL
	 1qs30G6eS58nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B3CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969619358.15306.647498157130193304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e695d3950f94091f9306ad3523846c9ce3b88ec32031f6e878fc67ee9c0044f3
Date: Sun, 05 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759696193
