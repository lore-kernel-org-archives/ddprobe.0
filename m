Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBB91F473E
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735311354; cv=none; b=VJStNgB3t91BOIPPttEurskMRZLqzCgdq6Yfng9FdE8wiPQTjU3K62SJb8tJMBADHxhlEGLZSqZVtsveEm/tzEqXwM6WpykvFy0Ro+jzfPFiaCtr/QlP1MuzaVmcF6vLMrY349rCENgUfV9p9E7o7CF6JqX8L/Uw7dL+I41a5uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735311354; c=relaxed/simple;
	bh=KyqCL8N57OMHCMVPK0ESc2lc1S4gMUi0WjQ0NUOSBfg=;
	h=To:Subject:From:Message-Id:Date; b=Q/4WJmuZzvlo9TdZ76OBJtSNQe1I/LiHmPEwpCaLaFceqHr3GmzwpJBtoY84LttFRaZfVXcf/MpaN0D9qSBo1tUlOz9AAVo2wE5uYr2nwxM4OawtGW39hq3Nh0hUbdzs0DApSAIcQUKKmTtLuVaZjraD42m25i9++a5HhhZtl/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYuH7vsQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYuH7vsQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60B1C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735311353;
	bh=KyqCL8N57OMHCMVPK0ESc2lc1S4gMUi0WjQ0NUOSBfg=;
	h=To:Subject:From:Date:From;
	b=EYuH7vsQ1Wt9896ioStnMkm6dUxpUj+kJwLxi6qagSREEOXykWA/x72izhjNSNkMx
	 oubEHkYBill8+PS5QenCzGayU3oO8rJ+0iQ/xAycvuaeLL6WHMWTcuxnE3IgxZTowW
	 6duA0Y0oMgWm6k37vscYie+l5qReBpW6aIm8dJuHH6JGWbWkasqhiY47AzunI8VZbE
	 vgA/w1pnIoA/wkOLY4zin2VDfYufPXkNVcBD9aEOYD24WJ+H+ZfInIDmTnHwg43VdT
	 VxGJB/TJZ2Ut1UNtjaeg1MPxU/LjuTh0lKYzN5VmPMH88dsnPIKPeeZ1vqAbKGOt/a
	 hXyQu/XJwVd6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F71E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173531135359.25268.12650742455097018194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9456524276f7199bdf818e636ad7b4ff4bd8222d3eda2f8688283a171d70ce25
Date: Fri, 27 Dec 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735311353
