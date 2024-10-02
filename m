Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF92194A73
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727872554; cv=none; b=OcIG0WoOZtafXcGC3ArMDZwxmLuFN/DBuDpSiMthfwQur+GVW3ZU5r+W8xg+Hw23HZtWlaK3BQJP6K5+NlDslZ8gWnefezVaBGNVgeMFFsHXAYKrNatE77bXN98vxvUeIHqh1LR0rXg796b0Ezk7MltVT+egSmN9liFKdMpd93Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727872554; c=relaxed/simple;
	bh=xy90KnBy8OTLzdv6bJbc11xx9Mt9taBKiew7hS8kKyI=;
	h=To:Subject:From:Message-Id:Date; b=IVWV3iTnSDFS66M4XC6bRGULNNZDhbButRES8szodatqCczjKyyiN02IIfnidn14FddnPhZ1pH6as1ycHnKPmaKzHZU2kwLwlE0xbDwBehK8pgbVVPCn7hqD/9ctbg7eHoZxLOuz4NoNz4MLNc0ccM+5X9ZrRRaQUt5JcijAiBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a24rwxnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a24rwxnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A403CC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727872553;
	bh=xy90KnBy8OTLzdv6bJbc11xx9Mt9taBKiew7hS8kKyI=;
	h=To:Subject:From:Date:From;
	b=a24rwxnlf0r27HGltbkcElaG4uckRmnxH5NMVFz+pgmereoCedhbRNcPwtjjZJDtr
	 dCmFnfiAMsVbuqJ5+B5tXBnsF0JNHfhENa2WZIcc6dSNUDUYxod6eJD27kEsf8cA2O
	 eCyoIx43Z9LNFV57OPh6p3HcOQvegbTbJ/uuZ9MmCrb0rF2pEBhfkPBL44RO6RolSd
	 wq+Qg575hNOE7uSdDezpxReUNZ4fbC4MQAhRKUrR22k0oXbmL70vLtjDrO/6G1tUnJ
	 5sDOaHROB9m/4nPa2UVWdLIfqYuQIVV+tjiKyP7y2CICU59dex8Ckcc4mcSrHmTD7U
	 agXewZRJTSRBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FABCF31B7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787255358.20792.10773723253277645812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90112cb420e853f9475126d9771131d1f487cd2668f96c3abed83f0f00595eed
Date: Wed, 02 Oct 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727872553
