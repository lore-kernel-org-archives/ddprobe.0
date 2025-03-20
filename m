Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E795226D04
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742498994; cv=none; b=W/RzTybemtmf+8h4acyrKQZTALjWAQX+1zmNYQoMdF+kevWyHe9+ePCJSmlZdlnLSRqdRzrPu3bXEBnaLTNngpTIxNXZQyuSDKS8pbGdrHjpXsf78SS/gnYkmlm+n8k035BnXvv5FsFrp/rfezwwI9Yy6b42NyJHCmqZd6TXLAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742498994; c=relaxed/simple;
	bh=cGAXUuyJ+lvnwT1t18kLcdGm0J+PFwMVbUph7lzwvFA=;
	h=To:Subject:From:Message-Id:Date; b=usohNnm8Hwm1qgDh8wTtoiWk5ZRlT2vA6uYpgONdcfsQcAUI8vLcq5eKUssIglbwqfjGL0CE3abJoHo3Ucy2md6Fl8eeFCR/j6+I10clPYqXeDI1pBQM90CancPMk8ftmCaKvPcw4uNCSjf7ehLUH3MiDCWDYdcJmTpPQLiGQak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpgmSgyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpgmSgyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55D4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742498993;
	bh=cGAXUuyJ+lvnwT1t18kLcdGm0J+PFwMVbUph7lzwvFA=;
	h=To:Subject:From:Date:From;
	b=gpgmSgyTQjs2ISCtnT6DMuXIWOCFMo0AFJ7mmOpZh7PGbD4mpJL+4yU+n9hpugSTB
	 wCjzubLmi0mml+qVcmodfXbN2xJ/U6QBHeKHOk5KroqOz5YW16XvqwNECWA7i8ngjc
	 2U+nx2vHA+tzRq+ngWCi3T8IzfWk0ohvD60mt7mkMJZGggEcwW0Q3q4MqcXfd4gaOX
	 /pBO2SicCHdsSwvWIdDTG91buz/N7172N8HrhitQ4p/Rw91rYNK29+2pn1FOgZncYp
	 jPfuIStUbSrTlotcNR72S/29Hm+/onhVSh7jH6CweQq3bctdnbjCCOzcQT9fapJRYL
	 fVeS0dAE6FquA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B638AC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174249899373.10008.4211911499592777904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f1addbf388a84df059882ccbe577696345671f65a04f19a00b145a2c62042b
Date: Thu, 20 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742498993
