Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD001FBEA9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746027594; cv=none; b=dPGlrusVIkoXxfXhFkeYEZHAJhz40r8FGvPkgymdrMhMgTeuhb2dG7RqkqY0oiNn3cGlmkvzQ5CzruDDpFtg23bLRE9r4ovDHLKW1FhTAzf/9yi/lioFuSXL8ps9vCtlxrgrLZ7454I364cI2DV5ViSoosvXlNmaof3+3NEUwqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746027594; c=relaxed/simple;
	bh=dklzw6xLpPCMzt/F1aoC5fc22460akSE+wDg072nSDg=;
	h=To:Subject:From:Message-Id:Date; b=gt0yy+QXIbSKzaV3VtyD5orGSuDoAnm5AwVjf6KKzpJ0vUdtafCR2XRrT8Qy/Kg4mjg+mD+V6ksEIornrcgymEAJ+QIImaZ0VhzxP9YunFApnUUDmNItnEcEJw4ajouoA7rXmAJcleWtlKYXCmszSskNGkFDzulYOdjsNt1GTmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRoMBzsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRoMBzsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E278C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746027593;
	bh=dklzw6xLpPCMzt/F1aoC5fc22460akSE+wDg072nSDg=;
	h=To:Subject:From:Date:From;
	b=KRoMBzsuS7lVtigsPRBcX93cuAKj37EpEiIpXgPAdOn2I9JWxR02qKMgohdT62iQk
	 stf1mbGj7mbZfUMppwduNNX+vrmrPueBFjWvQrlbKoxb2C9XfzvLgqeS3AsRQq2O8J
	 AKYMSfCU71xUiBHO2CI/YUOdf35InQSR7Bp5L0HxVSk3uJI+A5mbxLrpSEvQcBQ3mX
	 6cCaQR8dT6mLJM2zilooJRrCBD7CAEuz7A1dQI8ZzC770iYfDmojrK6gBBkSh+VggQ
	 U++ri/DBTCkczp+o9iXl47P2gasvOm2dPmP5otr6HZ9PHEOYI70F2Xurs/ZQJA+XVg
	 REcjEsC/6/RsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D4C3ABA9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602759357.5988.3995793529743071044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b5958702ed3d5b432d1a3bc660a844cb57eebd245559783b06561236166afe
Date: Wed, 30 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746027593
