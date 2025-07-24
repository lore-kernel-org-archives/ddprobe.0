Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107A01C3C08
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753356594; cv=none; b=Ci9Kphf1GJl/5HCSD8T6WEx25u6FpgAFDLhhjQSjLBOwLzbx0K3lIeiKhJaS4rzjL89q3YU2A1uR1df1/E7jgF6DAanyKbG6/KN+tgri413DJQDl8XZ6WBbKG/Dp0FCowejin/aWdLNr1CwHPn04aVm05EnaESEY3oEGaotl2k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753356594; c=relaxed/simple;
	bh=8qLg2ug7asTAbfSaTf9wCfxu9QI2KqzPD+sm7h3u16Q=;
	h=To:Subject:From:Message-Id:Date; b=jXXkScbUZBG8vx+XVu/qBTvzNOJcgMgUpQPXk/Px/8l6NNZ7hAjd4lKvRRcbjm8r7m9ix7te/WKc32ucLYjeq4zQtcAHTWmeTFmwdzHF+fZf9kk+sTwhNgMXI6oMNSuKUC++mjsrvbArcjXzDD54euAnX7mlRWkpkYNs4Ud2s60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjYYLKlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjYYLKlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F75AC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753356593;
	bh=8qLg2ug7asTAbfSaTf9wCfxu9QI2KqzPD+sm7h3u16Q=;
	h=To:Subject:From:Date:From;
	b=HjYYLKltwR2zmEtJ0CF7Ukrc5ZROHHBVjqC7R4AXaloKG7qW/lLHlv6aH1eGj56LI
	 tIvSH2TtDWIbqqLa4JVOC/kNm4jLUN73m4T3dc4qAtPmspxWCoIpTxPMQmTC6bpQrk
	 4ChStZy94ULrFbbwM7JfyHUnspUO2eqd9qjD5P6RxDtS6nvgC5E1FeGt+0rcmS60Dj
	 3aFnmcYnAj2FVbCY81srx1sl2WoCrHq1UJtkhPIOmUTGgkERuqehrN2o+661qIcj9e
	 1+WPxa90W1FFOIffZ8GHVcTGlD/jzA63NDOgVJZc20myUPCOSme/nLIAmXMa1LPHKl
	 qqM4GSPnRiK/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C0C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335659357.25110.10555333931427098732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78264cafb8e114096f35c29a9e3896996b1ba6b00584510d2382ee412dfe6ca
Date: Thu, 24 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753356593
