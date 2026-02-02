Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2862A219FC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770063234; cv=none; b=dOu+3vLa0fW3NKhRiUgdaAq0F8KLcwFteJeIf49qjmOqaxoh2By5BaVdLth8vKKEk7NKlRMPSrzitek4NSOY3S63rox2MQztnX7CpFin0mvDV5+ACxygBnxAc1R1rntIdA5PmPKQu+k4D+1ZKli1ZT5OXRBx82muq/2Ewsl55e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770063234; c=relaxed/simple;
	bh=LHkkOd2X4WZIeLrcAkJnj2R6eluyjdtQmCWlDJ5m1Yk=;
	h=To:Subject:From:Message-Id:Date; b=XTRmNRKBrppbDUZyK+ubwjWFTUjCgnU2Fx136bq/CgfS0huEgbPK1zG4W51RC//axtMR4/EwTPFdVlXVExeZm5n1zgLOrdCiRjZaopGser56jiex5L2p1cEh73L94VbqNRUZq2Rk8ydoOQTc9O6mh/Npi6ljpU6AsX+A6Xt6Wno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XF1/+zHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XF1/+zHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D94C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770063233;
	bh=LHkkOd2X4WZIeLrcAkJnj2R6eluyjdtQmCWlDJ5m1Yk=;
	h=To:Subject:From:Date:From;
	b=XF1/+zHFioQWYQi7ftNPAL762AYS+eEKBTyye5yOOQfiWb86/NXQjARrfuv31NdvF
	 xnOPCm/S7v+PRPZTzBulxfrdVx0UE+UjtYG277wDoJL7nyKDbnFCRKQoDIOfOhnoER
	 GJcrxXdtBL6RucN5MO+AojmDHzPx97KG/Fk710loQCIXK3PPVI8o0X2BYX0Dy4cf5g
	 uTIO0c73U9T8MANJqyxEQhWd7/BQdpkHx1kYjmXb+X9vZo/vhGa1gekDMZqkpIwFpm
	 6Yc5i2WyAm5gfVsOfuOowWCqk/1xTkaPYp67UBVXT9KwQKS4mYiZZz38oFeRMA4vQR
	 1MGqc7MBqFCbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921EFE7FDCD
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006323358.8842.13361367845073245779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8984b9317c03cfc1200c818a2799fe0f18505bdfc7f0f602fb0cd7b6c2a77263
Date: Mon, 02 Feb 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770063233
