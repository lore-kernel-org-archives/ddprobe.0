Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509BF42124D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791461434; cv=none; b=PFKikHfcuegHEcfTKKtilr96HBUonivT71zeTBDg1KQ2m84VDMYOdF6PiDNEsmreI8dCunevMRLz7zkIVKvYAnODdBhnD/vUryREzXKu5tmSH7AQN0VjH13kfemlIiLZCtXVpgtgq8zrL1uwEPMu11bba3FZIIsWGPw5Y4w02Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791461434; c=relaxed/simple;
	bh=CrXvDsY+KV+zRHq+da6Yo1E4JWIByEYO1CTsS/lRRY0=;
	h=To:Subject:From:Message-Id:Date; b=JdNKTbbGicdd3DDXP4oj4pP07kDGw4AfontRPPCrAmyIwkN1c8IxMerxdHebaSA4NB52OL9Q2i50BsJJxYfBl442pySWwEedySfvCbcabD+rDYOzCkk37pfI4Ve816JNgdYZ7LUSea5JQeuDMdxE6RsbdDfGN//ZHnIfw6Wis4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2Jv0WrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2Jv0WrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F41C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791461433;
	bh=CrXvDsY+KV+zRHq+da6Yo1E4JWIByEYO1CTsS/lRRY0=;
	h=To:Subject:From:Date:From;
	b=I2Jv0WrW09jVkfDN+nqo9lDpMgL/G0erpHjq1jffgstcZI2eogjJBbe65OD8J2Ucs
	 jLMwApddohUeahhPj2ZT/5APRETUv/2MjiuuyZO59rQI4aFTLCPow43v1uWRwnN0gg
	 osdsP+Jr4JFEz/WIrrnHZAVTyYyai6lW99CabfmOic/xEygEHRnmi9X/DL8Ca15i/b
	 2hPgTOTmohnJ4epdtL0AjDzFowEu3O2pdQN3/Vuotp+4yAN53ZouYd9WtYp3TOi+5K
	 oJXRhEkJ4hSveNaXcYNTBoW2ffjJ2Z0tjsUFrUOWXFrCSpnqO4PRWnqeGr0h+bgYJF
	 +pHaMGSl840+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2150CA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146143371.10340.1100769912794520206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33623595d5f27d6f5946bf2c3a4cb497fb303111b7ea5582627eecf78f9648f2
Date: Thu, 08 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791461433
