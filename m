Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A9F22FF4C
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746748194; cv=none; b=d85wIonok9UgAdHVM95CjFWw++03+mpwvC0Sobk2xsAoDbIpjT+M3v38MIY1B+rh+7/gbb+VbNjAZQqZfeJsQ9XeIO7QmNUXIKzb/ugl43FBqOncv+E98Ug7w6h695s96AU9hqGjMtw33PcorSsCrkWF39+bIwSmbAabw4hjEwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746748194; c=relaxed/simple;
	bh=GIUGxemTxisEZ8DpzCkbBTnRCb13mILAeQQ9bmqyfgs=;
	h=To:Subject:From:Message-Id:Date; b=VIaXHmP0GNfBuoTN68gR5dtLJcn3vnkzGmDJAoaBUKCMI+OuV/4s6bMzq+q8JKUpilSKuaa1cRCA/4UKlPsxrlfXX7pEbWo1GuadgFyKz1tmnwLlYQL1mOf9Wm3yKQD/qosmF5Ew+rC6aOs+FTYLjucn/ZtbRmsQjRc+4OJEMFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqEczVZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqEczVZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A505BC4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746748193;
	bh=GIUGxemTxisEZ8DpzCkbBTnRCb13mILAeQQ9bmqyfgs=;
	h=To:Subject:From:Date:From;
	b=pqEczVZT72AoBx2K+zKeUIPngYFdlsFcPefeREEgc9DhysBtpZnf7JKomlur3shKv
	 SxXOxFGDrhgpzX5Fp8W4oQC7JMY35LwRnIbpLxxPDmz0hFKTeZiAbnbw0NGtycMODX
	 oMZ5iePhH65YZl1BhrxQ4N3Dt4TY44nLPl/hS76Cvqow0tuN/yFRyszzvfYVW28w23
	 Bi5xDC0lNpNiSKySKGeBKqNngAOicU3hL/1YDRvYlQY1dz3flj+XBuDMfRzJWn1olb
	 VRVmCiRaMSqrUwnpencut4EudyGBrx5QuFMAPfbogwgg6lnlY8fKrxuL22pmqo6fr5
	 ICDEoYGm13BCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C8AC3ABC5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674819358.6554.8074535081092455440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dbb93eedb658ef13e75f92e96385bab40ea7fffbfbd526576923518ec10e77d
Date: Thu, 08 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746748193
