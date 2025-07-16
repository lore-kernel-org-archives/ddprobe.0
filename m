Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1D42940D
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752637794; cv=none; b=sIvLCywraRFcE1mvgbu5qrbWi+S+JWKAh7GJKrqkssXMaw+wj/FTlKQcoWS1WRiLV/xYsP6v4kOd4x0oDUar/0jQPC6P1UOzMHI2D5N02bGvuWYkP7MEEQvxjcezywvv0mhi2HkINvwXo8eGJecpe6X7uduxohQf/mnkznInMuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752637794; c=relaxed/simple;
	bh=WAcGEfd7H23zQykU6NQM4lc/bgaaxxqLadR5oznL3co=;
	h=To:Subject:From:Message-Id:Date; b=L9X3P5wm+/o/OHdAhriaVH7lz38Gv5pyGIy8wJzYMKo6gaRv+sK0mFwiYhXdhrvmyA2WKRcqOEXaUPiyExY0DvSAmMZMtW/fcG/M0QLm94kuGMUZVwM7Dxu3SRocsplvLKLjCK/DNgylTQwuXvlX2bJaWfqPOZ/2KyxWqBmqT6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEqQtlC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEqQtlC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14A3C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752637793;
	bh=WAcGEfd7H23zQykU6NQM4lc/bgaaxxqLadR5oznL3co=;
	h=To:Subject:From:Date:From;
	b=EEqQtlC/l9c8VA2J0UiZtjuadg6qxMyK1a85jghxUuvkgrf2MA2uLsqycNOjM6AUR
	 0pDRM8UxUVxvJLHAY904xtCdxIGQhycsMpSMour7N59CJNBwewThQQDEwsQFbYyBm9
	 HyFHmdy2aSgIMUsSXyLBOxwLSQDpMDMSC7tMBo6eFHbcxw3QTHMjIiB35ZFtmIHSCX
	 ZUYeXQVbjpyjsEgtXq9wBlYQGIpb5ffhLJ1DaCyO8G7wXZZYnPfPXBzxOvEfvbwtzS
	 rqk8AADzyxSO/9GoQhn2vOJLISLUGCGWHDcuel+Rzi1PkIfjv66q6SAbXoysR7WbwV
	 Cw+BnplgoMjbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F3C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263779357.30871.8263341791419752698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ae4a987fd7ad6f5abbfeccfa27b86898618e249a11ad381856c4370b8ae4f2
Date: Wed, 16 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752637793
