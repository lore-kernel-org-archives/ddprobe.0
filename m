Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204FA31C57B
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779948154; cv=none; b=csJmBD71T30uoOc2xySRFl9zXzkgZy6y+NzHqjiQFlEYYMhYBEXHC5/lBc9DZipBTJLF5M8hJKXtt6kt00yjoFYxU5igGuvUS9E2sc2bAlKSQDdpU3D5lKtzPNyRmsvqYO1KLAq3bZ8frYiRfIM1vcCGzCAd1cULds9Ly30rYwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779948154; c=relaxed/simple;
	bh=GEmYAph8j4qeZxorzafh4EzFmxYz1klwAdXEoEnL3N0=;
	h=To:Subject:From:Message-Id:Date; b=GluJ4+v2ufHRSbmag4sdR9g3lBZ5Wf8gZsXE5HjgCQSYKvBGYfmo26DYTl5c5UYcqzCToHa2csFzd62xicUS4nkHd1/6nNvcyizU1EyuRTEsCVnQN/gTVXl2VK7+zBXe0hguG3Fr0RbAskCn88Z0KtYwmSz3fb9/dYFQrXHa9Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLYZIgV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLYZIgV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FA9C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779948153;
	bh=GEmYAph8j4qeZxorzafh4EzFmxYz1klwAdXEoEnL3N0=;
	h=To:Subject:From:Date:From;
	b=BLYZIgV0d7QIigHaF41pI7o+8y3S8j/bIVWtIAf7rNhwgYB1gNHWKHHT550TeYLjn
	 uvV6JBltQPggY5mDGS1U3DzX4INz1Vlhlm5Ddb4yHCrTSO7QJCv/l91QEySMT2+7YJ
	 mR5P9MhR9YHQz40JRA55HIzQPiJ2ab1Httg7g9hjwmOBzc+AvhzJlkCCJ0w9pSM/wc
	 kf40qsE5ljAfbFqSVI2HBoW+9SbrcEI1JPwarbuXTj+G5cr7Z7pVhpRUaEayNf9HXk
	 cH2ikWGk3Y+0+n53syADQ0k5z2KNXcTJG59clhAndF+YqKmFhlcgCn2cHXB6AD2BMe
	 MHsbImq+R+I3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B169ACD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994815371.32091.11692393613174326710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201b17f825e9a51d72a2b493a04b4728befbc5a291712188fb721280826ac4fd
Date: Thu, 28 May 2026 06:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779948153
