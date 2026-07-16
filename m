Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF64432E66
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784220515; cv=none; b=lmk5EaWIqC40bFblKw6DHA3c42VCbTjrTgPBtxUCRPoorOankfjNmhjgtLGNSlLF5ZbxhXXiBOwYdO3XIynPrCIbI5hGNcwC8RWKlW1sna4ehKqG1iQd8iY2OXFFxcMlH84pNOuvhhHDf7Xof4mT2k3NSXzndFMW+XqljtoRuG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784220515; c=relaxed/simple;
	bh=Yj5vgIDCNqYeU91uQX2+L8YB0vZb7Xhr8ucKoyW9Z8Q=;
	h=To:Subject:From:Message-Id:Date; b=S38FdK2etoKcfotNc7QmF2iTdk3Em5d0VIgxAZR7kjYXuNNCz70wDW0McrsQFPSD3nHJ6kkkRfzcTywbnrN87C0jIAINg2aMn4jw6qbArUGr8EYfDOKF1wPVDnKHHIDMfraCOeZF2V01k1/TlzeinfIm4RQtYIDNyVriS0ZMWHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvYHkYG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvYHkYG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71C3C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784220513;
	bh=Yj5vgIDCNqYeU91uQX2+L8YB0vZb7Xhr8ucKoyW9Z8Q=;
	h=To:Subject:From:Date:From;
	b=jvYHkYG5z5N26O7m1NTRU0hxhXKeEd9hWu7+g4ZvwvWSBgzatobuOjvHs/K/Ywjpn
	 S44d7lJUwbxz3JsmWaPR4D/7ulGxSQvveGcEL4nwP6bu73zM+pUY2ic8NWTHCe2Jzg
	 gT9YZ+ZsjEKjc2NN2uy3fRWd+phWg5XTUe0BEDrLleo64sXscLQYDXgKKsLZWmxR9S
	 /lto7YlsoD3K9ymruQxi2UDJDp5PD3Bmv4zDrWi7ycsMWn+Ohwt5GoXk8URktey9HC
	 dOtIj2z6qWoL6AG65VYwa+qMLpan8Jb1nDbwpiOA1EIyGjhWt3SaIqVeaIe6CHJUUP
	 +liac0beYNgXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A816AC44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422051368.8653.11803294159860003869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b70330fc6306245bd3d52e07da91440c41b532f09fe243e62e2e5a5c7a0e127
Date: Thu, 16 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784220513
