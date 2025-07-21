Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268F322F769
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753139994; cv=none; b=iTcqyLoTxNPcae3XN+qGFM+SfbH9nFm8zHUXfK3Re3NOGmtl4m+gRFDyZMZxw2g4uToponeLEcTnZjCJm4VVfVgsjfy826C9KuHG0IHSzWM+ve1boxpNVrbd31pv2erAdmey4Cz6uORPyPV9afU9QJkeaAb+zXoqIA38v1aqhY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753139994; c=relaxed/simple;
	bh=IySfRF0hOlqHs6n8LFOaZaOt93It9KYO4F9Thzg6NQA=;
	h=To:Subject:From:Message-Id:Date; b=Xd8qPSiTNW+nhlmkvTiMTl6RsQTebazAWZnqyokREgf43NSOM2OvJR8o9sHp2RgXDQKJ8EUSr7cvuTR+C1MknjT32JasEZ5PXS+NW5UcUs1g+ueLRqB0DEXkVqNi0hiXYRtmvCHPQE6b9PIdTeTXWWxtmZlIzUmfcpj5EMqUhnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6IgP7ff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6IgP7ff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1A0C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753139993;
	bh=IySfRF0hOlqHs6n8LFOaZaOt93It9KYO4F9Thzg6NQA=;
	h=To:Subject:From:Date:From;
	b=j6IgP7ff1MJhxTbG6I1H5RX2/I8Oi2vhH+3b8WzUkP0i6XjemwiT6YWn+cIXX0XEQ
	 Bkb8LnxeDMzXhgSsiLqa+gokCER4XWNj8u2+quSyuqYy9IS0dJo7TIROUWwrUu9/l0
	 /+/dfruDRdGREEXD584CjJDG7RgpHDkxurx7UZC1sdP9wD2sp8W0jfdglQcSzKjpJi
	 U4YsGYF7eYFs6nGdWgZ4+aAJRSGVpg4a3lMSt/GDs3vaiBpkg5l/Lh2YZuXca2DaWH
	 Z9YgOk+7jCvdbnnvzAtTi/5+tAL0ikds6dj1Rxk7dyiBC9izM+qXTfjMDeDH/5MGdO
	 s4Y0lLy0oaQrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF81C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313999357.25543.9473327750023990168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc896f27eef6c58912cc025e2b77dc68450c10b94d7db5878475d943e9f7b53
Date: Mon, 21 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753139993
