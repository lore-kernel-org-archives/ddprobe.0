Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E0A181334
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782961714; cv=none; b=rbc9ZhgNGfchx7ntsrpbHsLBkraJ2cqleIkRXRwJoXNgOCr3ylpJPvzU82p5cT123hN8W0ZBn12UEeqEBJf9NGTL/0v3pPeyYxbAFovm2X0Is9sS/eufmGpE1hHePACK+TkDnpgjGvegiIqQlo59aJiGHrpQ7CXz9s95b36fmpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782961714; c=relaxed/simple;
	bh=dw6JOIOxtpgGbLR7yqhbwExjFUD1+X00pErnk7OsGS8=;
	h=To:Subject:From:Message-Id:Date; b=Zyv3P2vCH1/b5YdWo5zUidUXu7tgDxUzaNux4pZ5qQLDvOb06aKDuKF9OuQ9ZORyL7OTkaajXsFPLBan64T09zLL/gv9JkQgluByDn461BzAzlDC4DUkydLeZlwtZwuG8emgm+hFu46ToUUb4Ih1QO/2BswW/ZAoh2HaAZ7MXgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBkUcNaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBkUcNaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA598C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782961713;
	bh=dw6JOIOxtpgGbLR7yqhbwExjFUD1+X00pErnk7OsGS8=;
	h=To:Subject:From:Date:From;
	b=DBkUcNaVRSbjdzIKQJAcqhNsQ9BcrtmyUuDtPtjUDpunXORqRG40CsuhqGomVH5FC
	 sPzpt/RxaVICXmVojMqBcI8/hTkUI4siuAHVOeh7xfqsCPIkXG0ex7upR1Nmm195bg
	 hVK0BaK6hwt7UQSseXA+CBZwvtJO2jn8eJVrBkLiz9NrzN/X4L2t30T8ikvFFDYPKu
	 x94akc8LaU5XzCArvlodrKycLpCp0Cv73eZFwcoEe1W8zFf9kIMgdH+emOqE0rlRWL
	 gAVV3onTRy069NJkm2759flmzIqVJiO5hsIvOzUn+R5QPqaXc9HZ//jD2rQOKgPYRi
	 6W8dR4D3adBXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A4CC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296171368.18080.13194827984568470099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f1778c493a28ad3d275b6914e7c5b06342e14124ba6592e5d5d05201264457a
Date: Thu, 02 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782961713
