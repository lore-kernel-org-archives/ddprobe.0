Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596C75372E8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790075434; cv=none; b=dYtXR2T5KH6/5K4ECm3JY/G+mOubr7m2OILB035KybK8kM0lBrFs159LcS7ibqwEDvoZBtVO8TKTbsPfBy4RU/eBTZPerpsn6izr1OCz4PZ9NAAi8i2/gGONWgkkDHZkmoYjL1GOyl2WxepT2uqB/toKyxSwr7YsTGrqYP2rxmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790075434; c=relaxed/simple;
	bh=YrWMOIR1coDsHEzU/gEs84+78eMH0M9toQv7Yrqcafg=;
	h=To:Subject:From:Message-Id:Date; b=nKrWrD0VNySPm2KI5aOPTNAuZbNZ4aZ266vsogM3/bnbfbVTc4/9a6BzK08f+iceH3QCmaDeC31oTflwi/9D+f3949nbicjNoRuSK0Qr3iFED+CBXCIKLV2YtvY81aHPfIfifQMrCDMvmtoaaNqb7B0xOGkKtXlD0Yp1H2dG1JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJgxYZbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJgxYZbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE467C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790075433;
	bh=YrWMOIR1coDsHEzU/gEs84+78eMH0M9toQv7Yrqcafg=;
	h=To:Subject:From:Date:From;
	b=aJgxYZbSi8OsYZsWPr0PU1CITWsLLiAt7DiUR3wSzJiw+ms8QI3OraQRtzZqqIMtl
	 KlXpXwiPOhOZJFqqU7iolKSUfwEyzW3VPuF6HC7D/sjWLgOEfK9BoW/OOl7KSxjkpU
	 P2y1rGepAuoZ4B3oMfU+JVrwSwBqyczsh+i1NGEWEx/V1MgnmJKuV5omzBve6j3tyi
	 mswDr9Uy3SlxSzduc9qK3oYIRpa5w34wNiMEXMXShcq20R7FhV/b+w3mkl9CRHQi/P
	 cdf0nicYX6tHCORk2s9B+ojEssLjdPvYfRRzi17L2lZx2go2CYSkHTFTvKUWXVKuJD
	 MpErAxQV4KKdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB86C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007543369.19378.4977645630056684413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eeed2b6001af87f571d8d3a948e1b6f16811350489db1dbe151f34ab21f7403
Date: Tue, 22 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790075433
