Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777DB39479F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792088434; cv=none; b=o3bzBgipzC386Rq2IEisyEZ72CiH4sJvZKapAvfMYyqo0AEUZiM463DYTJh8rAkCyZMiAe/oIPdP7vrA51i8N5pXx4G+2hfnaRXhCGz20YJh80Qy93Q0zNDXjfwkkFvi6IvmvvD+t7tv+0YeSn/p1ptcRbNepA07leBM7wyEILE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792088434; c=relaxed/simple;
	bh=8W2JHvmJwwE21OHkdLDT0n8E3GdGOheM3ryKS8ziK+Y=;
	h=To:Subject:From:Message-Id:Date; b=DttJ+tV3CB9QQXu9ThYczBcd2Ms5cJS2PmNuiNP2agKeTWo8hME8XId9oVr73jPrRTiE3xQltmAose4Xyl+uqNAJUMefGpjst3uG7cDmDnPLINBZR423SjawdGePnzXmiy088mvh+aGafrzRRyGkIAYENtKZDmkP8hZBSxhv9Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzx5n8bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzx5n8bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D421FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792088433;
	bh=8W2JHvmJwwE21OHkdLDT0n8E3GdGOheM3ryKS8ziK+Y=;
	h=To:Subject:From:Date:From;
	b=pzx5n8bduEETdyV+ideByfXWTtL+xTYePVS0/sWZhQfhDXhr30eNEiz2RTJniyy9k
	 fiGkUO6Fn9jzQRtQ3diQ1p0cZOyIeugdLgs5ljYASd2pmxFEDuvqq6hozlRraEcKw3
	 pchZynMQLW/lCvD1ZKcWIpjwkxSmxTHh6qdvsaHqxfwasfPvDa8f3lTCQeO2/MiuJz
	 Sh8uV+TMk871ZuZtj2iecCRvTll4q/mjwnRKuBNk3Q7j5m36JQF3IUtsYaPdjTk1nI
	 Dej5ybhLxz8dguLxbWz/pdz0zC1b59WAb/VQMrQl07YI18BXxhHxvMEkaIPINniAuD
	 ayQONmRKjH/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE7ACCA464
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208843368.31781.10995540308238308717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9911d3aa47e54f02d7cd2f11a72004b3e0fef190bafd762023fff9a9fe8f6e
Date: Thu, 15 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792088433
