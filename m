Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBB826A0B9
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774499694; cv=none; b=oy3PILKSsAPzu6TWJsxIv3AC2p9x3wGqcU36+MZ2YVbyn+nVHLgnm2csWGURlnoUgV/gvydev4IBZIEK2VzbukAfNmB80bM/ewYrFI5sNdbodYll6HcoRiEuXjzXa2wLHe89w9JALhqiILkbkeX+6bs5e5tsa7ZiLOdBlyUE9Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774499694; c=relaxed/simple;
	bh=g1ZvDWiKI2eVka92KIDTeU5s7Qow4k2/LlMBPjxitKc=;
	h=To:Subject:From:Message-Id:Date; b=RMtYCq3nASpOU/TP9LukRoIAyE1kVJYYWj+xpoqY60dQSbDZkWUXTOGOc2f4o860aDdcUkslepy2kZuvfjBNaxkDU9HIfKwgw8wwKDCNWaIkqcMSs1GNkPgIwyo0PaUiq2i/0QT9DUhHbTyWwaRK4uRt0LndH+4RxpjDbWsF7P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nq55dbdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nq55dbdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93EBC19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774499693;
	bh=g1ZvDWiKI2eVka92KIDTeU5s7Qow4k2/LlMBPjxitKc=;
	h=To:Subject:From:Date:From;
	b=nq55dbdiAPSVL/C9C5PDsdPYL2R4VenDs4/ZQaf1KfUaderxYrmNAJ0CsAvgyxQ5Z
	 LnaO+JDbzNs92Ip857UwWRzOz7vIKXtVjqFO5cUUCmoIsUOdk5FViXCm8V6/OKr0z2
	 +II5rY6u8MD0h3OAb3zy/stFDKFxs+zm+mkWxAUJ+HLDOMy4/rPWUBa8cTjNbEDQ5q
	 omqkLi9Li2TUVGexTE5ReK3iXZ0FOkN5/fbbdNhvSmzxHNR5c9raLot3lUWEPCLrSp
	 cKclTur14WKl9J/ZhV5Klp1po8UCg0539igRUiAJN4+alnZ0G14hCOHSTlLT+SB6qW
	 jCgSFGBSwP8mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C74109E549
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449969359.6307.3915835461716006340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a251e1f815ff74fc803f3f9c82b8becd62f70c6aa3100f9979611e08215f0bb
Date: Thu, 26 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774499693
