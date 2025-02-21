Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B37F1FC0FC
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 06:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740119334; cv=none; b=Tx3R6PQMYBL2WhfO+TF9g7YqVee/ynyFZ2X5ZuQwgoq5z7k0Dzb+VJ7lBaqrl17vubr1x831qQd5MacMmBh+boP+jGA+jYv63qMfGSyCoJkllJQ2zFjWb7RXEjxZYKBydgmBSvFwPRrdkq20Zp6OxRSTbqtwO/KqsPv5DRL7o6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740119334; c=relaxed/simple;
	bh=aIBP1i9V6Zu5uhtwTiITs3n4jlH+jV5uLYtf7KkhT4U=;
	h=To:Subject:From:Message-Id:Date; b=ax/kxH3xFJ9BwPV+BnXX7ovIeLAY5JZ3ul+SHWU7zGZTQ/B84c8xLrxObrgxD0QO6XgUeA2xuueC1leoPYn4Ri8bdLVrGEiuywopA/Cx0VxwXL6IVPn+/AzgRrnRHaulw6QRNOx3eBQyVC1Oa70WqGWVfbamF8Nh/F4XMTqu5UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpzQW23J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpzQW23J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB51EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740119333;
	bh=aIBP1i9V6Zu5uhtwTiITs3n4jlH+jV5uLYtf7KkhT4U=;
	h=To:Subject:From:Date:From;
	b=IpzQW23JtKfMB5fxlMDtvYHtAPz/IPd2mSZQR/P3PGap5LSeXD2Vkgo7hVGyBg7tn
	 u8usmx1iRoNw4qR0Lhlx8jUIHp/Qn/4FIn9Xlhs0cMbS/UyHa+m+mmXiU6PbP0HOEV
	 R5dCexeFH7+nwTtUliI4kAUcmrA7i6lg+HYb37L0LeUcHxoTtA8SzjPwreWudau5aQ
	 hfoxlTN3moZ5DZK3iuLg3Ms7A0s+h2ux6AZcVkfS5yIvJLvYH+MEHnIg0UthQPcmIR
	 H2BGrBEzf8Sc1BOjYH8mJv7MaDrqlQwRF0WWo1CDz6JnRfuh1lTGm2keD+Kc+XJMmm
	 ewDOreYcltu0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81BBC021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174011933367.31390.4528381931971037183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7e925c58bafb9ca92881f2074105de73c3864c8a7795c84abec5ceb0a4286d
Date: Fri, 21 Feb 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740119333
