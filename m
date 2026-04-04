Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FBB2D7D59
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775285134; cv=none; b=dBlkTA2C3K9gm9zM3c7wAX+CYj0D+uCKRUntP7rDrlCcoRpt4WncmRfmDKiT/Nof+MnQpv8WLuR2MowouHvi2O6lTVsoLjih+Mdy3+w0sJIWEpY4aefo3ULV9ZEXisU2P3UuY764soLSEetE+eUgnZk49lBOMFO1HT1egms2lqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775285134; c=relaxed/simple;
	bh=4njkO1qkmd5LJ+7vy2rV1P/h23AM5ceeu73+w9QH4zY=;
	h=To:Subject:From:Message-Id:Date; b=BBPsQ1Q3VnNhqp24znuyrcqRx3EXDeLOtLoz9WQeDWUbpnyX57Yg80UcAoQTSFrp3jbSZD2cVaBSG+EzyqBQKY/FAOzjZlsUQuApe03zjQqx29E57OicchicD5I8GiSA7neXG6ekcNeVFYysptJ1spDtCAZXWA3AQcXUmzzlISo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSH1wbcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSH1wbcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25E0C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775285133;
	bh=4njkO1qkmd5LJ+7vy2rV1P/h23AM5ceeu73+w9QH4zY=;
	h=To:Subject:From:Date:From;
	b=FSH1wbcKAyAB2keFA3q6zAWOZzBppqoYxrHlEnSRJRmXLyi2oekLmTV16hy/BqIbU
	 gbEQxBH0iKv+jkxzH2zLsMAynRg3Mbhm+VD5tZyVD9cHknLy1sVZB+Xpk4wtHSQJQ0
	 UeOI2mXYaDEvkzPRw48hBIP3mAz1dGBLjIUTkIKwaTPxu7mPnZVh4g4eSGayiD6Sap
	 I1GLmaGNbjT3qO4+a21in9jZ/HsnrENBKHdcUFVMy+zbVX416qsBkc1juh/poGKaPk
	 xwfnVy7bP9iY/iihZq1VIxDcAsprvALJgS7q6u+pYVGbSOWiXyZZlWjoqH836ybPNb
	 wf9zjTnBg9Czg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C5EE88D86
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528513370.15921.9974155897498746122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf53e4b7105f71e3dcaf03b4eb780b07a848cbae78baa2257cc3013d259460a1
Date: Sat, 04 Apr 2026 06:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775285133
