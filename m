Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B7418E040
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722376554; cv=none; b=hAkRC1Ik9GS+G5sk7c1HgppQmIV+pCDQk49wrF9LvazrZYrCQSAGSQYu9dncXFM8RkZF74rOjTF2E4bS1ParfuEtRQY+SlsVBGzmSWDqtCWSOR69XldYti1jsv1Z4W+SLUgvo8sLGYPEsOZIXhZ0HR0tcndf/RhQQ6HHgWEg9hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722376554; c=relaxed/simple;
	bh=Lkjd9WNERDI8XcUKPVe6LCrIOa6WcC1caZHS2VPcKoQ=;
	h=To:Subject:From:Message-Id:Date; b=qfFAOaIitqhwe1H1/jlNwyho8SSCSg8GsZWUhj7UW21LoLuW/5DVYwgOznDUXCEZk7oQgvwQksO2MFdjGXOdmHHG5O6nNCkoqfLi+EBBLQAHw6dC8KcryIa2rc00M7gbh79OqUvixdkL4XjmhMF9MLlJA6UzDKCZglTQqcsSHaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvWlIBax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvWlIBax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EBCC32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722376553;
	bh=Lkjd9WNERDI8XcUKPVe6LCrIOa6WcC1caZHS2VPcKoQ=;
	h=To:Subject:From:Date:From;
	b=dvWlIBaxBIoQhL0suZWdWwXyVY9dkDocxMxI9E6YCuxNdzGZ7VhsqErHUO49bU1/N
	 IYzfVwwY/gbZ98dnqtnNvjRTw8AO98R/YejeTxGwIkHaJ576c96OpjxVUcMsCZBGpt
	 P6VBS54G6hmbVr3bF10KpveMRS9tVT6Ju6cfdoO+R6Sqs/OyrzCYnZSlLf06lRKRG5
	 3zSyh7CytR8rOEcFH85UbHDmlj80AamPbZJKBNbaSrIvo4j5rMeadmxH/Jfb4d+fJ/
	 7DpnxwPdW90lrnQiZkmmyjc61D3f7aznenYI7leSdG6J/JaNzlYskM2lQAvMiYPEsx
	 jV3mfFoZOquhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BCDC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172237655358.6221.6483568895721664269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745c4ca550b06eb783b53cdeb24abe9340da01ae87fe8e2fc60c0441b9c7332a
Date: Tue, 30 Jul 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722376553
