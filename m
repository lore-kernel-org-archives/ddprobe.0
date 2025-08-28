Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4B3B676
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756348194; cv=none; b=NOjyxrV0K6vCzs4relYT7ubyfWXLQKQ8K99y8lDUfumwbQv1LK5Ia5fNWHPWR/MmPDN1698Tm9MDTRqK2gdEaS7ilrHliwb78ipgVLwwmmtJQRinW501Si4Q69YXbOnuNQz/AkIndfzBf5IOShc/Nu+6bONjq5+uaxxy3IUT1PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756348194; c=relaxed/simple;
	bh=G75rx8CBSO4i9N9jDmgsDi1tyZyRqpTFfyGVuE7h1bQ=;
	h=To:Subject:From:Message-Id:Date; b=D5dUMz2yCeDsgRBg0Yps9XbNDYvbmmMjTaMJTbN/PlO+2v07Kb4yGbkHB6SMv3tztFCQ/EvzKU37iy7s+KQtJy9kofrB55pWKCulDwWEP6oZn+dk3XpvvhG5C5/lLC3y22vf1EwIdpNM63PxmLmN1cEaTGMSSoR3NIcWyq+VWbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoV4qrSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoV4qrSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64A7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756348193;
	bh=G75rx8CBSO4i9N9jDmgsDi1tyZyRqpTFfyGVuE7h1bQ=;
	h=To:Subject:From:Date:From;
	b=MoV4qrSdIJ0goOI0qqBLXOvEHVH4/OnO7pHuwHdMcbs3R4n5BjwFO800Djxpt1XAP
	 oB75IuvPjdkr5vx4eM6FtVVRosxMAa1qaZmeqRMkNgvGDd4joGI2EJbEjlYAfQ0fgh
	 NjxYhMLcR3vWaVhSrpO1YPuWw9kLfhYV0MYhX+P32uyca+rJRoQSfebmCJEmaOGNQp
	 noKHQaMx6IlTLw18Sq+L0dld2JlA1GdwBZsWmmJg3hZKuPKtFNtraRdTf88hIirYde
	 F8KASM0SkgtDWN1c1cZgpVyGjlOTbxW3gKs6te4uN8hkn1c9YP6lgViyZMIiRtwZz2
	 iCeogKuGOH0GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BD4CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634819358.25587.18373726232176714075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30769bbcade7dd28a78b3a8bd9148c2d99c4a2b74b2c0200b952e2ee2dafb3f
Date: Thu, 28 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756348193
