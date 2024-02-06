Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23592130E30
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707227297; cv=none; b=YUAMLw3nSyS3+d+++H9SmSsKeJvMPtRiPcoBzWaoiJv32uhM4flO/sORuxNOGk4gqeNxBfBqx1SFQV3RkllAOx5BLaY6KmFq4MKbMXMR3UOZ3N2B3/ZZulqjNlhlduLK9rnk01lx/VFEzVPeR7ybccrizDfWKyBrDpg5dyGHPxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707227297; c=relaxed/simple;
	bh=y9CQ1ELksk1f9QvczvkCEtYVYGpuHhK0n7M5E1U8Xz4=;
	h=To:Subject:From:Message-Id:Date; b=FWbJCaw+yadblmifL3HWim1RdmdDEet12uJlG8zKEiuNTWkPV1X1B6JFbpIoZymE9/yAWu3vMNOgH9ddIcurj4zViW4kgsolt/dCHM8Mm/pMAvy8l0Y4L5j1r33Gv6Y7OlHuFVvg/ktPXaCUtmviJz/jnuWMIchtw2df4DE6OZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSyY1J3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSyY1J3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F220C433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707227296;
	bh=y9CQ1ELksk1f9QvczvkCEtYVYGpuHhK0n7M5E1U8Xz4=;
	h=To:Subject:From:Date:From;
	b=mSyY1J3mCpS6rtJC9Ujyc9kSzN3fE13GfysiUMC29wXH0IxA/0eUceb052vWF52ff
	 EDEQlBEHPdVqwUaIZDxfdFvjhwCT0RC8Bzw4TBGtY4uuAcWB09S3u3yCNra142+J/f
	 AHweMa3kWZBYb8n5oW7HUd0sN6DW1QpvJFtTOsf+6fShsGRN2uK7GTTQJgzVtLJzVJ
	 bTIBDW5VNEd/oLYRaiuwQIXYu+isTnljZHn21YppUMa+3xbyq1jhCoQctddkx5kmnb
	 qu6UovyxcHZOLp/H6XvcvNj7AZtffDqwVhDDm+XxClK/oTiYZeL6EkC+4T/u6qPCKX
	 cq23exXsWcZRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73342C4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170722729646.26199.3642082927452525398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ccaa2bc9951d9fe313b09ee44ef72573acde2f70c8a81fcf873c073eb1459c2
Date: Tue, 06 Feb 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707227296
