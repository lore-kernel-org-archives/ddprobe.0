Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2398334C1C
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772714693; cv=none; b=ASUkskcH0+npJ3NEg+6fx5Rp4aGvqaco8kvrg7iKOvUgKTGrbuRuBWutP6tbeTpAJ4/+F41G2J1mGkJXOKuYqQuxL56MOW7uJxmDPoxjzzX4sKxVxi16o3xCNd4DVdgpvr7u8msEPlmBPIE+ZK15i4xMOKOeNaO2+BkNb3nQr2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772714693; c=relaxed/simple;
	bh=UjT7/JAom0C1xKJ130xNHWV3LUH/zWpQ1izY8ZDeW2E=;
	h=To:Subject:From:Message-Id:Date; b=ZCVOuyQB1FysUCqIh/Uj1/j796SdPbDI5TdZjwTty5m3HZBqsbIsF5i4ypMQzvQwBm0iQyNVwzMp7GVjIBNGpMDP+onTXmqGQEPV2RtJATrtKXuv6ZlCHXfTTlVhkyhiuI4nSEzwJWGAPPWlnjuKvbCZy7kukKdZEHNqCkigWP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0gGqpKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0gGqpKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A458AC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772714693;
	bh=UjT7/JAom0C1xKJ130xNHWV3LUH/zWpQ1izY8ZDeW2E=;
	h=To:Subject:From:Date:From;
	b=K0gGqpKMVvFmomjDm/RDQ0zB6p3+r/tJJ8Y8Kzbw2T4kfR62QPGJz150NvunYdrsU
	 BoII8M/KtGWLi4uImfsL6wWUnP2SV5OF5S/BP+pWEeFGmsQR3HX4yDIkhX0v2rkxvN
	 8ShuKf8oUZlnjQig30NROOhqedDQpoInGRt+INqoPXu7RtepTW0JbWF/JSKx4jIDiY
	 YxRm7pqdDWhJP9RSLY3rzrjeExnPihKFaHQCIA/Kf3HsQlo8d0YSYb3L2AQrnXdG1b
	 ILXFhdjrjHyZj7HcOYJy5qBqVqCqDOVpzBkqf2QQpfb6KQaXHGRjX/h7MNGIbw4Ahi
	 PsjVZPnRNZAbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A2F30955
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271469359.22635.3804191442656887157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c04a3ca5738c2e0e5e1a0cfe45e9ca6b60619e640e01047fbaf34e22ccff2850
Date: Thu, 05 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772714693
