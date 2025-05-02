Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4435F22A4F1
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746175794; cv=none; b=IBDFK64AKjB9PnqZWbQdee32NVhbCox+qfCvbxiDVEqmpRUNo3Gcg5UPivDGdryljWagxmwD1K7YObAxV0f10zgjD/PvBWIpejCpVvud4JCqMXU1OfZpbUVTE87jRhAhpsqTxn+nmIp59HU9Ug9UrXjeX/VLvSSV10uehLuI5Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746175794; c=relaxed/simple;
	bh=r5w6F2bTXWvpmkdvZaowWAwmbciWglJXSCaPmaLREFs=;
	h=To:Subject:From:Message-Id:Date; b=jpWl+DH4QnqSvvFUcfLlSCJpplVQVnuY/anIJ2jWDPAUWv5ACZcYTnjYY8ozlC3ip5Kb+lK7iBNsIDG3nmEWuGv6n/MeM/7ia9R/H5mSsEXr7YcVvAcK6a9twUflnR7hO1dHYVk5F7mn5Xm9Ft/FHoMEHEwK2Q/M3qHxjBn2TaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKlvMSmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKlvMSmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D78BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746175793;
	bh=r5w6F2bTXWvpmkdvZaowWAwmbciWglJXSCaPmaLREFs=;
	h=To:Subject:From:Date:From;
	b=nKlvMSmUtBdyYn/FD9aNTCVg7lH5XOt70LFrHAicm0k0V+Opo/xmgDyDxkCzwpiHC
	 Crd1HlSQPDYQ20EyohqI5uZim2w0Zv+N0vlsp+p3a8Ng6ii5WpFYdm2WvdIBUC2PvC
	 8brM8QSRAjUuHs3rWJdb8CRk0xdOEX2pxk0UaBg1NeB2tNLn5TlyK6swKF3Ee5qe93
	 50KeNCiQpVs+hvbOwMYe86AHH4OjUkXnrOzbXlOBslPg/CHq2T8zpUol130QUcAE0J
	 5HthNnC7Uhw50EuBdEC9sIdulwSpIVetY+8JEYkcAehV7tTgr0zBuvzHMhMubJQGts
	 lFI1/sZ7lqzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E363C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617579357.341.15480532457675596887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27da32a6f6dde1299625d643bc2b83d9d5295202d10ac9992ed5205e413b726e
Date: Fri, 02 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746175793
