Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7F73655CF
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780558474; cv=none; b=VIst+hmIV70rJ0+iuHc1yVzI/C6OrdqEk2EE/vSC1VY44KtJPpQoN2N6878kdX6wnjoaoRTtJs/wY9tI95BksX5tAuystDiLOQp84wpSVLd8tsDrNkdEtyNJjtKr34JwalbVBB2S8WhpCquur8jlH7ALQQjhRM/DgmZTAmfe3Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780558474; c=relaxed/simple;
	bh=TLENnjRnwDw6An9VkbuUa9Z0tdwxPW0kqJ1aFR2y0pE=;
	h=To:Subject:From:Message-Id:Date; b=nk5DM8lFiXRmDH712eaKLNKuZfIpy65WHv5ho4ONtp33vGf6V3DMAoqmoA+QjLwrSOKvc8Ssr1EYNxcGyGqQ3wDrAPcTRHdWegzfjNmm9REYcdYHrV/Xdp+3ZEtdT6zu28yfkTp4f2K8EBSvA6DLBq/3PGrVNpX74GmmtBuMi28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4ftkEjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4ftkEjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1154C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780558473;
	bh=TLENnjRnwDw6An9VkbuUa9Z0tdwxPW0kqJ1aFR2y0pE=;
	h=To:Subject:From:Date:From;
	b=a4ftkEjZlHcnH60GSpRQ8It82uC8OE+e88BjdQzv6EU23/tEy7X6nm97RYUFnTK7k
	 LVlGNOH0S91/GrZ5UcgCd9O/LaHQFYOk3Rs0cKybn2WMPSxRPIFuNsYrQPGYR9UlJO
	 WxpOT1dNz10qYwHfiySZsDvetAKRcRxwZgyuFehydOd1g33IdpP9TMnDd84II5PKmm
	 D3dBTmTwBsa3c6I/X8fIHAHS8i5lUUJkdkYK8IJ/3zgUVTW7D829lvnVPL75L6qxgq
	 qB1IzVs7J3eAEsjn7q6DND0HCtMRpr+EMe3WLLgCdBtZHnxy0HnAIw611oTbkuAIz8
	 yOFRk3ZopBRpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91A9CD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055847368.5248.14860619930946157111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1462096963a9e1aa22e152525a16264593198d4e9524b889ee2d482e59b312f7
Date: Thu, 04 Jun 2026 07:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780558473
