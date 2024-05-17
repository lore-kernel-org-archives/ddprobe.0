Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE775BA29
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715918543; cv=none; b=X17sp9B5DOF1x0n425tH5WdbjMTC8aHocSoF6xW7/TCr4gxdiSYA9azbiWCUfjmqRpVoJQHBOd+4y1Tg7BRrUL4xIXB7Z4vRYlO9fkID5Dj8sUxCRMXiR+9jbEBnNOUD0lg3ujIfvCtIrfSPLKKXt3akO5onLA2SSfgTncXxkjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715918543; c=relaxed/simple;
	bh=KpiAgniH/lnSZXU2nIFb/XHd7FjkmhRrR+F3ASil3nA=;
	h=To:Subject:From:Message-Id:Date; b=bR6Rt3koy9LLEp7xbsrmIQcjao61a2+KcpzdS/kE7e4OnxKGQNC1ZH1XR3WEszncuHzZ7jJaGiQ7pelcDkUYXEt5jDPObVDx03zH1I23iMpMAE+oxnrqfha0wDzKidOgtCq8cr4aRID8tJRBrC4U4PlWUAJQS9+Ug1q6Unsafg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riVpDKb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riVpDKb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3D9ABC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715918543;
	bh=KpiAgniH/lnSZXU2nIFb/XHd7FjkmhRrR+F3ASil3nA=;
	h=To:Subject:From:Date:From;
	b=riVpDKb2pmMjklMCrtSvyKuLsJlUmvfceRYrXMOfwWHv1uHRmbkg9uDOj+kBBVbUj
	 IO6UvsgqqZ0Az6BPsOprtTJeWbVp71V7s5LRI2xDE0C2Wu39lfwHYsewRUOsR9cvIW
	 YI9+hQS7hMuwH7tK+j5z8+/Jk6qwYLl0Xs9exx5Irsa4F5zvs4F/J9T+AEgjXsaOZM
	 KwOnm42iu3rUJmh15wfC6BZd3L+ziYz6cXVl6NS9U/Zb+qXxlX7RzR+HOPORwFPHi3
	 042ePGSqZoVKqGpJMdFX0mFFNzkt4RJCYTZIqnCBRLw8h6KD5h26DyzfySK3wjsE7Y
	 GSCJTsjXVD71g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01F40C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:02:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171591854296.981.561778771447484734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b90127563caccd99e561bc147c26f3918e09095d6a67d6e4933887b9959a35
Date: Fri, 17 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715918542
