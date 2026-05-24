Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E363264F2
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779663754; cv=none; b=bm0m1dJlKofqpNigBnMUrZZZSS3Znt2biq73zLaQoyeetnf07bI+gtJoxeakPrIp18KUCJwZCXuJTZqzBlmuuhTEjhgik/LMoY2zlCXD+WcR2A4/oaKUUXMzakXwRNB/nacrGWexTHoS6BdP7nOTpuZl8STpnTfu5zAaRHP+yWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779663754; c=relaxed/simple;
	bh=vl79/yAOMZrQMTtRSjZ+6My6WihZJ3z1Z6+WRDW2WPA=;
	h=To:Subject:From:Message-Id:Date; b=S0XUtpuBD/O/3Yw8zSuMuuD2bTEhhIBtNjH7TvppDezkH71S5QxpaCoJvisGpoikVgkQbVJyD4AIXCY9B0lUHpvOuty2T/r4Nc+bTjiHSKkeUJygBnohDmcWIuW5Nb4lIZIcP32oHPFcH9WvJNo+D6p/AIa15Hmj1fHQwRxJxAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFtwgisS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFtwgisS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB85EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779663753;
	bh=vl79/yAOMZrQMTtRSjZ+6My6WihZJ3z1Z6+WRDW2WPA=;
	h=To:Subject:From:Date:From;
	b=gFtwgisSdtJzF4VSCTwE+GmRmZKfiXvMces6mZrR4bmun6y7DM63HM6qE3u/VOfOp
	 vP+bQVjCusWxU3FS1iumLQahUnhW+s8Kx5NzPOmujknkONbQkok6c9nwwsvPqo3wmA
	 FGx/SYUxxCaEU1me1iFWbShDE2E8DSSpy8hD6TekoRzpzCc1sks6loxKAFyMsm4hLH
	 6YOPKay9K+V1lTB9Ti210WoNaPS6phZvGanj3DKmM6ST7aOsHDChMlOTZnccbG/LvV
	 0FW60KEwPsdn6RgxjM0taVASRh11GhNABlclNhqkiZBSskJf98OgWR/iMFYOYgPOre
	 B0iYh4pC7UBIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC24CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966375368.3306.10883392774625193802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce97e9657bf6c0297a1cedb82ad8c871a88f25e8855f313a4b72a10c7e13bfe0
Date: Sun, 24 May 2026 23:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779663753
