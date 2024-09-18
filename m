Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2531F13A3F2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726683354; cv=none; b=WfzACSa331s/hnP+YawORv1KVZlL7HYQnExYdchwzlWR0mM5i/a7UV1vkXSotojQ+dA1pG1F3m1yrH1E6mMoMm1+7BqDM0fW5aHHtNSxeyljk7v1PUGsaporxibL75VDpnwIPMjRq7Udb1kWEO3hvC0MrUwE6OiHyrkeDfKKq7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726683354; c=relaxed/simple;
	bh=cbMNa+7UW3TkE3Q2WsXFhJU0M5tG1/+J0aBRNygpKEc=;
	h=To:Subject:From:Message-Id:Date; b=DgpUWEWGpHhF1h9uRXDUIBHtCPRfzZY5Wq1IQ5/cmz+HmVPcVI5gXNfTQdfzwaY/kHwRsqi8GcqKx7l+FRNasg8Qc1J3dRhybud/fhaEqGe3506yT5YzTMAavMZNAU7NiTpcfwP/Ouj0EOzhByETE9gIGBLivyA+qCcLKPJptVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpThlxs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpThlxs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1321C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726683353;
	bh=cbMNa+7UW3TkE3Q2WsXFhJU0M5tG1/+J0aBRNygpKEc=;
	h=To:Subject:From:Date:From;
	b=VpThlxs+9tDcbr4GausNMlzNBCN2ja+O9dOV4iJyqFCgg6JNCb05XLEctXsbzJ8+d
	 hpqQuxsnc9IYa8Bj/ebiNdBlydeTFNNWdNEsb6ebQ/MwWNEbKQNesPaqnu6OWotFPM
	 FDSBwpkKYb+2xcia4r3U6g7aifVsjbees5Z2xa4sZFkhiM3l6g5uV/xxzq/geI70V6
	 Hf2RfK0obdHdzVMBbJqMjld34krkOcpBWM56VNrqw0paDP8L6U0w/FXWYIdCxmTWzf
	 ++LGVm0MCSGmE157i/FP17n7UsS+rcyDu2vB102CnWmEfm6Eu9n3FWUAZvR26NtiQu
	 9jEEQwxs9Mj6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F558CDD54D
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172668335361.5853.13352796409561142518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 130c28a2634ab42f2b3c7ada7e32c0da305dd4c75802b2f070f2aa4cb967dca8
Date: Wed, 18 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726683353
