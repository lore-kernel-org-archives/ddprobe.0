Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D635270ED2
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762790994; cv=none; b=rX6c1VdyCXNdlZxBH0A2SDpfmyswOSVQlOzyv9j8abalv/Oy6gI92blZh0/p34yTQG+paYS2eR8gpryK0dpYKFLwQmWrugSBcpshPj1w5b7F+sUohFAZMvL62RrwZM6WYxGSg2IgHbzpOyscvsAV7bI2kyiKsNz8PtoN7bXHUwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762790994; c=relaxed/simple;
	bh=qM67lIwOfsUcr5hHCo37vd29naBrhoOEEO3oQQN30/k=;
	h=To:Subject:From:Message-Id:Date; b=N8AZYyYDmvJ/MiR5qmJ1fbJ57RMMAI0SN+fxBLfLmyNEfNz773fmjOfcVeBhsmDRw+vk3HrcZMpTFN0vLqiBuMVkeM4CSawwbkb70Zs90Mz0Ktm5sEun59PgfkWSoSyzmUF1t85+f51qqheeUITt5KELvZPkls++bt3bUHov2K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIZZvfX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIZZvfX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BDC116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762790993;
	bh=qM67lIwOfsUcr5hHCo37vd29naBrhoOEEO3oQQN30/k=;
	h=To:Subject:From:Date:From;
	b=CIZZvfX9PRpn9uIFXUkNSqLx8KupYkpr/BttM9q/zm2mwTFtJhK6btkHId5OAqc7X
	 IOIin+7RyZkcVdQ1oGpGDHSmZXgsScDDbDWH9w2i60yateAf4TCSjwwgy4VZZMNN3T
	 VKgfZRESKSmebnZmw7b4RZDqX/9QwXkpE8Tvoa3hm/8iNjkR/kZw0D8iiOQT6Qg9IC
	 20TT4ph/6r0M4tH2tA1VLpaVA4fjbVKk9npvk9WVRMtj4SKZu69Ckc63QcuM6azktz
	 ZspcNLZmbhsxWFHHJpIv6vA0Je6omn/WV2yHZi42rreuGgnkpBAEPsL8s4DN0UsGdG
	 /8y1LHn9uoeaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9378FCCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279099359.20843.17293076602379132333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f645b0e26ea40f0bcd67b12a79562a5e3b07cdc985c10ad64cfe26ec3aee98bc
Date: Mon, 10 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762790993
