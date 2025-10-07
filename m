Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F61246BC6
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759878594; cv=none; b=OhbyjzNwsYuzGWYKaJxct9RWz7UCu5Q3s5tmLqtxg/7Yu5WH/dfGsUc76AWo584Agnz+Ml7FyXN5AF1/H6l9MZiu2vxGYvAuUkbUN5GI7jEqfIwaDl47lDrhhsT8aWjL5WWCX0AmnhCtGJyZOa5GHcZKq5XEinzWDAI+qH5eo+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759878594; c=relaxed/simple;
	bh=3bTUd2d0TH1kBf8mOlq79hHotRxHS8YEVL7I9Tn3uTY=;
	h=To:Subject:From:Message-Id:Date; b=YDGkFu+3ZKeAFz6IzTDkYwnV2//p5Nfa21xojaL6vDrPKvS/1la2VUKxQSwz6S4QRImlK8bhZ0vVDM+HAydo++cNwMg43mHIxm4zrGSp8LP/t8KCu/YnxKuzEAMgS3NgyD8KlCSR2DyJtR+96U8UjkKSClT0L5FVZmjErjqhtAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDaqfbsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDaqfbsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B22C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759878593;
	bh=3bTUd2d0TH1kBf8mOlq79hHotRxHS8YEVL7I9Tn3uTY=;
	h=To:Subject:From:Date:From;
	b=LDaqfbsmMRdLeGNHGqCrzMwwOPiTyF4nnjGulOU8Z+Psa0TlNv2q9D0eEC3PxJRqS
	 uu22xO7JqsWJsN/hgh+VqJQyMRsQMZcQQQgRHsm4tB+XBKkqdrysFycNLY+QA3EkbN
	 EcCCO64QkEdCWb9Ch9w7uN2H2OWbEknABwRk0SsjQQ7180+g9jz1Tkj1fiDBtCPz5N
	 q4YQyG0Bp60T2vxExpU4tGpdarRfCLSIAOXu4aKD6uNygqPcUXGrxi3NFd9YNeLXEB
	 cUABi2M9jW1YWMpZxn2QkgTZqwXCJp4ixXDFwp42QhB9Z7aVXibSR840iRRqHffr0P
	 u9of+NCClu3HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9492FCCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987859357.19168.1013583474772625108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5d13ab7716b8adc3844fd1c1b51cfe356661fc2a1fa862580fa4f4c4071517
Date: Tue, 07 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759878593
