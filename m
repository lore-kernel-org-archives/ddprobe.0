Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3434117548
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749011994; cv=none; b=oS656nuF5lwqSuRFdSJ7fjMPZxCFZxUzI8uEF3XizAAzZ5+DzKj/9b/RGNRnu+oy7Mih4DcxJvKBGY44dRQiFd43CqatgZKN8IM1xN28MUOMKXPN+/1IPmP35vmsf2QSxPEGlrZJAm0fH91xCt5dg686KHn1MAGYbHyK8+xS0TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749011994; c=relaxed/simple;
	bh=ErrtwdYu2e6BoutkcQrrbbruAbND7krYkMIDeATlBPI=;
	h=To:Subject:From:Message-Id:Date; b=XLgv0wKDBscOud1/zCCfgfkKMZC9yTi8goBmDIhdyf+xTAOlJ6p46r1lNVFlmPL82EDDm73mebTCmq4VwTS1AIY9/XEaFF0thgwXcSbfLnLh2Yrd64CGptfODFk/K3sD3YMPQng+02ZV/kWW2ONgkPL9o+MUl6KJsyMMuv7fy5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0i40qj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0i40qj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFA1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749011993;
	bh=ErrtwdYu2e6BoutkcQrrbbruAbND7krYkMIDeATlBPI=;
	h=To:Subject:From:Date:From;
	b=L0i40qj122RXR/jpo0RYpvvikm8j0ws/1HFzs4KyVjxM6jn05r/9yT3JrZKFBja+g
	 xTa5vREtJTNNq7lqNJ6V1jIWalgmqnU0D8gN3RmvbcW0Xn1tTY547Esul2vXJQiY6C
	 YOBPP3wVmXRdUKLJ6g8bmT4fsh5zdp7ZJutJx5idEXt/dLFpZU5katwmCQkQAxFA8U
	 Amg9Vd2Djltf0+1np3QrFVmBeHTGaMk3rBMdFR+ZomZIDVCEKFM315/PzXT3vmD8in
	 j/6gNcDnFtOOIcVTuLyEzAZoXFD76JDXHysnH1Yu4IiSGAUDs3e7n0CMO3kAQ9a7bp
	 atxHf1nS8Z05w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B21C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901199358.16165.6246504152772921251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86bf69fdcc50dde9530afdb71b0fbabf5bc1f0c7f0b16d6313a26a539ec19385
Date: Wed, 04 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749011993
