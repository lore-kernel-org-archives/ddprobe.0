Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06441246BD2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756638594; cv=none; b=HrQnOl9/rUJqme/zXChLl+X6+h1Wp/pTXxJt87R0EcndNKk9FRedGv7/qxaxn5OkgfnR7CQjAPisc7oFKnMZu46teHNPFex02egyGXNONKgqUqdWm/4J6WsOlYrWZnBj94OEMC13oAGm6fT7dy/kMTQpvkiS8i9X2kVtY26ac2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756638594; c=relaxed/simple;
	bh=/RtgTfsOdxC37hDRa5jeKOVg2m/D23d5eOtvzYWiyLo=;
	h=To:Subject:From:Message-Id:Date; b=kVhLcohDGDTe0dKtXwAo6fALAzyd1NRaVQMFxBJUigP7j6PTuMKgiie7f6FVk05ft+eK2Ndz33cnw3IPFGwaSeTGrr/I1JZQ1vmfAUX3amw6QiPVdXmCiiHYyQ2ErVpajHogq4G2rPOFIkxD+DSwu8/xk/jyFsHhxnHr1eAVbyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElCgrwdR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElCgrwdR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB60C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756638593;
	bh=/RtgTfsOdxC37hDRa5jeKOVg2m/D23d5eOtvzYWiyLo=;
	h=To:Subject:From:Date:From;
	b=ElCgrwdR4o3Bs8tWNo6obLdGdOY948HKcNpSAyopT2HuBVVyTviK4bMa0ZcHAetWn
	 4RLD7lpMUTcba69ygdi1fWPQd4mhhy/X1kd13lKRmqwmEwnfa92t4x5FaIA+Iw7ETh
	 NFhuKk+ulGr83lrtBKgg48utTlRXS9Ifi8/bYk1hGPJaVVAFT5iQ9EITVoO5dbGB5s
	 lCio2KOFuDRU5Uc/brTdYZajV+j3AsNqgmCSbNWSTpCI7OqEH8GzFBwDWaQL3POGLm
	 T9hy327gpHhNH1mDvgncPNzMEmBPkGteCUH40HpSCtDWjyOmN12//2fZJueeIdi7Ub
	 iNeYLKiCBBn+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2B7CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663859357.24103.8364059344770760047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cecfa3de94f6bc0c589d21cb55538786b0d052a49997a703accb8c7e1e4add
Date: Sun, 31 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756638593
