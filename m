Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B14D173334
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721895354; cv=none; b=N19IjSfKtDqwdigR2NizYU7h18EbsAneq3GmibHfpKHooBVuTp3+zybh4eFHx2SVtqFrap2rGPK9Af0LMzspCLf0UajR3VaTcXIaRtVcHylTg0O7NsPSVzFWz4gq2/PMQU16juTRFO2BooOG29+tZg7lRgl4zUECN+XCCFUyXoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721895354; c=relaxed/simple;
	bh=M+PFO/Cg0nvBCdQl1WK6BqFw94UKSuthuPBkmly82g0=;
	h=To:Subject:From:Message-Id:Date; b=bSsfRGQz0xibTyl9mXX0MnS9mJd0SDCH89e+cO8aMMj3W5/lPHO+sMBb6kLSyXHK+Z9tfGOQb0zPxRL4Thc9Xha6vMVxaYsMMsktqkYPpkhUes/3HwNqBfSL6kmVdhCs83RsGSE+ycE2cEePJBtOu5yWDA7d9xRmU0nBNrtphIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mou9aHLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mou9aHLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF0BC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721895353;
	bh=M+PFO/Cg0nvBCdQl1WK6BqFw94UKSuthuPBkmly82g0=;
	h=To:Subject:From:Date:From;
	b=mou9aHLGLeBUF88bRiGddJ/Shd6bpt80XxX8woVnICmCWs2VO5iq65SjhajLl9llN
	 Zl2goTAknHogqO1Zi5Em1l95d3wSJ66rLXC5TSYmu0RPZdU4H+Mi8kOBcHPTHAnfi9
	 lwY39lNGegQ3J7LOYEM49wApaNVMZLYAWIQpWUa8Y8ajR2+ib03U3T1jgiDDpZrL9d
	 UowhxjWgacPlZdyDLA1MzqK3+R2WeX0M7Xzfg45bSJzk/ft8O08O+KavDaEe0FG9Pe
	 Nd7bGvZ0pDOfJwk2v/OzTzUH9+MJETaNL9CgNEXPv/kU2eL456zQS4aifx2L/obmYX
	 dwHRbHVlL4a8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9C2C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172189535359.15448.16791224940677048592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70f2b4c85fa7597d9caaae874a800a98a4c72ce84b51651a9eab2540557089c
Date: Thu, 25 Jul 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721895353
