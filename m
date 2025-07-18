Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E372D9483
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752853794; cv=none; b=t0KAotWDXJSo03TgjiQqcdMAH6d/nU3oXiH/mdq5b8IoBiHAZ8JBbkwnJtW8F5HzJpJSNtqdyGg3CXbdCbc/MIizKns4offluU2jVJfBDRPytLhlvNetcY34KoyCpDSPZte5o3MMSE08FxZBWC+P9Ar/Gtb8uwh7/8phoO7ZT9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752853794; c=relaxed/simple;
	bh=Jz5sBHG+YVeBV+ADm1UjhUGEWShB3DetMTHlFnmPqdA=;
	h=To:Subject:From:Message-Id:Date; b=B0ye/D74qQH68f3CIO54cEcZ4ftl95vFMTSaeKiM0UdUNOzu52cxQYiXjKHgokoyKntK6WUWBVwi2cm86sLEzq2sEGVyAWW7xXtpDNs+UbFghGe2Q/xAEC7VJmKyTZajPz+sR8C7ZFMZgym9vD+zeODLHTf6CpCcjhakSVvEqf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdO26mgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdO26mgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A067AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752853793;
	bh=Jz5sBHG+YVeBV+ADm1UjhUGEWShB3DetMTHlFnmPqdA=;
	h=To:Subject:From:Date:From;
	b=fdO26mgdj8+mR58NvyYdI+osfRiuxDb1OUuwkSQnnplVl/Ul6kIRnRd9lOGuITAYn
	 TEN8d//tDEMR0F8k0VKR3uMl4eKE65uHqlEWp/eT0Yl4LbKI5YPNwlt+bEVPEaAIxa
	 NzL7BW0lIgRhcZJ41eCsnSyxtywdFzhxfAhWbEqgFPnOszO/vd6eVvsDOyXNarVyzp
	 d5tHNvXc5+8bZIJXZ8iVhCKHZ0nuQk3UO0OA7q/HAIBtURHS+DesyPQNXpNDRHEANl
	 xZ67HWHLw5OMlgt+hY2O8c6YtRdHGyIGu0W0lb9XydeuXxzYE/Cm9iWgGp14twz1uy
	 kdnkq1f6VN46Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90839C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285379358.24084.10597648421070350531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73d30410dcc911428618a7c1cb2d5f602826e1b8b9fc8a0ded2e641a5341683
Date: Fri, 18 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752853793
