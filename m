Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFA2354ACB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760839794; cv=none; b=mC6LriPuoDikEl/1HsEvqwZ6DQNHImIWBv2j9CqVpt6GXC5E1Z3AgWHsYoRTc51Ci8KDZd3OKz+4qzDG0PlFjeBe1HB2P4HUPVF9vBHU1pFw4KLrt1nOyEP3+9pfwVzBmU/cQ+eK8tzEFk1x5M8nAlYvtZlojDjiM5ZcRoIvKp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760839794; c=relaxed/simple;
	bh=l7WOHjTaIvcRWYRHJ3z1QyeMGgyCUo6nW7fzoC6vCa8=;
	h=To:Subject:From:Message-Id:Date; b=ZRSU4UNO3lVNhtG9x0uqttxZhBzEJxzlgLppm7XuBhUmwuW17uHk1f4Wq1uSNGSf16Jtydq1i3WBkD9x1sk8Avd0o+3SFiCUyswomoqO5bLE/VkYZU47oSYmPKOR7KWHVeP8B0c4J7dfKQai1rhwZe2qgNB/NrdYkTmPsNgH0Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tro+eK7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tro+eK7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68C6C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760839793;
	bh=l7WOHjTaIvcRWYRHJ3z1QyeMGgyCUo6nW7fzoC6vCa8=;
	h=To:Subject:From:Date:From;
	b=Tro+eK7qwEY1pdh4EC0D7WuvFpRqgrAL/yKy701z91ck+q+sQWv++jmb0wWyomczV
	 na34LZrp7RANEty3rx2SjhC1rLqG22rbjOsMzc6YYi02imZ5EqD0MKxsq9Kpc8PI4O
	 cgtqeDyDkUB6Sx1v/T3ziTVy59k014EUN+vNj2ZBFcNGIW7M25Bo+MonLm0glzdCRb
	 sYkMgVIM4QKXOZt7wiNbzEiB2Yz+7L1LEJG//xdBo4qIhpwPc657Lu4mQvLzJbBfd5
	 64ICA+Il6WDkpveQSl/GOoUYtfTjxL6dXHgzstSevWv+ppUsWIgMMTxORnTFBVbd5y
	 jJq6H9UiJclXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94374CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083979357.22399.10820916722245629216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e6d5123af965f15a0e65903bfe6801cd0f05636d2fa4104c90bc98905ed5cb
Date: Sun, 19 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760839793
