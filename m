Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB743ECBE1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774353294; cv=none; b=g4NtNmxsfBRqWfF1VV/jT9Kb/amGZ9KCHRQZQ335qE440uzeF87SHLVmA1vgR5qngv088JMuvXSYwqxqtCshCsDe0d1wcEXTEIhOV6l5jymjl/MfCYbl9RqUp2IL4/cfoAaRGDHqi1OOA99ZhcrL+NDKO2mjXqcQDZv1kvFv6J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774353294; c=relaxed/simple;
	bh=HIJ25Wovh6FV1HIMJIpOD/lFYHBXYKGhsmPBfGEQRzM=;
	h=To:Subject:From:Message-Id:Date; b=dDN5OV072RVXWQ8Nwa9bj3FTw3Rvuy1HJOWssFRNwBu3uqkYYjfdmi4RbeNWj3NYpSlG6e2vGlGPe+o+mp44rvAr2lIxTHQoHKhZU5TsTYnwPxWxVYf5/xocYPzaBGU4pNP/GabKp8cJ1RaXUE0T39Yv7Mi6Bgoqg/YX366LJVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBj0Cm47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBj0Cm47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F554C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774353293;
	bh=HIJ25Wovh6FV1HIMJIpOD/lFYHBXYKGhsmPBfGEQRzM=;
	h=To:Subject:From:Date:From;
	b=DBj0Cm47w1SQ2Psjt1SWimW4qHtCb27WnERTW0ge7S4R/CzPjNn6LfU9IpqEu5lZf
	 l5f3YTScpIfWkdibZEecHTxuOCWqdCZtqZ5DzGqI4LmF0VGw6IPhD4W+GtOHKRhte7
	 NevG0WxJK4L7spKD/IbgEDUivh5jeHFnHrDo7e27CEaihBEDF7Wlff/5KXh3eaGOw0
	 IgUookJPIct5dVgXFzOxX/BSGR5foAMpd8lLbKOTWjVVUjfHqJEJEQegoMbUmuSxnN
	 O76H7IrCTK1IYDbMr9bLAanQ86DRhEbd8/ehqtilShjn04B7gkJxEr0F8DXf5oMs9Q
	 1WSGj1CPvo73w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91403E9A777
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435329358.27411.5383397100905376811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1496e8c1da97f85978f2db05a08b0f022d46c6a8f4ee4e15e0c222bace61155
Date: Tue, 24 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774353293
