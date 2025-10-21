Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B3E2E718F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761062994; cv=none; b=ERQSFGo2xuS5KFrvE9TA5Z9rdDX94pROcatM+nunwXQ6tJsMzUoKvBq2VIoYu+/0XTOao6vV2n/my+C5Jz0dfSNtPdDPNxIku3+VpzW4m0rkQ2aaTMSqyZjKu3mNLAE+dWwHxtxpfw375EIg7cvqpngDvmndQ1ZYcFW6Y0ws69g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761062994; c=relaxed/simple;
	bh=METQuzZhVZWVykTrxhPfG+I+HLH4aXi1ZIN4djZ8pjU=;
	h=To:Subject:From:Message-Id:Date; b=E4klorm+++mKDQ2dnbLvdcWcrJIIlXwT2N6Pf+F6Ysi1yNiJhnXYGa/DUYWkNXA9FkpOZN4MJeX/+Oh6lHOSflOtRQQ1MEdBSpGhNiKws2ifMkUAMY5cySMjAr+GhAAGg2xFP04SLY+4p4wzXforhxfp1ohJ+ucLwhxshQPtP4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z19/t8wX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z19/t8wX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8F1C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761062993;
	bh=METQuzZhVZWVykTrxhPfG+I+HLH4aXi1ZIN4djZ8pjU=;
	h=To:Subject:From:Date:From;
	b=Z19/t8wX2YBFr/RbQmMClw/O7g8bnqPDR1cATmAq+l1QCFOIK4Nk+qYtHhre8oVSK
	 mGHPY29fiCUj6I/3ipxp5WljdlUzUYaPPhdWiK2b/RYr34TYDSbeVTD5j/UQh+2U1N
	 JVUWJHTIDFyT2oSMs7ti+CUo9Xlp/hVfGKg2xUwDkmpg8jcxHOYJf4a8z6a7dVhp8q
	 DoFG1TNPCL7OOS8NKkz9ymsJ8ak8JFs6wN5KQUa24mz6iRoL9K8KJiFSwLZEBEJn75
	 /u4eGXqFIArlvYFU6wF3Tqj0wcDs6RoyR5kzNnKjLgItJFlHiYKtuKpFY9TiiXPqQU
	 6EhRNZoJfiwiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E63CCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106299358.5989.7007459319872049556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9d8fa66635b30a212cecf02bd574d51003461e5783c6e1a69b5843d1dc6f09
Date: Tue, 21 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761062993
