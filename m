Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1071D24DCF6
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778779234; cv=none; b=cvlXOsvAeEFbN64Z369C6AIYfpxaY2cqyApmH1ic4imu0BQOvweughVyDCjteB0buaTKmJvEAVMZ7Femk5Se9ZzvIz5F6Lp4rUzI3kCqwBo0bg34NmzAFAkjjnKmFilzYu4AW8PggrGiTKMCenilvhuMdewzvT43XAF1ac8HCZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778779234; c=relaxed/simple;
	bh=Xr+rFh/KSOR77Z4dqt0hDYS7ZEciRmD1OSA731O4Ck8=;
	h=To:Subject:From:Message-Id:Date; b=RVuyo80KrnOVte290uA/KK/qIZ1rOHOAzj344fW+QGpz/bbSAuVS4AMVtpwgGJAPbZXtcT30Pqdb5BfHXsv2F/W8Ws+MVUNBAcLAILuWpgdUQuMWj1kQKA0t9HCG37OOQEC6iyiMApj/eM8+FI35P7BmToW2EI7FES5gb/o/rpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjQN2U+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjQN2U+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5CDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778779233;
	bh=Xr+rFh/KSOR77Z4dqt0hDYS7ZEciRmD1OSA731O4Ck8=;
	h=To:Subject:From:Date:From;
	b=NjQN2U+4ptLMt7pa+dUi1IvVvehaCaWnDKdJCY/zXg2Ir6GKxHMHTsNdhKGT8edCK
	 eULRoEoRjm8WCXNiJ+jJ47s27tLHc1P81nvrQgVSNStZGaeY43tYbzzcvOEaV2kEiO
	 aUAfg3NIbqlTBxcakPgCbMkodPyK4KGQ2omcEkVcAMXb0A6j8TX7+/IjhTlq/bGJmS
	 AEbxxf7E54/tL1BNcFoojNn+KDBCkK+LYaCucAja1/HXKBPiCEmf+fxqzHbDUcl3W/
	 TZ1s+ofSSJNdCix8k152UfloMZTR641SUp1afi0PENvY8w45Gp6IH4ByuqQhQhA0PS
	 2wz1vVJSkMddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EBCCD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877923368.6643.477806886649496725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b368fc93f94ade7d6b703506d897ace78b6cbe3834b1ee5a744fb7e8423aae
Date: Thu, 14 May 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778779233
