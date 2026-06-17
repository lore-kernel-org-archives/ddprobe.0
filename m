Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD011DDC1B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781671594; cv=none; b=sTieIR4pPFREfzpDp4MTGuFjKaslXcBRmcL0hTo07PgOFlvAhA8tt1gI/V5ynTygOGOAkUtGFJtanyeSUMhSusxTEQcXP1+V2imzWuyI8XI/Q9Ti9TLlhQV+vjaK/aPw1UpAMpU6qkFn7eyjqagKk7lkT074nK+MaC0Go+vUoDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781671594; c=relaxed/simple;
	bh=KWTc0j00SU/4lOHgDlcPZ3FT93po5fd0xAqJVTVva8w=;
	h=To:Subject:From:Message-Id:Date; b=j9nxNS5/qXm8dxIYJc0tzbQM+kFSZhmqL/DK1GhnpH9x7hPtfnVXW1ey8uj8DB8/ckJcOzQy4qSAJLE7gSZIAps9Oo5cPdSD4XGTicergFxKa7KMLcRBMp+6i04D2s9MTEYYpR9Ps8B3gtjvL4hRypiP8ZHVC+w5DwNC678n/So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tf9a9Zie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tf9a9Zie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B17EC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781671594;
	bh=KWTc0j00SU/4lOHgDlcPZ3FT93po5fd0xAqJVTVva8w=;
	h=To:Subject:From:Date:From;
	b=tf9a9Zie05WpL8fEDnGCaua9HCdmoEQxfY2mYqIenlqIsGZaPruj7yqGkli9+SiCj
	 9FgrPSkqBR0Zs9SIB4lYSNqEwygjablmllpmMDEx2bngXXQT1Y7SXZPDym6kkrv7hk
	 ZgTaGYQABBZXi4Ly1D05UIYfC0cGKSi21435hJPO4Y8UlDd/326d8988AGXVF2BH/v
	 w0+BUaW1feOUNstUiPi/v7X1GfKM3Tar0lk4iIQKKdIAg2UaBynwsXQvbsqBF1VfUf
	 T1Dzp2FqQ3iIGHu0uHn+Q0WLN94wB766WG92u27+i9ikciOk2j/QB1hVc+NpBXAvqP
	 HIuKORIJXOKYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD16ECD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167159382.12111.7165288041290434401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3773b31c12fd580ffc62367869e1d4285f37cf1257d51d87f1962e5735ba90
Date: Wed, 17 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781671593
