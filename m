Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35617143C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750483794; cv=none; b=WtVKoybpMiBVSjXDH/OUB8nSh2Xj/8U53kOxWleJylVgEdxGvQkhStGdvbBdEHpEU9aKss1BzUeLeLNna5/cc67sNH/hEYz8IAec++wvOxL/yCJ5fNs59SUqlWTX/gmHqatyvgSHWOoC9jgwx2Vs9dvsIjz9JYmRL44wdyslaAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750483794; c=relaxed/simple;
	bh=86ULBO2I+juHWwVD9N2xVYKFP6buoZIgzWOREhULupA=;
	h=To:Subject:From:Message-Id:Date; b=Ad2Uz0tqBbV6UX3OvUTAkppUVLdbwqEYDJXVkYHEmYqYRh4LDjpNMXvJ66Y2fbgeCOgh6sWmEHeRtDoEfCZf66NX7tqy0I09lKUsX79Ds/Ohk99TL4cntFdu8BkMea7ueJMLKKpo8DLnvMtm7COGhxSbUhKFdXYoRCT33g8/6Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTnGgpKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTnGgpKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D6AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750483793;
	bh=86ULBO2I+juHWwVD9N2xVYKFP6buoZIgzWOREhULupA=;
	h=To:Subject:From:Date:From;
	b=PTnGgpKtc/ZYz+TGZpbRGdqtZMHtRa0LQbim4SSgFXaR3Y5BGtQjbFxlSuMvazrta
	 GEqvFlRfQlYtNUwVVTJqBtdvAFOXu9VDc7t7rU92yliP1HpE2ZGg7HMoD3GtBzgOGK
	 zf+xrTDDzv8Qr/FDOIISy2CvSCZufO1/vzLmh6TmK4IYd9dHJ1LBB+OGX9zv8fN/De
	 Iy0vS9VhcTJz6qnp1iVxozVswbljQIsvZXdt58lTU7rW2vsiDNmzHShimTTwoN3CoO
	 q/Xsc8pZXoj9XSxvLQQr1H5d/dQsaQgk5R7KlrSdOx7KD5Gtx65UZ65UUQFrL6KF6e
	 IbbNrD8I6yhsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FFDC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048379357.24154.8790828730094708738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb0de5139a417b304096a48a22f277aef88e9d648b7146a0420a0506701f5cf
Date: Sat, 21 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750483793
