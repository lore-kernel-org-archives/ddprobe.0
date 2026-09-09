Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5929C3DBD60
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788939035; cv=none; b=hB7tic2Lp27fVHJdcHIN+NlxFy2N/SOcC1t4VPh7gq/UiQENC/pC/NB/C47Fvko5MceYzrvEghTlXGKSgbqhkx9IkgNjIB1VXxyKF51yxgKU84Ooh8ZBAcJfVZTeMkK+guAP/x2FPSVzVLsXMgNKOtEEkKHaaGtUApiDaIQyLDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788939035; c=relaxed/simple;
	bh=5d8QO1LwQXIc3+eChZli6ugekJfnBgBKqXrACRXTttA=;
	h=To:Subject:From:Message-Id:Date; b=eMh6gotm6xX0IExkd8eG8Q3OuMl+1xMjama5TcqrAAmfWTAgICkTqqx/bVUdhy8Wtxnwkdi2eLnfIkKVcPgIDlMmVj0fmkZ6Lf7usZEaoMGWwh/UczxoPPp09+1/I4iOSfTJ3GNr7aM6Arc941KaEqqHYIY+sbZ8EsAM5c+3pno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5Vu4rqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5Vu4rqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5375C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788939033;
	bh=5d8QO1LwQXIc3+eChZli6ugekJfnBgBKqXrACRXTttA=;
	h=To:Subject:From:Date:From;
	b=X5Vu4rqSA83Dhxjwi3y+A57vQGXn8dLa5+IqAfFrV5ng2u0MxHJfI2i4FDZL8twCt
	 kbb3EiRyP2fs6EE6gN8fgaa0Oqn0RuCft7W7pCpPcHtcYfZ6DJkVRCH0x4310ycsGZ
	 OdL8caSM2jRkypnXvMZy6VS+LQ54y67Iplk/SRhj8W1qHz3Z02PzsluVeaQQjm0krr
	 Q+Q/TmMPg1AuzSipzDfoY8BYkcJixV4g5RD+zpLad/bD6QEBASVyEvNrplbI5fJqKt
	 SpFgcR+GTb0DTcA8NkfB2SNdDvu3+y1Hxi+h39Hl+nFlWpF/rFYIihHTYgYfyJ4Whl
	 2JTlXxQ1JVlEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F17C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893903368.29629.16386369756336080508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2359e0b7567b54ca07dcac960e6802de99e1bab416e5cd2ba477f784fe5aa7
Date: Wed, 09 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788939033
