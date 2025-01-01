Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB192119
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735740954; cv=none; b=lr09qX34UkeC23B1TzP/+4CThwEtZx55tlxHrY8SZVOXUHzmFuFg7ckQEeS2lviAgVHSZSttAb7+vt2T2pZf6u+a/dyjE/UCnDjhxJuHOF+yt4u2U+/gDlvTMkZOPW71WVL2lBm8AsSUK7Qf0epGMaGqMz+/tchfSh9Cp5taACA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735740954; c=relaxed/simple;
	bh=JPGmYsS6vyKRlE5Ae58+Ts09epbZcyThDqAd5szD8Yc=;
	h=To:Subject:From:Message-Id:Date; b=Qb6XHD6WH86uLXjROM4WrXbE41P/LDIcwHRCLLyDyT+O0woAafEv3y7FOomFkJ/BFz7k8yCTiE7dJrQNaK+OIR0g5h2keRiBUhIgdnKpdyVZvDbkP5s6R49w6dCd0mQ9Q39d1kExrUCbR8vsSHXP2/q9JkvLosE8aoYmNlMLq1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRUBBJHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRUBBJHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62E8C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735740953;
	bh=JPGmYsS6vyKRlE5Ae58+Ts09epbZcyThDqAd5szD8Yc=;
	h=To:Subject:From:Date:From;
	b=oRUBBJHp/36C9XfUaM6njdwjLQwTz1ZgNBeUREHtLFTlZgFJIlngY1eNFBmC40hbn
	 PNXMWZHw8oY1IBAQMB+P0nsJJjJA1RjgWaRv62LsQdoo/r+e+Y2zvDIUM/wmspuQte
	 4AOsU//KUHMpp5B0zs+I6XPZ0SQxWvirhoy+dDybPoepSy82SPIn2IxJTYWQzcdma6
	 e3XXhUCcP6HG7ernjB1W04cpbhVbQMPadpkug5Vq2tC+C/barKpl42cOkm6N1vempE
	 7YhnRx+vINCi+hO877A/oEww6RJTKplJxAWGOm/sU3DRIbOtQUsAOdUJlv/8Zi6iZ1
	 VccW7laYb2NiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279AE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574095359.19137.13923737848896636509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69db703df27ea17fb838fa1cb84038652fc7edaeb50ed6ed4316bba9fba74152
Date: Wed, 01 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735740953
