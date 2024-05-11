Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F55B1CD0C
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 22:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715466143; cv=none; b=adeSci3OecID3Nq6G81iIFDtWiRsNfhvm6WncbHgjnVPP/T0jfD85R12bMU++3AdIwvXIZ/AfTMhdlgk2sZH80Gzqjf7xzE2m7HpSnBpykUIkYtfrAogM4SACF9zq9xl7sjnwpKqb1Vn59s+ollxlfs7gw3Fnw72N2WNLNasiac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715466143; c=relaxed/simple;
	bh=l25a6dmGgQ9DIi4MIm4CyqzKV49AdtoNBYWG1nWBHkM=;
	h=To:Subject:From:Message-Id:Date; b=g6L1wDP1HMvV40aTOcw2ji2CaIkps8CBrbSqQ5eZOp8KWDxEaU5UPRnPL7fcnF/pIu577N+9V0St5MMD7Dd+8knGMg+nJQaDzAWV3qSRvxEWkl1B7ED1/Oz9vcCzfz9tnnfQTKeQuTjVPHoN9Bxd8bczDLxjPQcPsNizsHPDxkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pW1zOVrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pW1zOVrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF87DC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715466142;
	bh=l25a6dmGgQ9DIi4MIm4CyqzKV49AdtoNBYWG1nWBHkM=;
	h=To:Subject:From:Date:From;
	b=pW1zOVrhKSVRZFTv5ta66sTKXaCRF5gEJeKlAHnuzyT6o85X6AcItipdnexwV+A3x
	 Ecm2LzvWhIwFgUDPhG1mprLOc1RAonEiUNacUS/92UkB6hG615EmFyhRcS/ZbVe5BP
	 ECq7cJk5q3Z4SzOi0mJuYy8brEjaH7tQ06Th61BP+zvX1Vqq9gnYAX1avehXl45i03
	 dBmlS5G2m04+M2iSNFmzlCyO0KWzoobwLYIirTpKieyWPVuFSj3vzLhRtc8l+pFfPc
	 d3JZ7v9j+VuhZ5xE/dpOVboNhR4Y84ZQyLUwzPWkQS1M2iwEn9TgN8wLGN3f044Cai
	 c2tfP8MYP0UPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18FAC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 22:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171546614277.29259.2738980064176683720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8173db972a13b77e894ba41e8bae3a27da49ecd47c379c3ef3baf818c0d24afc
Date: Sat, 11 May 2024 22:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715466142
