Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B6363B9
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749342594; cv=none; b=ul0l3XjTiSrJqAQ1fkQ90HPTgg1T/MQf2gsz17LFXELEtBP+g6YGo3wyFJVQeDu+LaJBlHYc/ZRRlOY56DDNnRAog3lELvd5Y0zlm0L0j+4+xhLvP59QH88UIj0r3Sv1ZTJWlGY6vYzhTad+sAZ5rCtmg6tvjIy5W1KTuKOdDN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749342594; c=relaxed/simple;
	bh=lcZDi+IX9nidQ2+atK4XrQDWALzCkqKUww8tHlcA4Yk=;
	h=To:Subject:From:Message-Id:Date; b=T9VjHr+WNf4W2/lh1Pwz0W+IzY818SRI7k0FfcxwcauMXQR0T1ySPR2DvyLFmcmPK8LVBV+fGR1A8hLYd5MydpIXWd7w8qOtHDd7PQECHHUQdtsFl/SnbOrGBW3iVBCsjJw+TSJoAirZUuw0NCVo2+oo7iY5CTrCurVdkNAzE8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0F9SaXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0F9SaXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A221BC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749342593;
	bh=lcZDi+IX9nidQ2+atK4XrQDWALzCkqKUww8tHlcA4Yk=;
	h=To:Subject:From:Date:From;
	b=K0F9SaXgLlfUWJUpdhLTx3Y5j9liVvz6v3qmHdcQyyxfTlLTbU8vZ6jgRvDqZoJoC
	 TVBy9iMavVkkrYLXGYEHBNmFkbv9lb4Skt+lRtAjmoOuVTlnMcmwTLVXDvEmMC3QSq
	 Bo4Qh7MtJDxm727abKl3QzcNkr+5Yroz/Fb6pAE8Xu3bZQmKGEzJa6JUex4yD3OjdF
	 rHdlKFwpczrmfLxaSLTxrzPsP67cyaWzNkL5BjJPWmwWHAU4BXFGDedeMM+uGCp/P8
	 +TM9zGiSLRmYw9FQsgRBzUgxfX1CMvwD67eJmdBKoYOSwiS0jVRiOxcBszkTDGpDS7
	 vZSVPPlwN5gLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9113EC5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934259357.22025.7566578195967153912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a4ec407e864e0e1bed279e1249c1140a62b9ebc49b7ebb910ab318b7c243b6
Date: Sun, 08 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749342593
