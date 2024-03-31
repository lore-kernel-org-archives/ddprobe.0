Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F237E8495
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711872497; cv=none; b=m13+N7JaW3PcSagy6GNcCF2j9O9c0mFngZBGYVbI4Hx6udJ6Nj2O3MKmm+jKZEst/P7KAlZ+OHKF7e36JW6/606ms938a7vu+HB4okr5I78Qu+powdyZd8II9hc92xwTzuLxs0ZMHluTyoW/tFKa3imdHBSz1vFvifxaiyZSsF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711872497; c=relaxed/simple;
	bh=Zdc2Vi2GwZFo6xS7eKk3iCMTgxxc9/6xuX01TRrylgw=;
	h=To:Subject:From:Message-Id:Date; b=u/nGCIgE+v3sjdtE4nhvNLyFkPnU6XuvSyBDqBQ4xHH89k0aiT8TaxAugqsNNVchdsWKK08AUPYyujCAv43ht7P16oEYQVPdVdbcyRMo4IYKBMRgmCN/idO6FcuZIvLHvCmDfEmMT5OdNkKwvCjWhsCi4VmV79PzDNM2y1lstoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVAf8w94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVAf8w94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83341C433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711872496;
	bh=Zdc2Vi2GwZFo6xS7eKk3iCMTgxxc9/6xuX01TRrylgw=;
	h=To:Subject:From:Date:From;
	b=FVAf8w94xniGz7K65E3UlDlm7WYVh2bAZCvE8XXdDnF8aX/hnMZKA3waWwKXrdneK
	 yl38Y0PFOZOBQgN2UM58eapSe0gJPupbxE4udmkC51EH6LpAM1tWr1M9aTS/YeWuQR
	 KoJ6dwGuUdYA+zk9gzlowjXrNDWJ7n/bGEUFnhdiHY1SZIYSU9ZQy7FAr0Zbo9N5ox
	 +kozwwzKg5kbYTM0Pg+6uUpSv67MyL6gESKC4yLHegRP3Yzucd0znVcgzkH6Rb2L6P
	 Kmb/biaL2GCtsRz4RZtc7xj/Gr+yzVHZFxjaTtNL0BX7oBGFxO6PN+ll03oQabvRh/
	 ECI2gf8MSvzPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DF21CD1284
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171187249642.7614.13024004621585020257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2d32c4e39f5c9c61f1c2f93c15add65363c08781923d7851673dd1ee249809
Date: Sun, 31 Mar 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711872496
