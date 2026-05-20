Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A946236AB47
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779310234; cv=none; b=WRru9mHTc9IVtgIisjMCGxwEbQQTk5RFKoaC/JURW0OLvJWaPMXvDSyODAjz/0wvXGkcPgv+/EEP20aFDJEXusNQemJWPQvz3CYPvdClmY7poHZAI1rJi3dU5cTAxVKzvsvE2u0XuJhIQ6IterBC07W2MLlxBlm7dt61wWMUjic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779310234; c=relaxed/simple;
	bh=rVIguFlSU5RihDQ2QB+sKDpZk75rYBPRL3OpMowITJ8=;
	h=To:Subject:From:Message-Id:Date; b=Un9p2pWq0OUIXLr5TntfzDyOKcGWNtNVRgnmmLpbLPLEvY/k1JMAUrgb01tyU1Cnh1O3dlYgbp1IkeTukBInUn9A/+5O6+Mzp3nr5rxjHt9wkd6V4ezyMw7JSQKSBGBzE9nIsiWODYf7rgccvIiGZDpGFgJQF4KfYGMsoJ+XiOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTdSO8Od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTdSO8Od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3E4D5C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779310234;
	bh=rVIguFlSU5RihDQ2QB+sKDpZk75rYBPRL3OpMowITJ8=;
	h=To:Subject:From:Date:From;
	b=gTdSO8OdVyqKS7WbewbAzEyuJobJpxvPPQIvZKYBpISuPugaMUZyZkTSCRQD3N5w2
	 3I3ySO4zQGLzLY23cLvC7Bxy2CEA4GoplOg3LS0u44JZWT+31JC+XAToBHnWN3YB4I
	 q+0PszwYr0phyhjCHriR6OeJasz5sEZPfIKCcefM9QNXaaD6slpKKCC5U3DcR4Hw/T
	 4M82e6pizjTQLb9vY1G04l+Tr0ceuoc21QujQzLQw/CpxEFiQ9SK9xwaZW7op1Wmdt
	 XWVOGqqu+GTxPYEXjQrVTf7WJclwl5E+exZ9UdkkfY1I8vRueKQLsSEfNd1XrHnTjB
	 4nrA30ZHPyZOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01572CD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:50:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931023398.8899.12340409292988521606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c274f715ea3f853cce4abaec9e031859ce9f674d6d8ef60d59e031404c5dcc5f
Date: Wed, 20 May 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779310233
