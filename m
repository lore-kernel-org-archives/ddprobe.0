Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A434B1E79
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747631394; cv=none; b=k9YLl6cmcieN2IqdqJghnS55tDbrcKdR+wdotS+jrD6t/V9opvIIobs1OUJFQ0/4KprwYiMXzc2tAbLUk2jLaL5PHTiVUyFhdqY0QqbvROO044VrdNPPh/qPP++EM3CEzqOcr6oploH8U5jQyyT3Zrg2sJsrYDPNOfa4vh7TgeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747631394; c=relaxed/simple;
	bh=T5lNFGoqiSylGvGwAQQDctkpFuFNzoWiTO5fdFeQNIE=;
	h=To:Subject:From:Message-Id:Date; b=DFm+DBTF/JNhi34mIMu9N96IeUPEEOir5F4Dz+1JD7TCeXrRLQRDwqi9OAwAJlmiE8XUGS0PDqhct8QmCzrIGhqktJ4ie329EaZQY+jxHoze4eC2aTAx+EvnlGLpXu23VW9UbGiwWt0gPQucwAuQuTzt92Npn9yjcwb+X/YGoZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJL4irfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJL4irfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A09C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747631393;
	bh=T5lNFGoqiSylGvGwAQQDctkpFuFNzoWiTO5fdFeQNIE=;
	h=To:Subject:From:Date:From;
	b=DJL4irfGSzVB+D8Zu/gM5xsLr34874T71WDd7cGTYZ7w0YMjBym4yaiD1DLNxKO5N
	 emGxVohL86ZcxnpPRXA1rpXlReGxAUo5jyTY7iN1SO9u6jvgTPqfneNitVWvrRaPR5
	 Oj5oDv5A5hW58aLUYZ+JFax0vrYmXvcfQktVjR/GfDPAURqUgDqwEcsRfnTCGbOzlH
	 lcF0CX5ZQ74kTGit65N4ZUsiPYdgj0nAnuP08EYq3CGUdpHhwWCO1fHjiHZE8LbPS6
	 3uW5jzHLsn72z0gr1t2clVERX9vBGcURuS1+hY9uxd6XGO97rwIxmdt52wrIC4K/Oo
	 0/twAirm9q9GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E822C3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763139357.15051.13638219830760868585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5a1d4b606bd643281c542ee316f7f3562543362111eeaebf35a5ca2301231b
Date: Mon, 19 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747631393
