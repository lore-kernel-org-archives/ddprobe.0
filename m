Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C952DB7A7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770888894; cv=none; b=ivvzVzgyt+5cKj44tNWwltFTA9NRPCEfV/AtJynWCouZOoIzSekQDPbiWVOClQ/aoqL+zo3HevCEmNP/sJMTe4fYk4JKRCkIW80CbN3wWmLVIdiQJtHoQdCcots23OZ8JsAWS0UReKjxcb6bezmnJJ1b2Mi7mOeWDiLfOATq4f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770888894; c=relaxed/simple;
	bh=Eg1oNVGeXoHvX0MSTz4KgJveoG44oiTLmyTQsy3Kn1E=;
	h=To:Subject:From:Message-Id:Date; b=b7gyv+7Wlji8TVfLi5YYE+zV1j7Fk8u64A23jLw+jb/GfjdzHPqVSfexhjWkHysnMCbIVXx77NsBF91eYMgUYEZfI/jxMO4nuMPgN/QubiMCzBnZBIzuX4xFpLtLeso7tadyna+GTZT6sF3yS5JuglOVGCyqVA5nyTIFcSz4H9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyVOsh9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyVOsh9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44CAC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770888893;
	bh=Eg1oNVGeXoHvX0MSTz4KgJveoG44oiTLmyTQsy3Kn1E=;
	h=To:Subject:From:Date:From;
	b=uyVOsh9hDSDJ+ZROGztrLLdr2Hi4EGuacAQR0soWyDh4cFzq5Wu0YXUIxu5NxyBJF
	 zbn8AIfvevtVdd++O485sj7yqikf562rhVjdU9AAfha5b0pFeqlIin7ZMRUZfENBFq
	 c64rXRcchNdO0z022n2znwWqF4BqIBUed4+SL7FQM0TkCdIc5IXg3I7Bqru0UtErv2
	 9LjmVnjRMENXNbXgM+YDaB4hxSYY/FvGYU+M6ofSEJgcGU0MSPc3PRdgYevKWtnwhR
	 n4lZoJRPW92GFpKHlh5WFKlyvwKz71uxC/WOjUNNm1Imd7IjaagoifkMg2Ilpwfl33
	 WxIARLF4Wat4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2BDEB48EC
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088889362.2696.15376560357428763752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98ab089a5995c6bd0bfb33f478de1f1f3213d77229336af9fe2ea21958e102f
Date: Thu, 12 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770888893
