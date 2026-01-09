Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91131946C8
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767960233; cv=none; b=pd8v7scK+YvBjYx4vbkx98g6i4HYS3RzMXgd+kycUmLfzSUTdImSWoaBIsx24IU2qYYt2tkWC8NZnzyAH0vLUhX4uKyVpwolIo9LbAEVDsHjPe+sawbSrB3HZ6CZ4rcb9Q2x8ezyd9Yza8xhNJcooGA5rQgwS6WZOZdB5O6rDn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767960233; c=relaxed/simple;
	bh=77P1l6E1iPsgPX1oC/cc2QNTtUGFJ7Mi6ZqY3ESTPCU=;
	h=To:Subject:From:Message-Id:Date; b=bhGcosU/kYkPoUU5PfntbrNodWWmIVTKlRwCXsQSpDTYiXJJD6nT+irXj/eP/+PRit3fUOd6j/htv96PqtFXB5IbyrEiOzSGI7athcCghDcTmuJAAopZXAm1NOt/FDwg/SqZoafyI83vF8+aT9NPoDOGoQDOQe0rjc6lD80E+dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLUURtN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLUURtN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F40FC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767960233;
	bh=77P1l6E1iPsgPX1oC/cc2QNTtUGFJ7Mi6ZqY3ESTPCU=;
	h=To:Subject:From:Date:From;
	b=KLUURtN1zlL2f7Y2z5pB9zgEJ8G9M83De4QLY1a47xPPj5/I+h4Av9BPndcTHhKC0
	 RDERD/r7wR/CNG3RCJKklGlSIUOutKM3gN2/Gyq+lASuPyfcvxD85ErNMt+bX2Legi
	 X7vbWbyVzC1NyZ8rkU1gYFlT9WKwRXmVoe5LWThIYD3B0yw2MZCZIbkXg+Y2ipZkpH
	 HvGAS18ch8fAQHvcQkcv0/xFQd/OaeBZAHon1KxMDz5vTz3RpbzrACy8CieMarAi89
	 fQRmHL6cpKcGf31wcZyzkwfs4FGWPUuceuMtX8x/uQWE+gKocH85z278JRTiLiKiry
	 suHzZYiAzL3QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62CD148A4
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796023358.20871.17609876446032158460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bd515202f188a8a6cb45bdb52182b998b992da32430cecf7c6c2eba3c77c67
Date: Fri, 09 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767960233
