Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA5742CB00
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787593235; cv=none; b=dCw7xGCrzPUY4bB721izLyCqYvZ++W/dhDi+cwOu4y0NFvhnx9x9im9ZbPRKSoZrOckP16g6mo7Qq9yqjXwtTZy/vQ711SDzZnybiNi//IQCmy4uQwO2dXBimSTPxzo9giJzq29Dkr44/FD6+csLG9t8DPSw/HuTutfss/ILdOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787593235; c=relaxed/simple;
	bh=aTvLXiOfrkYFltSQQAP6sHr62UIvq2I2Dq74MY1Ntr8=;
	h=To:Subject:From:Message-Id:Date; b=Clur9GqZfE86cKSOBf7oUsOIMA13f8ofkTjBfF2HD6w5r9fRzzRPLqZTy0aaJ3OOvTayJmO8A2LgNc9/v/ZC9XJvpt6h39VNyeQ6L8V8i/YJVszrgyOosE8YZs5jwIjmPCdiyjt7zMaRwJLgf8pGtXoV8thdxu6HJFWEvv5WJm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qj5gpSQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qj5gpSQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD12C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787593233;
	bh=aTvLXiOfrkYFltSQQAP6sHr62UIvq2I2Dq74MY1Ntr8=;
	h=To:Subject:From:Date:From;
	b=Qj5gpSQHvzCKHBJHuqG3zXtTuDoDl6z6fdvMegaII7cSv4VwONWTgXr9H/7P9KMGV
	 oJ94sOU2LvhR1fMWRmd+NKMvyecwmCsy9qaGy9Gc+woSjckYc/iECfKcQeHqZVKMb9
	 0CINe6FdRQi3DvkNTyPO8XjtMpQfid84gA84FrmF31yOlSy675Hj/YYjL8/QTb2iq/
	 wtW+9ka9idjKQ3byq8mapmSfWJWnllN2DNdnpiBTV7QXt4eShcFPyCmscvCvwiryAH
	 /3yS/KJB95D6A31MNcmgJPO3aDe9jJySygAdFrcR/V/TdkftwIyHGarr/DihykOTbO
	 Sby3KEVKZBc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA698C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759323368.20068.8855895302583286929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b73d57200d16f1806de8359d60c2bbd919e1734bef6179a1096790697861577
Date: Mon, 24 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787593233
