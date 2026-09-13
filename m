Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4791A35E1D5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789289434; cv=none; b=PBgm1A27YE7/s5ROo2rJwzdj/1YMQ+gzvPPVJUAr2FDfogjs4Bxenjx70cLDND+SpKdTr4zc2G+fegxkVZeiRomYG1rwz+mCjRtQho20KQbgHV3XZ07FSoKYxQBBIVYRhsFIQBA+fetpVuykFiZpIJbRC3wiBp8G5oieyn+XmcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789289434; c=relaxed/simple;
	bh=KePm1sR3zoicXvZo31YXzB/f3Sh6WeQwmKX+8wT9an8=;
	h=To:Subject:From:Message-Id:Date; b=iHklDGnIV4HFweV0v7kh1Y+gQImIUafpysc57BBJEj4xeYjEodaWgEQf+cOELGhVTMQ32tZ7q9MBMQ3MXqIxropCmwXA9YZlrAWzCS+m7jMWqECKLyn9j2MKaE1qls4I6kcBTLOLmM7j9jdR+HdmaQARqv5IO7OObClwkZLFLRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxXFwXBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxXFwXBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB17C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789289433;
	bh=KePm1sR3zoicXvZo31YXzB/f3Sh6WeQwmKX+8wT9an8=;
	h=To:Subject:From:Date:From;
	b=ZxXFwXBHxdMrlZrOE3eQ4L2clLds35y8DeLv+W5eWmkL09+rxGlOfoscYOC9JxUwv
	 CBuMEDJBEuq9e2rhhQHo53p61YLh1XRAY6QzGhza/l5+D6m+798XQQGTn9YvIBjBbD
	 6dton9GsQi4w6mL9u6CiCkSv1kvMj1+wuKOyp6bEO1rOGl39oj11vS832wFZcmF3A/
	 +HowySLtRU3HmZ8yje7t8t8eFW7KXyLl9pEGfku/DQ2PFu4Ax4JsgLz0sIxGTs7Zv6
	 AIYC+QOOkOjLN3ANw7yokaYPvq05f+RzIdlOpGZXC6cd23F84lApCrQocQVKX0ferV
	 nKI5e+5HTXOrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A940CC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928943368.14784.7028464773805369431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3390a6239667984c6deebf0807d549375e2a6c207f09c19dfc82d67c4c77544e
Date: Sun, 13 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789289433
