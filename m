Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683E03CF673
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790221834; cv=none; b=L7tD9m+ZhNad5/G+meI8lkR418+/aW9ctJUT1U0fZMDhqrZAP8a75M9R2WMAVEqYgzX3Q+3a4jpwJK8Wy84Hzas7ESYc7H4B2XG3no98/G3MbzcX/V47pGN4VDd89nfmJgPqSg2ZyDCKr0El0KposZcXYQKbu5kQLNQZXD95kAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790221834; c=relaxed/simple;
	bh=NmGRJEQryqqpxPJPDHc/4vp1Tjw1x86wMBWwQ/ZkImc=;
	h=To:Subject:From:Message-Id:Date; b=GcuOgdpVDgJ4M+u4ONqF3uIHyZKc6dHyn+1biAYiOcWOQkIQSJH7aPVerMS8H7vD5c0upjU1LBoFXyreRBL+AinhJQLo40Au2uw6hiO2p3qB1W3WEju0W206bvaSbVq5XcU6Jil0R/3uuFQAdLFeHW5v1JYKl34wxanvZebjXUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDm8OWOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDm8OWOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B4FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790221833;
	bh=NmGRJEQryqqpxPJPDHc/4vp1Tjw1x86wMBWwQ/ZkImc=;
	h=To:Subject:From:Date:From;
	b=tDm8OWOsGkm1eeSJtm+TGU0KzOGKWzyLH/GSEfQsN2km3nOkHKZ2+J4fWjdbpB0Xm
	 xSqQCHXLsIYDTQ2qnHyLO9Bl/3kvCX6Oa5UlRbSRE987aOfPEwv34H8X4WZXd7Fg9f
	 1fWxCxuuLd34xzNf5ouiwvKxmFVofbNUzR+ihv42LPEE0U8z7Sj2++fd+biayD+iIp
	 n4iOcdoaTOkF5fKegmNtWMR31SyGex4GN59GgN1nnSuhPQ85g3s2ucnoHGDOGSeaqY
	 MqzPSH3ZrH3OtU34PpdewfKGFiCAKcxIEwTjylXsQujtDldOlLxLzhT1eXiQdefRvp
	 LY+vdyb8eE6wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA7FC98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022183373.21657.8854541860062278958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2bb8802dffebf0f3561b42134fdc541011facc9c5155296f610db5f3158170
Date: Thu, 24 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790221833
