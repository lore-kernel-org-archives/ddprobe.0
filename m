Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE01153808
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736958354; cv=none; b=mqUc8eb3DwNFBSXgu627oet4Q1zGjnoKV9ysMTEju+FezWzCRTx6s/K9x7vwPItBQeL8+3KcHrn3p9EtJ3SMdg13uLuPCdgIuFI6IcBYap0W1rwPBfiyFLXsogSowc28Cmcspraao7gH7YncSm9g1bD/I2fA/BW4fy6Rtf9ruvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736958354; c=relaxed/simple;
	bh=BmvZGrRxPc2oRZN/CdBHISU6I96ol9XYsAQfo3sk86A=;
	h=To:Subject:From:Message-Id:Date; b=EgamdwmhCH7Um1yMuzrJjZIRcIaIqXqm7GQ9BJ2D8a/+VHHdzzOdgOPOl3A7G0Uo87gcmBNKBKWhcjy9AMTsR36xjrvBB2lQ9KKem6lyDbmg2uyIy4WlJN+XIRbmO/GdGXnU9hP7QVJd5+Ggka5IPfLSb+lMkvBxPYYlO8pMupM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzGAoweR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzGAoweR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE97DC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736958353;
	bh=BmvZGrRxPc2oRZN/CdBHISU6I96ol9XYsAQfo3sk86A=;
	h=To:Subject:From:Date:From;
	b=KzGAoweRBA7UuMVoNBvB+l7qNpnAQcvdT4hbQPINklS0iEDSvbnvCfxuL/WCpjB3y
	 o1Nhkh/FxEFnfDtNd4ddrZkcNTWmaK+1fzc0VEf5uK811eFLpwwEEAPhHtmsQWE7mr
	 nUPalAmq0Rdkt2ANRPss5G8ocZTlxP00IIgQANDKunjcz7pmiWFlxqT0MzSEbQP48O
	 4OWmqum6GDbxWFgoy04n5hmo0h4mwzLaLLo1VQcs1iReIIRWrcpLb0MGtCepvHjYio
	 1KRX0taS/deUQ+9HF3q3C8Uc4ZeYpckoM/0eoDII3SVCveoJ6iXWWCRVqRW5Hn8whL
	 ijtJyeyJVeNfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35D0C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695835364.25590.16343396936163076848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a574575415900581062a1408de829e68faf13e6cb2ae6601ca03e062204af652
Date: Wed, 15 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736958353
