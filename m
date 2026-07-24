Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9E7349AE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784861434; cv=none; b=ZbmoM2sbE07cGIBnavu7osyjTAHnN1yxGuxbW4Xcp1B5JnEBys/jbs4NGOBscMHgi+ym9UhHlmfIIa6V+w0vEkp4oWkve9K0TeTdTm7md2vM4TydyjTeHp3T2nLpxBZJzHkGKnemq6aBPjtuZAhVxM3tYmVndBz9SKA7Xhxy/Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784861434; c=relaxed/simple;
	bh=lk0AMAwgfk+ZgNYLlXq7QECCjmZSsFxHAW6s4Y17agM=;
	h=To:Subject:From:Message-Id:Date; b=KMZZ313nuXsUhGvoANbYMtZEdYLOtv0ysoh2tBmthNz49uI0ecRpM292PovdCKX3+8fXRBlZGLyhSOGqe5pg+CO6MGWpyE0VF6abUgMU271GLuJCKmwO948mLYZiUAjdetZIH33PkYBsOEDu1g4gHa3PhwlpbGRpdokLRYEzCno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAU7N+q3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAU7N+q3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D266DC2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784861433;
	bh=lk0AMAwgfk+ZgNYLlXq7QECCjmZSsFxHAW6s4Y17agM=;
	h=To:Subject:From:Date:From;
	b=pAU7N+q3kCR9yuXkjNMzq/gDrnhZGenTVs2QeYTmhvRQmDN0Ylj8qNbH+dGipw8qp
	 8vz+CscduSrLadWd6/GsUeItea33QM++qRpsd03v4SBqhX4pEaLJ3cqXhrMeilqE+d
	 /6ZNvuyKOyLgr1Su3Bgq903GRqM9KRW1Sa2EgVPtsS4nW3x8136bpvQXjqnVUSOxue
	 6jMI3f86rEXbUfA62LjheJH6bByFFl4ASmPMSPTBM04txJHt9BjP5cX5K9DRxwiA/S
	 E0oMh+nQqh4cfP5VHmTZpDEPDOVfSS0rr3NpTHWpGwIvsFMa7haJ/fscLZ0wuBjLCM
	 HyX3aoDqtXhuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0672C531CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486143369.10250.17329898960039617258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e297d418519c43d6d0486872a4f92bab815de89cd9a02880bd5ab85fdf860f3
Date: Fri, 24 Jul 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784861433
