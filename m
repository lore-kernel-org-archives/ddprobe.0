Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212FC26D4CE
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750700994; cv=none; b=dku9jfyfHU5g2Orr+NhaksjYXeayJDowmWbjdXy9iJzFRw4ZF1W8MeD94HSjO4F1/jkkOWUYEXbHliHfr9g17W9JtEQsMjn0CwFIDXBwG4Rxwka8ZXKq9WIPBLZGrG+0Hy46ux8YRtFKRx9g1706f5pPPJZOzxnaqK8VbQuJIfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750700994; c=relaxed/simple;
	bh=qonJcP6MpB+SrbGIJFzLOUH3gws5RuOhdxIODsuOi40=;
	h=To:Subject:From:Message-Id:Date; b=DCMkU1chreRSVQ63jLPwG94b6FUwjwIwXOP9cGHhyqfI6KTYynm5L9+gq1Nw8Wm9fo0M1D1jCXw6oGEdDhGZTRKvkvSyGazp+X7Ff43YswevEWRyOFy9Pjdma60rNrGtzOmAQwIzEXU0NBzHbTri9WMTORGKjS43y61P/B8HUfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIIIkIGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIIIkIGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1284C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750700993;
	bh=qonJcP6MpB+SrbGIJFzLOUH3gws5RuOhdxIODsuOi40=;
	h=To:Subject:From:Date:From;
	b=aIIIkIGCyluaubDYlLYFx7v1Ads9XBihNGnOgGQgMn/xB8WwSupDy6jNhV9QksPcb
	 Dv45HK211N3waiaSpaS7l43Ibpy6+tJiioO3aDDvnpLwVC8SS3nmw5eNHmeTeA+Vuj
	 61o1CCUUV38iHrRWIU+Oh5Q+CNAikeUVsuqDwuZtUOLy2RYbqnVrmLusYGQCsLQayL
	 ex/mTrYyysK4Uo9FWSdM+DdDkHSeNsp/4TNwMFsfjq66UCZgpVuJKHoiCB8dA6w776
	 HeVw3BWh1t7Hjd8BBzDknDXq73cp+xjGU5RRg/tfrbgNRuJjLTyNN0/treuScabt1n
	 HcrAeK0k/Ik/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC90C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070099357.27965.13809827935676654688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ac5945d60d42da6b063365fe2dfd776f83951d80f6681e09613a429867ec1a
Date: Mon, 23 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750700993
