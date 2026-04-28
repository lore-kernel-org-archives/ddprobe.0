Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9151E1C11
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777355254; cv=none; b=nyDl9frhU8r3ibIhOeuq+Gq2Wok8VfPSRH4NhY9KsbE4b3ss1d3rR9SG+57riGE7/vaZduU+FaDI0/8t8VO+GVWLOjp3bC0p6jt/Mhgw8aIzLLQlsF0DrDh2eX24XYAS2olnDbLRgZselr06kqgnxbQB1T2toSCmjL65PLqJPb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777355254; c=relaxed/simple;
	bh=WTgY+dLd9cGKWd36+btc/QtRZqdEaYqitJCcLY3kFao=;
	h=To:Subject:From:Message-Id:Date; b=Q4DqlydbTvHCiMFadd5slBrlSyqPN6fZs4uDwPLg8WDiyXKyIWlhzj4ZkOZwIfqRcQroSPujWZ1aY1R9wz9XVvzCKiqgPLV86F51nf7UdOTp130xfMY+nN9lYhnIi+d7Jnv5+vfhyOH54airyz/y7EynkhBd0v7jxmBzfh9dWdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5zMj/Z9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5zMj/Z9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C39C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777355253;
	bh=WTgY+dLd9cGKWd36+btc/QtRZqdEaYqitJCcLY3kFao=;
	h=To:Subject:From:Date:From;
	b=o5zMj/Z99jKfG0/nik14Y0VQLTO/BOWOIj1w4Djr+QMkHUkW5uddxci41twVGoTVf
	 5/GY7c5Ats9wu32tTWq1BPB1cF8fwMQ4D+2nR9+SMbLD/adyDfotK/u6p18YuVetE1
	 qP1hVfmy5ySAQ3SV6DTsJwb9S1Zndno9s4zG+60yFDjO+YOPn8kV+0/ve971hMrJfb
	 5VSU59a8nW0U39/1F1Q38wosMeTb5mHWZEPob4l/XGl7q6ZSDMZ6uhVfVEnFzKJBNk
	 qG/i/FARWbF5lttDGajdKcbk30WniC9xyCf/pgVdfFCcB6Mqls0ESvIML89B+bcnpe
	 nBOuS2zcl3HaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5BBFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735525368.25749.16341290194763065894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36cf1faeb9bea72d210cc5f9bc57548bd65a26beb2fc7e40a6a72cd089b712a5
Date: Tue, 28 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777355253
