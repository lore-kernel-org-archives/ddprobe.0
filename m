Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541EF224D6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765103575; cv=none; b=ZIILW8h4WljTMuPzy6P6/ZRnFVOHKRKrYxCsK5LcId2fgN/vdRl0jk17Km1MMS6mCT5yKBeRhbvGOoo5xAH5XjMMSkTYqcPSGhJxNxhGhJtYeiDimYB82a+P947t7Y/OOQaDjjxMSjRy7fJPnl2c9AuxH1Jzrtk3V1meMFRBdd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765103575; c=relaxed/simple;
	bh=pXdgV/LsrR/mBj97d3wI5Qu3SRoCflTgCibqybJ0idE=;
	h=To:Subject:From:Message-Id:Date; b=B33+QNMxFm8KZUEue8xZsHrPXWtRDnEIf+OR3EHMDeUOW/o8qlI+sC53eJQjEf3avyL4lj1L5D8MURtgmN7bO6v1HKMsQXEUMzgnhkXadUZ63OT+Yjl7c+qo6JC7/oLE06Gefn5fhUnn7d4+TPnEi81ljDN2XNhbyOTphdXW75E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUJzSfNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUJzSfNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB26AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765103574;
	bh=pXdgV/LsrR/mBj97d3wI5Qu3SRoCflTgCibqybJ0idE=;
	h=To:Subject:From:Date:From;
	b=gUJzSfNh/P49PE4cEgoGAPZLxE8lcKMsWpLQwazaTLw6JREHZKPH7mAKLjR87laaM
	 df1LI/K1TlTtbj+lYthXVLa3x2LubwXdjWTGOVfl2QDrsEq3WDjl+THS/GTTPsrLJP
	 PuUcgWumH2dy3VB4hjx50catIyqYyBg9BnEO1azCEyd/zbVSzOIhKYidvnL+2NBDke
	 Pt7b/VomdgzGAh19wq/DXwyiAM2eGhfktYUXy0I3cvzuc9Iq/78O72rS/NRceD4I6v
	 6ren4R/2twYKBHl231Vws57a4yUZkHPjqmer6CpG6sVZtChaF7EwhRXB4pdVRRQiQ7
	 vT4ArvEL8d7RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984BDD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510357358.582.15391734354210377096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde1effb2f217ecc78b50176302b3267f790968737c4c3107c94628a40671279
Date: Sun, 07 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765103573
