Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625BD42070
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739727534; cv=none; b=HWV7vvXdBSTl8gDzQFH5DF18lXrFUg1W+UJ0RGgIdngEUOBhGsLfZ3DMYYNaBtIhXVDCf8rLTpWiKBkkFWYIkpzMxCKQEqIElrfJ9yR2aPUavRGlNDsU6ECMGero0sbizim3eZ66i1eCQ7hmC2NHB+NbhCKMfiNu5rI0fionrp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739727534; c=relaxed/simple;
	bh=WEc3MDEMU1vdERfssYqry/uS4A08+LBZC2ZbkOmudF4=;
	h=To:Subject:From:Message-Id:Date; b=Qjs5d45AiFU3Qevn7p/9TpN4J/BN+/tQ/3JX+odrVRGPYk9NHWGVvs1cjwf//CRPrQFCMelLv9agXteHISkrajKA5ax16mlr7TfckuFkbiDRJMQmnzhQLc63k3JfncS7SHRf+Wed2xMB0D+QI7rrpqvYSP4lMk9UG8yyvrfthzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qC+nQQNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qC+nQQNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1DAC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739727533;
	bh=WEc3MDEMU1vdERfssYqry/uS4A08+LBZC2ZbkOmudF4=;
	h=To:Subject:From:Date:From;
	b=qC+nQQNaBlngHkNX+6RRAMp1xLqJaWimHzUSMnYd+Jg4/OC8bNWDNaQkU263AFUcw
	 SoVQ1eOChI5uryG40kWug4JaDFAqrLrK7lP/d8MxtYdmpAqG0Xib+pd3gy3WgeoyXq
	 Txr04Hl1ZxhurFsKzlP2joYmeqXRJ+KJigj+1eiDFCxFdNBZngna8FbPU44soEHo4S
	 BSSm0cdkZqa86zBkEKBZBeHImL5QaCe9Ya+Zaq4x1Wr6SnYEVFc2u5/RMITV5WLAVJ
	 KMvP72JWOPTMnMtOVkfbvjC1cFUaZrjJjKE+CH3f7CIA9FgbNGq7JY5YEX2c/evi1M
	 J50HULayqZ5og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971AC02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173972753363.25836.1794804300962974917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540201e8963d4072febb4dd236113e2797aef84b0eebb05447f8ffd9f23aba0d
Date: Sun, 16 Feb 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739727533
