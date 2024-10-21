Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B61F145FE8
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729539954; cv=none; b=Fk82QrHc3sI0eJg510rqU4VB0apxsWli6165iayqWlvAo4TR82zvE3Haw8YNyYgobZTbjcwwMLKea3c0b4Jr6++fQ2AxRLPwz+lt97ch138okDrkqRS1Y0P15w6ZOxzTnsD2tvPQvymGDH431Dn2d140qVxqYsn7778IF54pBY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729539954; c=relaxed/simple;
	bh=gsC8vSRJIc85j5uM8c7ZtQL65JCXDTsVycM7tMzW474=;
	h=To:Subject:From:Message-Id:Date; b=Jv7bFEdgmQjf9dEfel0AyNbzqQLWUzQCH9HwmMmPc+Zw6hVqNpEX4zLmo1cw/ulDcXtPMfwptfpCLZr2HzEoIdDLXbmRfc3P66xUkJMcoo2LDL+AaEPT75IwYrWFbVKjN7pVSsaW8MHQyD9FmHi+VveWvQPSfpbAAUA/cttJPAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lW01UgY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lW01UgY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51DFC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729539953;
	bh=gsC8vSRJIc85j5uM8c7ZtQL65JCXDTsVycM7tMzW474=;
	h=To:Subject:From:Date:From;
	b=lW01UgY2xuL1r8FD83RIIoDVTtoCiq8OZdFfIff5o1UwyY7zJM2fGUj6xFvMMIr2B
	 gPsrAd9Nm9xFDwUJmzQJ85mS+BhE91fZ/+3aEuB9i9wCWuHpAQFP+ThKkzJl2z6c+D
	 i1cTQfRwqbX8xp8jvdQfaSYEYxUpwXFcMnh4b9F/VkPo6Lt36Y+EGWJlDjVGkZDC+k
	 yq9PBnnKEYqM8XFTjDk+zTKuOAz7V+YlxCMN5uHCdY5T5To4CzfVcmcHPoKaUVMOyN
	 hp6dYcuTSN0VU3nQOcOoc6ddTXsz8QUkVF1eJQXWOSIk5I/uDgMh9Xn7Nlab4DnlBV
	 wT5fV5IBkokag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9167FD1712B
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172953995358.21362.10522886574478827000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91334b932f64002a5f904042bbc3d26e0cfbf423e8b0c59aa5eff33a040873d3
Date: Mon, 21 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729539953
