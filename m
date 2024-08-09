Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423E51D551
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 20:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723233955; cv=none; b=nWDgBu3460XkXYdldNYZug9MeOOIW6q2amaKeDwsxoTBAuzOfY/i/8qLJsdo5mifvtsM0/74Oyhv0DrfM4yTClzWjATnfUcV8yMXP3R6zUL+m/0IHU1vwsXOWo6nM6bx6wBEOtmV1zpv7iQgODKbmBEf3quZfxe8QyIekcK0k1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723233955; c=relaxed/simple;
	bh=KMCugHlSIqPb78H8roa14/Kmc/pNgIcGio4cBfUvr+k=;
	h=To:Subject:From:Message-Id:Date; b=UyaDPhEmOb1PIvC1Pnsc50nvkH1gAL7/pHn+CMaCe77TnZt0Q4oY2wMTPoDtid4SPhLShxa2drn5b2tXIBli7eszoVtNu7ra17ZiGKtn69AdiqwmPn4iIo2MWsCFuWqAsDzCUPNMmJY0eutzrQpe7FUifn+me3Ib3uhTU1OCYxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/P4IhY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/P4IhY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56B9C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723233954;
	bh=KMCugHlSIqPb78H8roa14/Kmc/pNgIcGio4cBfUvr+k=;
	h=To:Subject:From:Date:From;
	b=c/P4IhY8Tm3f8WBcFNL9N4nql1uJGlDjMAv5kbJEeUx+eY8jcnVjejv+mNd16IuuV
	 y8wHZSIUJnQc6LpCyPz867wrrXEvvu5lW/cCZ+zDgfXTRV2PcgMMYLv7QTWT5Bism8
	 OjMYWieoyFd0rxLRKSR4abWpqI6hDNVgtSYknzDNbdJ+AhHiE6lCenPH9fStLlpBDw
	 aS4P3Df9tDCWcRbjBKbyWRjUCH5OS7xX8ED2CYt7yHJ7hjznvAl7v7Z56wiV3Xlaob
	 h6kIE9OAJ5mjv+b6/G5Jnc7tZrBWDRzoxTdNc++I2NKE4gaNGmbDUJZ4PfQyDshWEK
	 VUdWVamzzwoVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97970C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172323395360.3522.9654335777040549877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351bc7a85cf59754b3b7576787411e514cfb543dc57245916df06c0971f78374
Date: Fri, 09 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723233953
