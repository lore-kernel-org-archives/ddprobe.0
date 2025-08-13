Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB2E1DF75B
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755088194; cv=none; b=BUdTmCc77X9eFoSPyxv8nljzted4n/pyXOYclvHS4Ea59mbENbuyKvam84cBqJ34BHXtX/ZFujKReuHKVZRSF9nJUMyzbMaSv8rew4EeZJ39YSG4yUS8ZcEjFXZAF4OO7VvEkS9h22NLpTIvgtffel05cj0VNsTIZhYzH67SR+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755088194; c=relaxed/simple;
	bh=ZGNtmK1lpv1Ms30zPTMPy3HFPOwdAk7rB0TVD/L1w/c=;
	h=To:Subject:From:Message-Id:Date; b=DQ9B0wCcaVHDeeotDqmRefcJ5/X6t1Caz+cXRBaHANVw6bZoVmFFcMySbTLzMoi8ChAwAcRSktdInQGEyEdV0PB/w5WkXm3G7LoFyOxrX6G7Nyceq52NG1aUJ8gFHltR7IdOWBY+aHGluva6XZ6AqATEbFfmg2vx1SHkN40G+qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3Xm0fzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3Xm0fzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC49C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755088193;
	bh=ZGNtmK1lpv1Ms30zPTMPy3HFPOwdAk7rB0TVD/L1w/c=;
	h=To:Subject:From:Date:From;
	b=h3Xm0fzuqtmQBwpFrfl+xBNgbvNTRghIbltHJOMZj/otMDpH4OVKhC/5aiDJsPUqR
	 cGr6cyaP3E+xuBKqzdT0u8uyetMR46ejR0Z3S6R6zRcmQJFVPBjfWS4NJ7LmNI5fuU
	 f9/DaWT31zjujQldU1x6pTGZfhUUQ84Wk+cbIki1iCnTgMavanY6evPIelyw1duOct
	 VLV6MlClbAkDSBjzSW5g9CnKxMej9DNnVcEAKqo4qj4899nzpjL5WpxmbRejwACj0x
	 uwPq641LbkXQXEPB/Le0aI6iFYjWQ5O9WWNgi+4JZkDTV2rtoVKL2UK+8SuzjtHGMU
	 5V3GBy9gU9r3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9000ECA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508819358.31535.16647279626776852529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ec3006950c1082bbba08c3324670ac3f489df2f7ecd87f22f190c250d7ce40
Date: Wed, 13 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755088193
