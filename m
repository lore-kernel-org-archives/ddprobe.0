Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439A243635D
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790833234; cv=none; b=tUt7wYx8GNd/mtmzT0rB3InAKlWjZA/Jf5UMjFk3OVMzkWYInN8HiJNS1iyEqkwHmw4r04HEGtBE5BE5Zd0btEyY+21tXKKAm0+Qe7VaDRuawfY5abZNuzm/mp1A7SkGjtmTcB7htkRexcIcj8XGUXn6ibtob+QrGXETMrEFlWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790833234; c=relaxed/simple;
	bh=kU6Z416+Ia4D6M75X1vK8fdWs6JPhJRSjT3szgOBWRU=;
	h=To:Subject:From:Message-Id:Date; b=JbSjBykzGEtfWhEM0iY1h5qB9xA1jCWUxPbC6rY57Zu5mqud0QngIqgvzVfdSaLjmRbbvAPCdSTB9hxRcbOB9VZ1Oj/wYp0QUw9f7FsdP7aDTw76irl6aqyQNTkspBO6pr4FvJ7fmRwgBXXaKrTnLb5gPXnqhw+K9y1YDovsNDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeA7b82b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeA7b82b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5305C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790833233;
	bh=kU6Z416+Ia4D6M75X1vK8fdWs6JPhJRSjT3szgOBWRU=;
	h=To:Subject:From:Date:From;
	b=jeA7b82byKlfOYCe4ncktdSelojHBaRJAUSpGX3acAJzUTMWrEGln17SPK/08H5r4
	 X9531mqYzYm96lYKD7NHzCwP5QGkaCJxj+ZQ5rpnhS05LbgITz1CTWgPdCjBknsYcg
	 Dqp9jUmFYvOKAFjvFq2Lon0ZFwrlUV4v4PgrBwoDR1PNHMCaQrspCXjYpLqBInIwQr
	 5D3jtB2L4aRbWtgQ1GV/SBzyhI2WBwnAnoQxb7IUbqE/cYJYD1MrlC6K7qR4dgFaPO
	 sLFo0Q3ZitiKoR6CoUfQ27wceFgM4uz9LcoOGjaZRhMY9U0U8joZ5QMeS9ALM4x1BD
	 7/xiVUNzRSTqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AB2CA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083323368.13816.10026229381291144087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ef745f4dc2afbeae1033133591ccdf36e3a20329b167bbe33f91914b80c8e8
Date: Thu, 01 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790833233
