Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20792319610
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771427094; cv=none; b=V88//oU8lr2HP/jbrveIRPxNUZEikTJ66L/MFp1Opnv24n4mxKoysBKIfcbtr9lrx8uuNy0AWofvOLf92a3Ql1kWR9RghiaINFy4D8Fnd9AxQ85wmTxojuzSYxZJtiWoDrb2mQdeNDVCJZI/2TCBGbbCZZDJNbiAeDPMSO3hDvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771427094; c=relaxed/simple;
	bh=0SUrKiYtt5tgOeQO0Wp6BX1BdsB3U1EvivpLDqeAhZo=;
	h=To:Subject:From:Message-Id:Date; b=GxKoUe5hSsECQ3ISH6BZkYE2weaemAznW9RTYkoR+5vv8p9rIDdiXamDKv0HcPRUSJeoG5c69L/yWizcza9TT2l2/6Hk4wKatMbi1XaBnKCGDG7TTCwEyZleGBKJAJZzd5cGMqTwwAJOJ9ZVMX9Y/ORcuz8Dog81A5RhxDaEgWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1d7blmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1d7blmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5ABC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771427093;
	bh=0SUrKiYtt5tgOeQO0Wp6BX1BdsB3U1EvivpLDqeAhZo=;
	h=To:Subject:From:Date:From;
	b=i1d7blmrM60uEp1lQikLhmQLVLGoTovVqxfSAli2qIOIMCowaXQHUyArOAFfqJ+Vb
	 NWra3iS5paKULG5mBurIXRjO4Uc0GmQEapLlUHRkZ0BO4/sm8nYQ8/KZGMm4DNXY3W
	 2pszltG3DW8LYQl5f4acJLsmV5vM1/71WFoG9j94nYGFmAGg14eaIuCV5ySgyJxa8b
	 apCr2FU7+5OPouPowvz6hcgqKOoo+P0g0z6M2IfAC3y0USDu01bpq7lryJC5r7pTxr
	 PuR1DYagwZ1TH4tykRAaUPG4hpT0CPSdk+By2fZEeh/SDfreMUQxzq+UbyPIzp7vSf
	 rqc8bpvE7CpiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989B6E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142709361.5369.7417605988825216907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c038e91034bc761ed04faf181cd648b10560bbcee3c279f0bd3a1d05d9eb3e7b
Date: Wed, 18 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771427093
