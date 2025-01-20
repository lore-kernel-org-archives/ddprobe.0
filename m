Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B556179BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737364554; cv=none; b=gM68GvL5HIC2O9+Pki/IpwiBz4O24rcD975Erb1CJCkJH83YvAPBwtlX68aZOw4oMfUKtzhUjvxjSo2jmhN6sKwr/SsonyIQJInI9VXzV7mCOF25gstWPwsm9UbUwZ9Tunko7rx9OeuQW77ETv5fF766mepJco+2ntEYqhIgK0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737364554; c=relaxed/simple;
	bh=IfglL0E5WDVpUdShkPaq67EnAfdlAEr+9jE1XKmfHE8=;
	h=To:Subject:From:Message-Id:Date; b=tiBIzWsqOi65r8HAS30odu+FVqgMXJuwlrAXvaWqlmBB1rocZDv+f27geq0tD2hk9O2yS77O4r5yc5solOvMuObnXNV/5HRZxRGLXEcx7zTksa9dAqbNGaTTBSHdZ3LSDsdvULwafm/PwCsoXctUd4wZBmo+d28XjOBS/kuJiuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/kLwaG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/kLwaG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDC3C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737364553;
	bh=IfglL0E5WDVpUdShkPaq67EnAfdlAEr+9jE1XKmfHE8=;
	h=To:Subject:From:Date:From;
	b=K/kLwaG6YYvaIYsnsrlqOPSwazv/VB+2NlsdLJ+2CMcw6lqDxw4C9z2vqNUwyhxZ9
	 Pk/7OuJP263L+yPYtcQNG9wcW3Jp4HlHVWEvEQLahQ+/bj6gDNife9qvgI6UrYUugS
	 /VWglp8/vwAXTfnlTUWOgyTaDzEbuYXDnD+6HzQEca2EzQu/Qm3IaRYiCcKxHCrrwo
	 6MUVF1dXw6zfIVAWJPnIbpHNNudLYdRhX2aY4U2LZMlEmlmRyflJdkuxAcwMOaQwiK
	 5KNdQf0Pavou3+4uc/KF3ZnJBrGh8LNBMJHpcmbBVFtZVn0FwfsDDZbZsbFSrltdYl
	 lAOY5QJlHUsxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8EC02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736455357.9764.474335283930669982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9dabd13d6775ad82a56ab5ea50e73a9c70df6f4ac7c279641e418722b956ac
Date: Mon, 20 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737364553
