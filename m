Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD7D2E416
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712523497; cv=none; b=C1k+1KxmhCT15h2wkqXASjgOKf9z13DUjvCXQA3Me9HnWoRAlgxOMgi959JVUiMrEOLKqn/LPqY7Fkr+Mv6K3FH6jWJTjy9fknY/4yZ8aBSU2lbJn4KEv4p3D2K0xjVUeAxgzB/oxyDgKDAbBYU1GLzK2Z7wtaGX5LKafkJesdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712523497; c=relaxed/simple;
	bh=cJkI50GdGKW/+1rUJ0hXpMPnVUrIBPbyzhmdWPAMk5I=;
	h=To:Subject:From:Message-Id:Date; b=SHnL/SswQx5pmDosUxj0ZnpER8oZeqh/Cf6C9G3MySXNwFC+W78mp0/1P7H+m0KIwJWOwLI3FJfcKk8i25/q0JK6yl+Qu48x8EheBxZC20Bha9v4KDo9L7RWlExfwWdfPfX+8wy+JgLORhX23IKyS1BYmNkBqlreFe9pUvLYiXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+enETdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+enETdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76962C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712523496;
	bh=cJkI50GdGKW/+1rUJ0hXpMPnVUrIBPbyzhmdWPAMk5I=;
	h=To:Subject:From:Date:From;
	b=e+enETdYqBCoSx9aEvJaLtS0a+AbmUGIeUk020M6Udo+tTgO24EcVZUnY4Do4iHp2
	 csZ0LztqfaTwAS8lYDBKN6tXyHd54gkzHjqOWp7EpjQTYvkJ2EDdBMes+hG/N/E8XX
	 RDJZq04yyREXrZsj+SazJ1Rt1ajFNpJyeIm/tjnM4McvjhAcCvmlKhdeOe0Oo9tNUa
	 eb5ofS7p30fNOYRDHRCIfS79hmkxwkcP/4TO+LbGP2Zvmxs4JYAtfDk6c4xi1dHz4S
	 r03ZBSEifXvgO+I3/1uwhD8vO0x61uBtluYO/Q8ZiDsVc5d96UlHcw0dI4Yx2yEmiu
	 kjYo+yLFtv3YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635B0CD1292
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171252349637.27763.14182643892235081937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83d956a2a304d38000114778fe08b48ad23fb91573123a98e9e03cfbf1cb2d7
Date: Sun, 07 Apr 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712523496
