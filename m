Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4F0B665
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744066794; cv=none; b=Qq3G2wc5RpxI62H5adE1YyKO8oXG3qSH0O+WYVwrVWWYDw0a9sfloatlAxu3eGEDBLflaS5TJIfx1UyOZ5l2Hi2fkl8yT5Sua0DzENze0ajes86UmTJYqNaPX/7AY1IJa31h9ycrxRMhXszrbg6RxNitxVXdlHJBZ5ybGwdCZRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744066794; c=relaxed/simple;
	bh=mgUFkZEknSaq2MD2sKrse8bXVDgDQeZcQsAjpgR3AIc=;
	h=To:Subject:From:Message-Id:Date; b=ncAXqkEv61Za5rIIhUdvwzjTKjS4dZns86v5pqgPJ/lud6o96+g4K0T8pdOGkhTpZlEoPm93YFS/zCRT4m+ksgSJTEcQyvH++xdOHEHywYXic8CqfXiUNZDW2FaTHb/trCqTsQZ3O5zlKB47GDDjGxNRCqrhGYco3JVFPos/zOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3w6CMVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3w6CMVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A821FC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744066793;
	bh=mgUFkZEknSaq2MD2sKrse8bXVDgDQeZcQsAjpgR3AIc=;
	h=To:Subject:From:Date:From;
	b=L3w6CMVbE/lc48DQGvWLKfgVBcn5RS9EvTwn3VPkf6Q0j/RUJkfr0mgM4vWWrrKnU
	 O/w4lXAQpy0kOeGlKVzNmqPYdUnIkLKfGs5g8YC5qAon9iYkYuHXdHaJq4dKhmoZdH
	 GBvVez7MslsDE3TR9LhIIVpODV/gxkgZ5dJ/uQBC8vGsvX885xc8JuGvDJvmMchmGR
	 UpX1CDr5RqWuj55uX0Mf0CdWCSJ99JlPaaF0Gm7w3DfO1/3yhKDqbVkmpxwGRgmFSR
	 s0QHSxxgSFRKbeIeETmcDb6AlHb7vNpWcWESM/f5dsENOBEgu9kAOQxHrKhpYIpGdQ
	 FciR2vqRJzqww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96173C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406679360.21250.12434383407185293438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c29f411414d713378e8c7ebe34e6c4b0e2b220f9586ce522e3830fe9573ce5a
Date: Mon, 07 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744066793
