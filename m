Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5E81A682A
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782878914; cv=none; b=AvdKeFyQ3OTEiWjUXEvZgMIBrxHO8lTuORN38JFee/2Ce9/tMkEkxIMwOHoUFlM1zG8t/XU7bHqqg9SupS+Y/DFugXKhUt1nSI7+RkotaSGocfkly6minSvtuPlX87rW8PbmbZdZAzF8RSwSAefxGLETsQ80jUfbReTbMxnUi1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782878914; c=relaxed/simple;
	bh=+mrjLDLjRn5++Rxm2YoihwKMigMmofzfpj4Bq1HwsEE=;
	h=To:Subject:From:Message-Id:Date; b=oXrqfEVOKA9Fj558mBUrzTycx6mQFN7ux6ag7hnK1voGefMOlBJuWACoHS2AKByrzlxeE5bYUckRYymLurQEr8VPSAgcQtx3fUFn97WPzKl4aSWAj7+eovxYGzetnK1zZlYQhuTUFgeDZ8h68tN8i5RTKfFKOXrel7/5UrgrgL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYKQ762F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYKQ762F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0EBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782878913;
	bh=+mrjLDLjRn5++Rxm2YoihwKMigMmofzfpj4Bq1HwsEE=;
	h=To:Subject:From:Date:From;
	b=hYKQ762FJwYVy43Af55fkpQHe2RsGwAU4zt8BHac7ehQtge5pIW55ZIkxNVGtSe6T
	 6C5Mai7QPln2Lw/pXgby5xtfJUDzi0uJT9rT2wAUHa4zdJAtDf5GqasoPJuVg8JV/l
	 EdZgrcCgJ+CT9WU3pJo1oeyTwZ133EpbqxyVFhtgCixizwRcYukzwTvKrOq5eJO3jq
	 tTNS1mp7aKXbeBOKCxNlsGrQwNk1md1zOdo3bkl62Sv+oQvYa2ihMOIFw1t4m23/Nn
	 TxB3QPN2gIWqe5m/aAI3qiwXkyo/cskYxOCfhJTdU4ponMG5lmLjAkDXk9vlXaJyvv
	 7wi3apTounLIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA412C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287891368.6710.5815173786031701585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4b5b8fe145c1b5204f2a7a70b1008f2e2b90eb74c82a1ab645ecfe5a0d0dcf
Date: Wed, 01 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782878913
