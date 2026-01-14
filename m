Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC845346AE1
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768365835; cv=none; b=QdNpWq2/LQUQC7TzDFMbgz3xxgTCxfoMXY1x4kOV6EffCcOjQS7TfYl5BkGSXM1uibZ/1zZQHegJcuYllMVYvkmSjV7OgaocREVcaKX7ZXeixuiug+ln7xDI0Nu5yryuuw4r5HbofA+gjXmqExg7yyv43liv47T9nYgDvYKnZsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768365835; c=relaxed/simple;
	bh=Ejg6kxAxWRlExM2bgriwDgib7udZpaY11KiQcH9qiIM=;
	h=To:Subject:From:Message-Id:Date; b=Iz1WTCmFWF35uFYWZEmJn44uK07wzo1MOHI2wcuBoIa/lhl0IvFCqzgQaoua5tKk4ue5ng90Z/e2Y0rvu1hvRET+nYijy7Gm/BCU16EURkyqURNj2JeWCK1YLhJcUrCEarpxzfAGz4bNPSYT1M3bEpugpMwX4Fvj3M5V2ftkkko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUFxMNdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUFxMNdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC52C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768365833;
	bh=Ejg6kxAxWRlExM2bgriwDgib7udZpaY11KiQcH9qiIM=;
	h=To:Subject:From:Date:From;
	b=pUFxMNdq611l484vYA3096IHZHcivs55QQbidgSE+9aX3eJLQLzrHvXJySyMT6zv8
	 LIH6UHnLFzQnGOb2UgofezF89Q0NGVFzKrnqXjWoYqwm6lb7V5ePTBjKFS8CdD5koO
	 p3o3xG3DFA3l1eoAJLSa6NvVPPVkZKIVclphUBPHgsdoW7D7g5hEzWrvFT1z80zay2
	 el1dty5Ds5lTnajSljsT4HmWGee+KE9ANU/CejvEhTUaNJvMRo8oJXA7mdtv6vaDfu
	 AJ62Mms4TDaZNAZLAHlv6nb2p58em6mifU+PTOMNxc1wmHpw1juENectGwFbCtI9WS
	 2bkS4X/lHK3oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B6D31A0C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836583357.5917.6387664391431739202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5761e698543a8ac992dca60291b594faa00c409cdf820ecd34773e659edea3cf
Date: Wed, 14 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768365833
