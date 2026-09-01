Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C34366042
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788247234; cv=none; b=SQejFrDN/9c2eFyhKjRrU+lRLCW7eHHDHF0h79w6l20gjms88OXDhbJBK/h2cbABV269JFp1gw1NUJHkZlZx8zUa32LYNMNM354G4NnGBLg5AyEEQLBOKR3S0DJ03TqNqm/iLPKuKvaeNbQ7p6eI/TsYJkNQPsaatEIU3l+3vR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788247234; c=relaxed/simple;
	bh=3V5oKwgxIaoC52LjjZgFJDxYij7vheJ2TRLYaLBAWaA=;
	h=To:Subject:From:Message-Id:Date; b=CgZO3hSuvi6Q+eLE3Bs6fQhUsKwwYw16ddHPCo2WTPIA6/yD83+RIczlKuDAQ07Dy3lBWEyNnFwULPimbCYbvbB5Z+Jz5zNxBqoIL8LLUhhimEKtvq3t/k4VdAEut5Ci9zsPHBtX/lwPUyJJMSd1Q4/J1X9TdFujwDZP9tQxdpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPmIGcdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPmIGcdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0E1C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788247233;
	bh=3V5oKwgxIaoC52LjjZgFJDxYij7vheJ2TRLYaLBAWaA=;
	h=To:Subject:From:Date:From;
	b=EPmIGcdZ/mrcZJWVq6eVE6V+2Qv4n2vDErwFlYb4TMNylPRmbfTmCGDSMVYl4ysCY
	 9TJZ1efCfQxCdeMft2qtJ8zrwLfPurg7gUooCWbVycOv/po0c4JP3gj2/uVdJh3VK9
	 yRPitCizgCp22G1lWq2kr0um+FBvfM5OXPZn7pxsw8Q9jHGzupXnK4yVVW+pRo3bgX
	 gWiuukKo2gWLte8bUCAVvLYB+0gXqaAUPwRrPULb6gLCWDfkG1xyt8FjVrwig/Zo5d
	 rKqkZOYMpkt2DPhK3XoWycYZU8+SloswxI594ODIGIYAEBr0TuwkLlsK5v8NF4GzAO
	 95Q/BUXAyT1tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABADC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824723368.15784.9961003617276706562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24edd3aef6e6339820e29fe6ca621e07bc75b8f18e2cc7fa70fac9e8b6afbfac
Date: Tue, 01 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788247233
