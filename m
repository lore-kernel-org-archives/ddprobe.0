Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2791328506C
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777514254; cv=none; b=JAB1O+9vPmNk0Iq4rwVYL9w8wDihBo+ZifvzG3P6dyLjKgugBQNzGVoJBuQK3yADbHMr3pzFtyVD1ztiHelO9Sw8pOfB1PiVmgYttS32F9hedjsSYmZZd8LB0rFQtG1X/xmE/R54DB7ifItDChPBgf+L55z2T6+3WtMWuhCN6G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777514254; c=relaxed/simple;
	bh=7tKGyfVmDBMztBXStaJdaqiUsdTS+ApAyGaQINNqdhc=;
	h=To:Subject:From:Message-Id:Date; b=gwvGQZl8QIJam0l7P5JZhMUFIa3/z664ryxkiOmIMqawqGopt6+vZNstY+k3gfb/Ll/hxOQG1NaY/wcpx+trKjPj6WbsuKlHKLTzuBCf92wAIY4b15ymkI77r0Q7CEsEU4gj4z4ngSKQ0/BFiSozfSaqPiQrqlFoRw5wC1pZDr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6uH6FZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6uH6FZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D6CC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777514253;
	bh=7tKGyfVmDBMztBXStaJdaqiUsdTS+ApAyGaQINNqdhc=;
	h=To:Subject:From:Date:From;
	b=i6uH6FZ5Y7WPE2KlbUrhBh/du2k4N/4uBJ8plFKBCXmHc4iS2rTN3f+fRKU/X1bvX
	 Aelu6YvWgUPDp9sTZW3apdBSwQ8jb7kTcpmefLZaH/bBikiAqbNTo/H1AAEqI7UbcH
	 CGqs42CQfvoL6ZhEjoe9yzg2tb1ZcITqQlqqiE1G0/SLmmaWlqBwjjNxoLdRDwdkkP
	 eHAOjXUGTY6bkzum73Iv/D9e6pYUAjeUzXdjLKHve4pU2P2vROeGsqczg2957jD+8G
	 +J6aLX+Hltrgb+F5rfga95n0gSojwT1WPGPnXvNE8ZYWXaOxwlB2iDnSm960vnCMRC
	 vAVDzmNfmvErA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B0BFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751425368.756.13747181305653259235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb269ed2d65afe5af74f4a5f7d6b8697994ef5d18016e7ffb73059fa1cbf9b67
Date: Thu, 30 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777514253
