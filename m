Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575451869
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 07:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716450803; cv=none; b=IHgvf0GLHe7W5XcH8yjSCdF2kD03h8JiSsXnZu7f/HifdZB0zMX0YVXtzQaq8RwDPB+GY/amdCdN5+IoKRMWcxSqs9GxjBTWBC5+QnON6XezEt8Ssr4dq0SmztcaT6RgqOm8h3V/GFcQ8FzNisBM3DoN5vzKKa/fY5FQPiis9ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716450803; c=relaxed/simple;
	bh=xrCY0PFMUUCB2Z3RSJVn88UtqxHRw7G0SZZYfzcVFnE=;
	h=To:Subject:From:Message-Id:Date; b=qxoYz3i1PyvaSuJeBuOztz4P3V4Jqj6A30GxfzoRu0QDStRFVBY0iycwgovuBZPtPAPfakS/OVeqrz0+xfmJzbE7JlnYwhU7siLou6EQzViRzHCDMJSA/YJQB+Mxp2gOF0Rtotunyky4KZeXFbUHhYpPKabqHbPjshaJaq5IeEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp1mwJVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp1mwJVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF3F1C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 07:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716450802;
	bh=xrCY0PFMUUCB2Z3RSJVn88UtqxHRw7G0SZZYfzcVFnE=;
	h=To:Subject:From:Date:From;
	b=Mp1mwJVs2FGQdwXVyPqqH6CGlaBnySkJUq2qMafjWswYA0Deo1dGZ5GOQMrowrQ3b
	 izzNmCQ0vsw4NqckpPFYQbdIfsinrA0yPi6HwIGshkuGpW+1Jkj0tALs5iRlaGUbNa
	 d9jeIT5btWZEI1sr2/5DCYMMy1/it4iG0a3N+8M+gAEwlLAXp+DGWmtaqeWD3h3N2i
	 RLUtAv/birLJWJqt05rb16tlt173G/LXymyQM6vutjPxS9oyeD//+6U9WipMBgE4r5
	 o9ZX/KEZtMTpXSHvVNpiAZ20nsrzlDu6raJt9UO9w6kGMUxQf7gnTPacM3G+qdKMsc
	 AfARMLDEm3X2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81CDC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 07:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171645080280.6943.8416450283076355962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f96f2e2e9fa5f860e595f9aba9572552ed6fab2f86b86ea924c4855df8e735f
Date: Thu, 23 May 2024 07:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716450802
