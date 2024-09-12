Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141A91A724B
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726140354; cv=none; b=E6cdBis5CNF7W2LaFn32qkBozo+tODMGrXblme+bohohmbaGu6uCdbmuvc3W8GxjZDc7r2MSuD4THspED1EqQ4rutJ0HNfF4u0FM4C/ufP8sRE9QAzEkcpsQ4zx7I60PdF0ZvnySYo+JvpfMBOsyp0bLmcJxVIb+LttSK3HaIr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726140354; c=relaxed/simple;
	bh=bF4vGoCSosT4k8jXWwdSoWAK7cltlN7HS2bWJ/pC7mc=;
	h=To:Subject:From:Message-Id:Date; b=UkfOyyM0Dq/HWyTD+b2wAR8IKadIeZfXwEaVPMc5vfrIB41GziUqBbhLCJwg/IIab7WLjtpdtgIyEhy0vPlfi39M38CewGzolKAhRjytrObce4I2P9G3+U0rWvAKXnHfZJxvBW2rSnrAbFlZlit5dAaP1Ll7rTDmM/P1kQKkN6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UB0pmhI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UB0pmhI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3433C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726140353;
	bh=bF4vGoCSosT4k8jXWwdSoWAK7cltlN7HS2bWJ/pC7mc=;
	h=To:Subject:From:Date:From;
	b=UB0pmhI9vAS5lIb+C0TKPrAFsezInuv2iYPhU90SCjdyA46UPoCLlXSjRJLkvwPSV
	 BVnf3wakgZgWzbHXCvLofPvNSC4O3HpPtkRkSe30srcg0NyvuDxKWvBg55BYROR3Wj
	 IMLzRDXzOb5iOVQq8sJlxE/hGHYCnZP/oKaue6amFSGnDfsE0UdUAW1aBtui4K1n/X
	 3ji0Drlm4pgNmsV+NQtpKT2K5Vbr+PDppm0l1MTmJqEAlfYuQ9jVLIn4oufjjN/M7k
	 tYk3q/zoAOYshzJ6bZv7PoTswss4NssX8s0gKLrr6eb2rtLWOIKCQ+Hq6Uz6UIWmAt
	 Lqgwymi02BD+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B5EEB595
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172614035358.18319.970019238504656929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c03dbf7f3202377332c055868d6d343486ff52aeb84dd533cbffeb017198c52
Date: Thu, 12 Sep 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726140353
