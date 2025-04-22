Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3875963D
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745297394; cv=none; b=WA+Q9hkUYudFp3g0SQqrSR6VVwL1Q4WSnPMuAHljOHahBgGkk7cUx/QoTbYJbLNgj75ucW1qCOIEzAKZyP1vcsr8kK864ZZv5L6gtsInUkaOq1UA5J9BRUcT59b9HqVtFW/+H6/EBu5ssneIKtosOPNfue9dhRwhyVF6MLJBVm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745297394; c=relaxed/simple;
	bh=e9KA0nOShTGTZVchtAt1hVUGcPlFSw/wuO/pEwuiNf4=;
	h=To:Subject:From:Message-Id:Date; b=PuYnMkUL6VskTM23hl86CLEJgpdK8A9ltSvkCfKcTtuqnYkyBU4E53vxvn4XN2ka/xwKi+P7qo3VmGzXsLsrAMkysgEP8DBsMJuJykFkAEDhRwRJO3Cw7kQBChRAElgF/uO4OMqMy4VvblTOqe5+DQN/f3Rk5WVYERpRS+QoKnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmbsBZ8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmbsBZ8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC591C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745297393;
	bh=e9KA0nOShTGTZVchtAt1hVUGcPlFSw/wuO/pEwuiNf4=;
	h=To:Subject:From:Date:From;
	b=qmbsBZ8E+kzG25tHWzN8Wb+oEXCpyjbdD+54O0ZO4ZFcvySuyZPIZc2yd4YI+PwGk
	 Xbx5xb+crGEnpr/YFxnDWfVFRdR2SQSiaM3kojbiX7FJAzudK4pgiT3cDiaiAFCQOz
	 P4cirufInwJylf9Q0ZDSD7HYepJp7VGLz+EtuL2s1u/ult2rjfYhalDcQamBDD7pnb
	 p73y7slOcZ4nCnrchGIY3iyo8R4lh1Bwz/xGiWRv1JSWRTATAH+zYBv7Mm52XNI76P
	 PxzSC2VHYaB9B4pWJt6nzoUG77A69sPhKgqRxy/fzFFMWVHuh3A203DWhJ1pgCDZaR
	 jUrGkMdF9pbSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC04C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529739361.6520.9439271196592617960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab1e1e5f4252033bdceadad1027289f902cc05b0ce9c20a5bd1deeff3256e89
Date: Tue, 22 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745297393
