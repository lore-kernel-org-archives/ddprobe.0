Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE101CEEA4
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732577154; cv=none; b=rfAY6An75dD3+XlmFnh60quxJXnC1ah69RbPQ8q2tAkuqjuMyJlhhPcd5+VA+KLypobwF6f07BadCJ5qbjWBYw/wiponEtOpUv7Pkj02pqdJo7RoWuE2EqYARuO2Lf/IHECa+LnY6I+YBl5eglRKRkw9cewwn1lm/IEBZ4Gr4zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732577154; c=relaxed/simple;
	bh=MUU+FNuw7ZKauUcNYqX39thYGr/6FVU7AZgr4gbHHk0=;
	h=To:Subject:From:Message-Id:Date; b=JRPJoOYUcci2sZRYHDcv0TOjE+qbdeQZF29lpzqk6dLHvvisJ4BdpS59jYLjp4nP4VtN5E/e1CJLUW0hjWCOrucJN4146AZgKCZnaK1lCRBKFmHiNI2C7zn2JHD20CsZBBo9srMaBAtDwLPZBGPMJETGsJ5OAhPd1NnM19t+pI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzyexpEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzyexpEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDDFC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732577153;
	bh=MUU+FNuw7ZKauUcNYqX39thYGr/6FVU7AZgr4gbHHk0=;
	h=To:Subject:From:Date:From;
	b=KzyexpExGD6vbO13zfrCLYSgV+dLaFncM7438+dt4H/yC3hFgWoDBJI518IMGRuzP
	 RXtmSjm2ulAeMnu9k/adk7QxP447Fh9tddMybCdQxa+VkD68VKu+d1q52q51khnZtL
	 BMLpJBrEOG/ZCFRa0xNJPQ2pmqYe83kPY2Rl0d2AmZMao7/keBSwy1rXhq+TU2aSO2
	 DYH5HJY9FMW2mom6Svvg7H6k+OJPjy9zjyZ/qV1H/HTepkePd225LC7wcxUTdjGwwS
	 uMaQEnZIIblVTGC7ejOyrjK/MlTc28q5kd1nBxEFeFGIg0SOuNFD/nfD4sExsJtvkn
	 9vRNG4wvgC0/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC8DD59D7F
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173257715363.8639.1135977749667865517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b242be427c03f2fc1ee21b0170d079a2e6704653da04cc62d71556768c49c4b5
Date: Mon, 25 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732577153
