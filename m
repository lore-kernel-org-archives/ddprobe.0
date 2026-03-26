Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03ECF2DB787
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774565094; cv=none; b=Pox1L+wGqNDX2Gri3iLQ375/g4WSyxJgkiEVs6bNvHaMU22FX3h3pQevX2fjxDwOc6NuL4dVZNSZDOnFCZaymse25N47xuT2/x5N6tqnQ3Y/Kbw6pbyAcRrkAmJNpyMx8lHzYRR2sNWQaf+dmzlkCW+4t07ymt1aUBQprQqGJFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774565094; c=relaxed/simple;
	bh=+4Dhz4KEsURvbvxaNP8sguFBLFbSKOURWJjc3O+TmqY=;
	h=To:Subject:From:Message-Id:Date; b=ER/KmG2Neo9B5AnPnyHSV0cu1lCOAROKNhRSN/J7vgZg6vfuHV6EJZPfGhyZoWdxiWLW+Tg+U6drsjGem0lwCL84SYlG6EngU3zrxCU6EeMFFxxM9icRDh11INlLuEQvZqwaeGXc1BNM0u558tfhD2HUnVRhsSJbH49FUN6wlOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p32emdFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p32emdFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23FEC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774565093;
	bh=+4Dhz4KEsURvbvxaNP8sguFBLFbSKOURWJjc3O+TmqY=;
	h=To:Subject:From:Date:From;
	b=p32emdFT59JkdCyEIbTEyG2IKx5hg9AQE8eisVypUCd/3+wWh+epesMfMZ53tFEDP
	 uP08i3jet8jejIwPGt4JOVh62B8qhBrpSC7UC30CjAZpuAqzerRaUfwuXfEXqUCz6C
	 71G7xPAhZmDjLTI0VMtzyQqcgdgS4A1Npr1LK3lVfHqK2lSUvf7KIOeiBf/0wpP1fc
	 Kq4nLqJYKV61Dx+2TmXUQ5dF1TD0YtBhANjiKtTMso9mluPk1eyKJwMm43FYorPnNf
	 UScpz0UznSmCVExrhoazam94NBpvbeiy4BEwGsFLi2M/ihj0JOtOKUWBG13NQcntSH
	 UhXMJBN/CT8fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EFB10AB822
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456509358.2376.729572740058811671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97a878fce91b61374f6df4d12d23d3cd1542e66714e80a403a5878c4ed75a40
Date: Thu, 26 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774565093
