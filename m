Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347E714A60C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758334794; cv=none; b=Y0w2eHZj9w+qPtgQa4qS1F6+JzfSa/NNhQeBxmSijmMjSHxohqimkxCqbIh07cpip1DkHGkPEuJZs81mQ0w5whuqgNrNczNXjKXNe8As46Ocnnvi4DtNAxUt4bh4WCBZx7q2q3kvpV/hwcCXIQJMbvK3cAQC8868ZNflYPIEHz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758334794; c=relaxed/simple;
	bh=B+NwjhktQ87mlUaDFz+gLAOt7I84VC9OJySYWShVbjk=;
	h=To:Subject:From:Message-Id:Date; b=U4EgOTSQI6QAO0/4+elXbcI5fTH46Nfj1Qt8GtQ8iqOKbAgekYgHtf7Aaz0IgKY5IZrF5EKjUWZGhfhONbI21BjhXtSgJ83oyRuz9fex5uPk6+3z0beKok2QrUl5Q5jy0m6CoGmS+tr13gT7K7fbRmaU983OvEjDMstfCBSVaH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwm6xUoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwm6xUoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A504CC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758334793;
	bh=B+NwjhktQ87mlUaDFz+gLAOt7I84VC9OJySYWShVbjk=;
	h=To:Subject:From:Date:From;
	b=kwm6xUoY3gfe0FSbNpaj4U4l5LrSlWRRv2Uw4rY95OXauGRT2cEPRm3bJAUR283+X
	 WGuzjvyXwl5sSgn+bGTHWNCLog3U9K5/+z7EFOB2r2sXhjUt9JtEY7uSEk+OtvtRFy
	 gEeP/tdT7KKV19cz1ugzlmHjqkzyZGYZ9bIaavZIyzOJAlk6+PdcWkyLEy6RaIk2ia
	 B9DQjO1jbfvVy5aKxxuWfd+kd4G9qZAa0Lqa9R3Vmj8CyUajS4OmC1KGYypjK4NCIT
	 WHUmLaPjHesKD2nwKCbTI1eB2oPUg30EvV4mVPVcRSIVJxJXVjcmw6mPKia4jjR4/7
	 A0simvTL25jXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9283BCAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833479357.22732.14298398804364916586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318234905f1b93bf718322ef9b9657400eb5c3341aeec6394b363ba9aeb143a1
Date: Sat, 20 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758334793
