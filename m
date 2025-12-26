Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216723A1E7E
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766775234; cv=none; b=Y+eGRbs/2KaD0GIW3MHzN6ZtwXUxDjvBo7WtNw5aPkgTe7L+IMtlogu9aHwrGwkRLYL/2oUahc57CPdpZBGEsursm5q89FNIjjxOsVvYbklq5V74M/nO2aJCm3HK+OvY2OBK5OO5UkRSPHX5ECRxdFtUQPGhcRkNIjdLuWivegQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766775234; c=relaxed/simple;
	bh=/30K1ntZcTBabZLRDS/hFsM3nRYi69ExEeZk7dqIu1U=;
	h=To:Subject:From:Message-Id:Date; b=nauM55d7eGzVK1u/kVrJ9BFSYPW/53C7bXbxljGZt8Rv/fFfYp/MjDHjPF2bI+gikCe0v2oKrJTY2MJA9+IAHBzJD8fy09F1PV5rsj1fV1F0RHTT+qYd8yLMok7G7i1+oOd9cWpo3smgujdM7omzi8WSfNoF+MhQF+j0NwdafyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epJAtnpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epJAtnpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73D4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766775233;
	bh=/30K1ntZcTBabZLRDS/hFsM3nRYi69ExEeZk7dqIu1U=;
	h=To:Subject:From:Date:From;
	b=epJAtnpeKbelUFU3O3lb0bCawH6twTWc4ZIRMzRjojXafqxpdO+TH6pBTBQQFr0Fc
	 zAjZ0efEJCRj392C+a2+yCoIsxMCJu8Y9DaLlWdD9laZlL7X+rQShQJaeTR+9+Og0l
	 m01SxjFN28q7Lha+cUxVnGRVi6zxXZO7IBnkpuRGLa9Iojb7jZ/IBSPtLjHma3tIa/
	 lFoq4AbYS6O4FbkXEbdq4U5mtAOj/oR80AncpaBs17O421U9NytZOI3d7YpZ6WIP+u
	 jOEVgz+SJVJmd9sfvQwqWFxakSxEae9NZPWaeOTzegO460kKSIUFeVQXOuAvuTs/K2
	 wdp9/Vyg3N3QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9920FE8FDAA
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677523359.372.7791175765663412149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0454e72f70928fe3895fe5fedbc240f1a58ed05ae9253037b0925b1618b3fae
Date: Fri, 26 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766775233
