Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B8F4D9E3
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710285497; cv=none; b=sVXtgz2u/c1Vx4rLyUt1BQjVTPCDT+NsSHruLdwvJ1h1Ovh2maj+kel9oQ/UpsOCgBtlAMcC72TuTozQ6BRh3/1wz1tua+vkMmcARBzqidIWpfVHnjJpZQYAJ9B7m2ZbAedjnwFzH/tdK5kliz5sqYKKlEmXEsUuwYm59GlJCYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710285497; c=relaxed/simple;
	bh=+V1OCNl3NkgD42MciqQqjyt76fjxfU9M6qSYDbG8VpA=;
	h=To:Subject:From:Message-Id:Date; b=L/b3bWKTJkH/j2GLrxIGme8vikweb9Ja4jtsPJFFaU5M9kUD+wP0cNwj5gytQCaroCpLqJ+A/RH4NLJtt6puceNavkq6fBosj+80VCdffAgI0GKm1M8gbJpqztilcwCmdTJoppsz8gGS8k37fbMJgeJkrkFVyE1HKNBG3lDALiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kki2+7xw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kki2+7xw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F2DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710285496;
	bh=+V1OCNl3NkgD42MciqQqjyt76fjxfU9M6qSYDbG8VpA=;
	h=To:Subject:From:Date:From;
	b=kki2+7xwRphKN74i49aY9eMgMdJjw/KkWt91BLZnCIAUHOqsNp9iwwu6k4tOmRft9
	 5Z2HUarZdlJpRAnYnt1W1DG7aPFlwDXnm6rKOfANZEsae1HXGQSlqD1J96KaoaDr23
	 uZuNcAaIIr8o4C/eRp8MWa3dae4UDQLRHOu3SX1kbfDBt52BC7aRCXFUwg1f1/Weej
	 GGNy5pr3GSww5uc53SLuL7aT19YGUeiR6xIxAstvBuBSfdzB86uLiNMAcFsaH8m/rl
	 oOS1eHzzL725jUuBdub2c6so3Y2C5jUNauPilL1gXzonmqawvmBJ5UWH3sjKT+xaBU
	 YEr92bWgtGKPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E170C54E5D
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171028549637.16549.10310783731956327396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8f272296f624bd940b0c2b561d854e87c00212586386f3758329c63cde2a14
Date: Tue, 12 Mar 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710285496
