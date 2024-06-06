Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E902114
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717646843; cv=none; b=X9EbdAVgPShu8HgRQO7lKqsqkGIGO604PVo68uMNOxRnLs4LA9Xs42KuS4+oBzlCngvdUUHSBmgvo+BqZWUlc5m9aKVmcf3u7ODGTdrOOHA+BiVsgk3EMSf3zKjsXv4xiZ8fYR0ytSqE+WfQ7S7rEbSQphL3+GKUY0POKrtzDDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717646843; c=relaxed/simple;
	bh=NLajwMAY3CeSmrHaBCIiXrT1gW6Y3pn+LG9jWaiPSWA=;
	h=To:Subject:From:Message-Id:Date; b=B9HUch++KxhkfG4cheslNSScFL7PMa73IbA8dHMXMEnnPJcSnFyvMyUXPIKnapQ7vy2Mgrc9Eidy7cwlWX/eocctUeQ0Yj9rE09JKDp6Fffww3k3qWig3W4k+uzao1/dNWOUXo4k8qDoeac5Y6qVeJnJqih6qioUY3uQFytCQ54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOTaJjqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOTaJjqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B5AC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717646842;
	bh=NLajwMAY3CeSmrHaBCIiXrT1gW6Y3pn+LG9jWaiPSWA=;
	h=To:Subject:From:Date:From;
	b=mOTaJjqfso33sn0la4EdaBLFfMlK/8fDlgaIUs2EujJeXknyGnyni8aXgqb0Qpjfv
	 gwhiy7Pqh+8kifctYNdUXbk9ikghls068hEvppr7xJySPeChlOn1Zc5QzxWsXtwMkt
	 uZ+DFOHWVmjDnbiwwp43xf34HZ0dDHfQgLrFK8s5f6XdYOhGzgguFVoWaAlPNxHiJC
	 5AA4YX/fhNBeNolmfB+669d9VFothaRi3bW9YSAdzzu26cRN8iCyzSI+GDS9DEf26p
	 2DQZPFb8dgucQoteeeyHTzLlKIDOyXhiOAt2xZJ0zqJtIa7ENMrKzz/SelVol8tUI/
	 JXK6jDQoOAOZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FF6C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764684278.23502.17475185768850486723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04929ab36caae296bf3645fab21e2a59977c9317cc509572f83ef2b824623374
Date: Thu, 06 Jun 2024 04:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717646842
