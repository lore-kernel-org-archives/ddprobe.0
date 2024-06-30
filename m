Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30494A15
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719714263; cv=none; b=Gzv1rJKjtOE76zducTMUHnIxRb9cmtxfZf/mBQ4D3o+mmoRtrUlsf11U+njPiEtQH0fwz3wolrB8yqhqTJdUR0UysmDn8JLz6lhSm28gdcsjAKbTE/rrMBXBuXjXgzcL9jftUyPzgMzwXq2dRFrq/+NhrlUK0Gc5PEP9o9WGw7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719714263; c=relaxed/simple;
	bh=EurdyVDV6t4Y8tyzrb607RLAb8JqQBZ1GYr9VQoGMbA=;
	h=To:Subject:From:Message-Id:Date; b=LIMlPmwVCtm/MGqGbhos1KmeWA+zOQminm0rBA0aj8DybYR1ZCLdd820tL0dSs7/47hIxa89WZvU9lxoFmoZzh2X5jOQxVtrsad2w2p/vY5Am8LK41ydmDIafY3q71502FCG04nUB8KXzO4qLCYiPmUhqik2Y+IRzdFRY8rs+qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oC5y+D+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oC5y+D+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D386CC4AF09
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719714262;
	bh=EurdyVDV6t4Y8tyzrb607RLAb8JqQBZ1GYr9VQoGMbA=;
	h=To:Subject:From:Date:From;
	b=oC5y+D+1Y7tSzt20ECgpK2BBblLkZ3g4CRmZVyFST6WhkctwZyZ4iFXYyfuw4vTh3
	 3IPcE+ObuJUMRd4v17sbMb7kZ1whgUEdYIjJko89BXuQr0lq9o5ZII0e+3E2clTkLe
	 ValJpUJ+zwyJX1oedbpLq6WW9VTzBp7rh/2WVHxNfjzZ1OyEpaP6qsGXLAnZh2lhG9
	 SljTYDWrNsMRzF0FD0NKjtjYPwKXTqAUUtogGF35CaBGR0RtDk4LTJg/m6qOJTJHAG
	 hI85xHDOIozLLxjAdqRgC+RthpDvprg1MqMqysKfq1hcrHvKq8jvxLEBG0Ebi0ColO
	 EPlk7kNcIF/8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEE9C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971426276.1231.3008999504895255719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8fe0f48aa6d8bf0d42cb5bfb4d9d9b201efb5e601d029386ce7954274065930
Date: Sun, 30 Jun 2024 02:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719714262
