Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A771DF99A
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762494594; cv=none; b=gSuhRIXeGkNpl+20CVKlKfuATzffHBiOvX648ZavMJ3WJVbwA4M7+z+YOK/cxpMWu/ngIpRMkPTrJ5uEl9WHb9BilOybkJpym3bDOt+5vx4hnWCys3dC16JregWapZkbQun00cVXcFuETn0NvbRm/YmuZyYkPLvpKFtKrJIF3Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762494594; c=relaxed/simple;
	bh=gYf887zsMnvmnvm39cmnuEMN9JiXTH578Jp33dUtXZ0=;
	h=To:Subject:From:Message-Id:Date; b=tt4IFnxvBbm0RL+ZHi2wU0EJyOWcBQdg9jwrKE0/H5KQf5Q34DJJcDqCqAALxe4Q1j+Ry3IsA6VMA4Wmiq8H3OU82m27XjNNXQ7boo5+khvCvMSTuzvnHHv7Xml6ru0VUTJrCE3GIW6zi/tXZu9ovY03MVfeQyjXdQCitbE0WUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hs/cHZC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hs/cHZC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAE2C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762494593;
	bh=gYf887zsMnvmnvm39cmnuEMN9JiXTH578Jp33dUtXZ0=;
	h=To:Subject:From:Date:From;
	b=hs/cHZC/Il2F7asg1pxAvPqer0hh8mvP1GXiPpZZLiV1M5GeZapMXmR+9eBX6gouO
	 1JBS7Hk2Kjr4awTkVO56lp55XAiMDpBT/6VJ5/CbL5ozgVyhWTD9xptCDBc6SVDn4T
	 GEh2QF6EtK9fbQpA+WPsontnjf5xIN05XM4GyoJVZad6doWCMOpP3eivQ0RIkY8iGh
	 C/CdETjvpIMcC8ibGTJ88lIANUJWllD2/KjADXrh35ZfbKLthaHq04rQ3B/BYzj3h5
	 Os6A5R9c8nnzd+u1Fmy24boUi0uq/hi6VAsNddXQyFdYjJvZwkrrGjb8GEC61Z84tn
	 oL4ys681dy49w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9C7CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249459364.32483.13490536948865575656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9a2c30ba2a9dccf919c2e059c7a571e01f6689ba20b56b278b1046fe1bdf3b
Date: Fri, 07 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762494593
