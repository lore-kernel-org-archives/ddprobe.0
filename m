Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61606628
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718860763; cv=none; b=gU/YWJm4/5JnPRUtN/OvchB56CIr84ak4Q6EUMrkMFRUFe1XFBEmd59XQwtvUI83QQEUo0cmrW/VcFJ5602s71q26qoX/UhzasH/qO7Z0C/BNy/IBubM3DVc5+hT/tibHHjkHjMgZgRSz4lS9QY3nUddKAykn/IE1IDaaiJVkQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718860763; c=relaxed/simple;
	bh=h2zD8jUVC/xrlytF6j8LSOm/+b8nAUv6aormgkbQ2hk=;
	h=To:Subject:From:Message-Id:Date; b=KOvzfyAlTz+e1RYTa3XYm6VNpXo2NkfiLlkcGKGzlymh8PUqTJgoLK8mhQB0ub5TDi/dGTSVZiDAIxr9UeGABZxz9o1hOywGJjViAGJMzsOy0AyYWRIu4Hy0pbAL/d/lyWrtzcrJs68U/gW1kdrowOA0jqyKth95DjsDOtd/CtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLR2D2UR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLR2D2UR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD91AC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718860762;
	bh=h2zD8jUVC/xrlytF6j8LSOm/+b8nAUv6aormgkbQ2hk=;
	h=To:Subject:From:Date:From;
	b=pLR2D2UR4dPkL5SPMfJORBUCCX4OgYtwD3jFmEc6uPWHjjiNbp2SsOP5eVHhw2/SP
	 y1T/WDuwR4Fmm1l1Zgj6ynSfNgDF7xMvRA4hPePDSoxB/RZ8L/0OmdLg5UL13dxAsU
	 9C0zCTtCtgtHZM7HYTTf4bNGc0KCyXxLgpEP/rRp7EdZVY3fH2a6VJZ/+/SyTlN6Bw
	 3CSTt3tu2vbddq7j1qS/GFOj+6qusCqE01mBFlOOC/SRY2RRjRTFTqPL4dl1Rvux2z
	 ohAYIwKzGIyXXbhQuCLfg0Kt2ATf5DdG3TgQ+RBls+mUrU9IbQqKmHmDZWpg5JX9/h
	 pNeVjXb7+OXDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4EA9C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886076278.19353.14817801681444478633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59bcbe5f0f08635ef610dadf10f4c5f9e1c3f8c15538fc694944b7c6b7e9f9b
Date: Thu, 20 Jun 2024 05:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718860762
