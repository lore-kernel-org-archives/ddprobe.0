Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E9828B7FE
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751302194; cv=none; b=hOrMngzbVVrWw/tb43UwJY1/GMczO2WhWdS9WOt2f4KquD81+Qw2lqp/W2oC8iBZWfp6cEdQT584/SP99fn6fZcZn+hhWCJzUDmQ1sE8gEWUpCOoId07yUglPA+w4cPbmewayAr2G14OxyWToD49oF0nPPSaCW18hR1mM4x61Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751302194; c=relaxed/simple;
	bh=vSl+T2wFw6EhGXYWCSu3c3RZml2K0w2P60DZaVrFIuQ=;
	h=To:Subject:From:Message-Id:Date; b=j8TwuJcmMTPCJFQTQq5xpD0pHyaVumj+IoX0AjxOuMX/mjeD0a9tkCKLHKoWCTToOJM6FkQn8/drtHXmZm2gwrdNky9Z2bAv/ksvjaT4crwVfAG7Cr7zti+ej9D49fkGLFy0FDyheKCs4ic3bmPMvpxgl/NA/HapZIuGRw/vyss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5yr5Gel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5yr5Gel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751302193;
	bh=vSl+T2wFw6EhGXYWCSu3c3RZml2K0w2P60DZaVrFIuQ=;
	h=To:Subject:From:Date:From;
	b=W5yr5Gel7wTuajN3mmpY/qxHCK3rcwaObGHam1vXyxYQ9OmkziPA49/EPwsYpjO/g
	 kmO3T3j++bLtVtp0ys6UrFJMyzDySHL29vDCiP7dfl2PW5l3cH++sszcmng7KAp4rH
	 /02aWqz2Pt0XKzlXy2XJqRiJCO5J4p3vJIsQqKno/xvVekV6j4qTr8kwNszO5U8oq/
	 DPnl2IyrHz6EsXABGaDJMwHi7w4WbNLzNpZdWwQDgtw2lftxYe9/gieMpL5SMqp8GO
	 KCOY9RuKuShoRQMTuOoaom7Q66vi4VLUNhObCr7ZnzGG/Tp9u7DTio8MRdwX88KRz7
	 41dpAAT6+63BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF0C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130219357.21903.7403563528257899017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef5be2d6591e3bc550fe514fb4ffa231e6d0c4995073119df7afe3f14e70409
Date: Mon, 30 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751302193
