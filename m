Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFDB3C24
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726940754; cv=none; b=PpNIXA+GMJe32RD2/6fZT32K6Uuo+PQgZoEtpEaHr6rYcBOzJ1ExDcg47UsrWxxQa712Pzhtzv3JlsqRZAPkuZ5pZ84lRXczxbyH7nQKznH2GX1WlXk0Q9VpwmcMp/oOxbLZB5Q7EtHXuTZMO/3l9vTZwXM9dQ8uDt/b0/Mh2dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726940754; c=relaxed/simple;
	bh=6rlJcSgdS6JXEYRMLzKzh5midpClaVpdPRwFfwvFrdE=;
	h=To:Subject:From:Message-Id:Date; b=qlVhtu3vAibb6DRXx2KfUQmEoDarufA8hl4auMJGZTKRdOwrmJTkuMMJ1NCUXNJqXOqcOgp5/DsEg6usQP2oBzkBaP0p/Pc7UIsAx7AwZRHtm9QQ5jbdpbjGHty1cpmAjC5wnhNbSvgWTbSbJfPfV4hfoGjfL5JPK4cQQ6UlXX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7ipnB3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7ipnB3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A980CC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726940753;
	bh=6rlJcSgdS6JXEYRMLzKzh5midpClaVpdPRwFfwvFrdE=;
	h=To:Subject:From:Date:From;
	b=H7ipnB3tCeNOYM2YCzvszMn7f5Lm48YX5U01ABTaL5PjCTPwneP4uHIFw1q1kwUoc
	 ABygOGwn5oaXc78FxhJkmukOYDYLFybPzl6vEwCYEhUypmoSpB/kzZcPnyf1Z9ApP4
	 bfIsJ5KWj0gMF5HIue8cPTkza1s79g18wBEjEcp6MMI+Ex04N2Mj2wr1h0y64FKqub
	 4vODpuWs7rn2FF+NkmECU/RTZyLxfxEd24y4SoILp0vrtmI0GoKXYc1IkLKf3CN0LO
	 viv4RuxlPUA1FCV18w0S9VkRTayKkfx7MPcgtUf/Lkk2B8dlG5u5SRlpumg5uynEtO
	 mqLqauXV0ZmHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CA2CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694075359.32526.16037440741024587950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc178641cc323eef326150b67466a2b53e0f9701797b0dd71bc3587e5be6704f
Date: Sat, 21 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726940753
