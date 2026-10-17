Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FB32DB78C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792218034; cv=none; b=TQALj48GkJRtG2uZk2mrfkTiapvLZn6Fmp8zf0PPd9e9WuobKjeuThynM9doLCHrA6rLTXimoCsOn2wf86iuZWe5FrQmcwnUMAMVQxz7neuTOB4BhgW8xrfb60vjY9zZeeKULfNF7n5NUZhuF6Al1Bw+5PpAai9Wzl4h2ks8gac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792218034; c=relaxed/simple;
	bh=ZiAlZWXucTCq8CRtmTJeYkW2dxnfp1ghuW10Df1oDEs=;
	h=To:Subject:From:Message-Id:Date; b=Jo0hukLqOeZdqN7T+i/2PDvai7PXbej1PQPRrgTvBUA0etYjCsfUmJB5xg2XgQ0Q9qDfBm5ZwCAD0aaJbXV4A5jFWkzJ23HVC9vwOKpMKeBVQjcsoGmbK5oOVfOOoMRJRU6bi3mT+SrjkL021aijMIwWpyu7MZGeImsXMGr//AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVt595Au; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVt595Au"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6381C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792218033;
	bh=ZiAlZWXucTCq8CRtmTJeYkW2dxnfp1ghuW10Df1oDEs=;
	h=To:Subject:From:Date:From;
	b=dVt595AubIoeAe3R7PqLU8uWwKRnBsx2nkijHwTX8/5tQCORoLtU6f5/DxfcPOsRO
	 hFAk2Z05WaIdS2qFwLBFQ24+aBs6LX9xtsvgSjINZftpzF4hE6IpvEWJQpNMQbNNtd
	 KMWoAQjCpb+B/prCPT2fQu6BgksV0+KOB4Bz92QSnM4WuDhPY3G0ajdVVREmYLMiZE
	 hZrH5uesRsHvf5zSG3x1Pael02yxQQ+vTVPZOiHz/GepYGZC+zW3a+qF2UWNbWLisR
	 imbW4PMtJjLhwlkLt6F2ziv0HDAZ5mubRQrfyN5DUmZmkIStNhN6f6ANU4Up/RrrzJ
	 5K8BVWdGFSxKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0483CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221803369.6821.10420139234007752538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6077a6dcf704d755f98f9a5ba11a33bf93a0355b0cead458f20950dc3d8bb95
Date: Sat, 17 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792218033
