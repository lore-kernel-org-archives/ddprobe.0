Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5FF3845D5
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787165434; cv=none; b=KZOkGW/lZ23zdgUHH7E42XYECCHVCMX3mS6Z9qtlN5gMrf68mhADuU58Mkl6fdIAeYm++h3F05yS2znSynSJRn/taqTATeyMFjMe453QTpEgUBEswZOuyLeJzDyYp3Bbb/qjQ8MaFqjwsk+bAb1wgPGeUYW4VQ4qHvCTxhKADf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787165434; c=relaxed/simple;
	bh=lzpzHFkgCqwt5iwMl0Iale3yoorcAPY5U9vsfzcXIa8=;
	h=To:Subject:From:Message-Id:Date; b=fhvQCpVXHMvsJoX8ODFFyx6j/GQJ60Po/4dZKgNJq2pPKiDJ5m/nfDutajkeyu7HVx5+giSsxyicZ7FxG5XAiaFEFWrM+FAEaBBFDxRSDsz+co+f1PmyL3n2tPZFmPyMA6A9Ami/vpI/j2eKATm3Cr2htwiABGSTBd/TRArNYXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltL2cXu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltL2cXu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AF8C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787165433;
	bh=lzpzHFkgCqwt5iwMl0Iale3yoorcAPY5U9vsfzcXIa8=;
	h=To:Subject:From:Date:From;
	b=ltL2cXu2VFg3ivc9XAMTAikI0PCFiNOlNpOgqiX0TruOIF2fXm1YIbq+rIumuyB01
	 nEPVUDGSh9r9iFhzfP53hAki3Tso8xul2sDGqAZMeKa0pp+X5Mt8dIwy31QJc/4kJ0
	 zUs+nkA1/+pAPkiNNd8YtiMUOaWHQMtug+DY16Jss/QwTlLfF70aMzALNGA2tiiaRY
	 S4EeVnfAPIsolrZq679vWcCsIEG5A4I7rAq4xSI4PTz0zZbapczducqSWAMspYPDlI
	 nr2FegL6/D8KtnAJybo2f44WIw6s4m4iVFjcw4X9ZSl1db8qeLGXuVSftyo5CEPaZH
	 DUp0Ru964iW9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE8C5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716543369.13228.13129478793362088255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224ef967e515db690f28484625a339fe653a62e38a975bf79ea3175e695a0eb3
Date: Wed, 19 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787165433
