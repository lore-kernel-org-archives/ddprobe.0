Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B77CC2FB
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737395754; cv=none; b=PNbr+Swhlbvsm0Lfc5HIs3O20N/0uEXFJ3z6AIIxp982JBdpO4gTIPqd/3lm2k1wWETdPb/Sq91/E7oXpqvT7sSj0OIeusc4+StRTCTnqPtElhgY2NgpUgZjupqI93FX8XoFi0181QNXXpdie+dGHaucXzX5TVNzKGbHQGwmOkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737395754; c=relaxed/simple;
	bh=OYBBBdUBw9x5r04vDn1IP/vkcB12Q+st6ykPDBhkpvU=;
	h=To:Subject:From:Message-Id:Date; b=suTJQegfjisLbgTuyonfZOx8RxnucjNSjjm/FsK4/D/bOSE7ra6b62tMC8VFmfrk3Z/Rp7UqJj8Biy8oY/dZYtf1w+KJ/m1pVLXcSuf17ce5m+3fAsUlU/FCYQ3nb/FfRD6zx10ogOf7bAoO7u46WFmMUGW4efucVEGmuJbdmSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OM3H6ChJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OM3H6ChJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DC1C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737395753;
	bh=OYBBBdUBw9x5r04vDn1IP/vkcB12Q+st6ykPDBhkpvU=;
	h=To:Subject:From:Date:From;
	b=OM3H6ChJ0Pd5fOPJVI0WOsHcikmu8rm/X1/utLX6q9tcc232lSi3W8DFoZTareIyf
	 sJpR57kjb7oUIdj2aCywka9VV5q1TUsR3Xq5vS43ScDmBDg53nhcTIgSfelF3UBR+b
	 zTEH9c5xixb8lYxLz1ExfYT++1pkYbzBwr4ceHBdVkVMfwP2dLrjDqYJW8gvYSnEV/
	 GAwAhUYmiOIwyI26RjGLbwiIDJgDo+uXpaXtckLsNN+V4tDf5XrGWIbbK+Kxg+XDxu
	 0mcRSIe8EU/2ZhQhI9KtMEvnSAq5Wvj5PKO+XK8gBNnBDO9wnSGofqfbx1cpjaxa4F
	 rcihTj49kC4Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AA7C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739575358.32072.11534601121478767397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c986c96c97163e6e8d873bba6547f9291edcf9e0fae97ac9230b7cc84bc6e361
Date: Mon, 20 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737395753
