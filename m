Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C28937AA83
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789643435; cv=none; b=ppWVDHxQiuCMv9eqod+gMghMB3OyLnqdKMqI0ATbJC/RraZXyRXzjgLQ7tBdy1WlHbDVBnM6GrOxD0FviPB2+XMZsHFghZFdiTFvnDxwoVmLeWAP+D5Lo9uV3QkpuiX0wrjcyGw4uSYoX3UuFbHtTZeVDs9AW+3j1C0F+4tAcGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789643435; c=relaxed/simple;
	bh=yBBtCW5sQoiYCqCc9aN7cSo/k9YAsCag/Dx9lJ5EX+0=;
	h=To:Subject:From:Message-Id:Date; b=RQacVkB5zOHu13eXGIQWTNK8DsHhMKS4oktRzeQvHR2GUVfS3snvF1nDzN3Kr342JMGkzV32DumFt6bjRVQx37bKQ7m14DxUjf04DVwksBBCz454r4Fkrc7CG0pWWQenjrDew45OIUYbAw46hAZ0c3rvGSIiC8b3XkUF3NkpxW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JySjnZCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JySjnZCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF182C2BCF7
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789643433;
	bh=yBBtCW5sQoiYCqCc9aN7cSo/k9YAsCag/Dx9lJ5EX+0=;
	h=To:Subject:From:Date:From;
	b=JySjnZCIXRRRNQjUN0bUg311rM/5Qc97Vj2/A1UxEPk9si5gwgHIaE4tSrJzslQSz
	 B0Ni8N+UX3312Oc+hoPybMl6ig2wo8vAp3qipkz6EoZZpeAxWfNerANWI8FdCna1i2
	 a+Rdof94xpQR22o2oQ5eBYZw6QczuZFs/9BjkLLumPRTIriujiB+E2byxjRgwtH24m
	 uxfn4cn8jOWY20XkhTiEugKzsOBs0fqn2ztPu7sgk6MlvbGcM22DrSxtKVak91oaU2
	 Mw2H3Nh5ih2AHUukI4sEEwy4FWpGgV/gwOQnAqBVn0xVoLUWaTLQRai9oMjFw7foC2
	 ue9l+rc69yu3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC48CC982CF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964343369.10514.14201362684712593582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6af3c6cb8e2692309eb07ce1cfa2bfbcfdd5bf4d29b8c947e10ef09c05b84f
Date: Thu, 17 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789643433
