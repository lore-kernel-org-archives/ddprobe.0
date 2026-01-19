Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE5728151C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768844034; cv=none; b=I12leQbSEjBZ2TtXvXMhmGiOGg0q2r1OLIf3EkgqhkokdCy06/TBfVtu1rOcHPdEOLlGgD4jS85SEKwMPADZQAFeyNi4lROeE++fqEs7GnlBiu4LmO4M4cd77bQ9JYGT84GhsThJf80nG6bSkhR+3NeWvgL8Neg3Xjxmhj8t+gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768844034; c=relaxed/simple;
	bh=S5SuhCjfazQnSTx48JpGd/3Dd60203kymgs2U7k2PXE=;
	h=To:Subject:From:Message-Id:Date; b=ScIS5ZerOz9AZqBnMSTNNPxi5jc0X+3r5fOyjkD5kASW+rjXWdN+yZozSzMkcGqeKNJA6VMJYA31JvxMZNVC0hm8uAi2ubJfemW7KTftW+/+Q/9WDhtFcrkI+YJeWq/pqA9n+177otvaKp4JsufEv/wwMpE1z70nBIy74AzxSMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EehCzeq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EehCzeq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF11C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768844033;
	bh=S5SuhCjfazQnSTx48JpGd/3Dd60203kymgs2U7k2PXE=;
	h=To:Subject:From:Date:From;
	b=EehCzeq8vbzIxFzrWchYmCtJ6kP+Pmf6zWpCoH43/vicMSMhk/q3h8jpgmafM7aVM
	 W+NildD0y5Mlk148cAgVyafWOR7l1iT1mLOjTMwUP6CsWQ00jtEWl07shD8G44AhyC
	 WncAH+Y1oMSNPnlGiGepY5vnU54jI5WZLQoowiwmbXgrWfY37Sy5uEZdZP7breW15/
	 bRKoV9qvOczlWxpghdio2HU2URQoE3gLdErdiKwyw+yDr5R9a8UA/Ri3E0uCaAoOtY
	 Kdg8m5cIpr7bnT+jUWjfKdLP9RT4Dhe85iC6Y+fvZq57ewVprhRo1GZ0aS7KlmjjTV
	 vOsWUMQgB4tfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDDDD29C52
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884403357.1847.18334797799146485702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72d2f72e7907252e60550a5926eebdc044d85b1f2cd6b62020ce59d81c078bc
Date: Mon, 19 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768844033
