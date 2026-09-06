Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362B4450F2
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788707434; cv=none; b=d/i1d/Pzc5S5R0meudJLM+G/f+hYCcC8pdwL0nDMeqDkY1WKfZKpwfy3rhZ0pXRh8t4HNBf4bnPg6UAEQy78cNk//KA8ycQah0GgHd1VkMvy1+PGUH80IIISYGiQowNcpLZb9hhd4wpxp8bdL7L+N06aqxUc0PXmH+X1X84D+MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788707434; c=relaxed/simple;
	bh=FNEkBGEhDBfzeSsOXPm0+auwHbPGSprgtuZ3GGXmNL4=;
	h=To:Subject:From:Message-Id:Date; b=dV5+5NPuqYgDAX9AFCDvBgIIkd+/Yo3rHXjiLP4UMD2s1/XiWN84CsqRobvvqTjzZRNLMb13zrrL2gltLZpylydoO2XRU0+iv8OSWMiVnj0HvUuKFr0PJ3jON6ocVF1JfMq1V0uejybq1Zd4fNGjOrHPyBDsiMfJhF41e0i4gyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oe4XLR1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oe4XLR1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D773CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788707433;
	bh=FNEkBGEhDBfzeSsOXPm0+auwHbPGSprgtuZ3GGXmNL4=;
	h=To:Subject:From:Date:From;
	b=Oe4XLR1LBkbjnGdlZIaxFM6t9NBPDLijKF48FqA95JC+1QmyKw71LFNQFbYAqN+Bz
	 xXgWAgmHjc4QsP/rtnSMPPK4IW2+FXxd8EzGntJvmPcALyoq34RY6DYd01dIM4x3CF
	 p0N621rRYsXKS61aKi+/DBZrW6NEtgE/BNprJ29mvzWX2BpWIoYax2y7Y1Zqr34xin
	 MAHJFh20sWzRAcv4faJoQUdapWTvU7dfYFEQ0SNS0lyv2OfTXi4TnDYeqKce3tKQ7D
	 3RrSnycFx07bI7pQmCUVx6igqvnHHqGA8td1wNlKK0CCCkRUta6mcOMSD1+90uKrrT
	 E8ledleRH5K4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C58C79F9F
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870743370.27109.8028490447895767722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3963bbd3048ce0d8d0673616b978f4b084f5918ae367a1fec6a4854234b8b238
Date: Sun, 06 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788707433
