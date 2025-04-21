Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAEC26AD9
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745265594; cv=none; b=Ica66pEAoejyssjlDxtfGX2foApeHwaG7VqyywitG0AZ5uoHWH/mIxIoejgBmq9sTrhpuBm+7fxMzHMVL0bxCMSYQ+z5ngawjERIdH8Rvam2Zw7U7zOIwpMMkHhTYYd2CcC2wxCDiDMkwoh37FmJrItMODM0olFdUrpIUYTDnyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745265594; c=relaxed/simple;
	bh=aIo3p7t7fvtd24oz28ToCelTRxgN7jXgNd0CNpOWZjQ=;
	h=To:Subject:From:Message-Id:Date; b=lrYx1aSpeJCJVrPsiIBZJz2tyvamncHQ9502ZfxAyxu9dl+dNosMiK49ZiBwgDcbDaRK+4yRSw9qf/Tbud56dQBn3MqBM276VTW8sIHLN5LEKLOyAbXP5qPRw2mDQPjCXNCI8Q1/iqCcdaAb4VyewdzurNExJShDc3F+1iHKXDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoM5+A8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoM5+A8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8BDC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745265593;
	bh=aIo3p7t7fvtd24oz28ToCelTRxgN7jXgNd0CNpOWZjQ=;
	h=To:Subject:From:Date:From;
	b=AoM5+A8E2dmAaioBnoISN7NW3eI80RynkYFDwA/6hXL01q2h0nD5DYLSHEYdc+SHO
	 N1gleM6XGjqxhwG0Peg3XpfrKutNhytV9aI7+X21QCEuN/P4kEtNvmqWtZaRn1tQTs
	 Mn3ykEpDifH6rHTrymR5CxSsD5ngBU68+B+I3ctpwNfATPXBm9nbsBgZm8EibKLjxu
	 /PS02w6DG564DEzjC/0P2WVJeLCFmw2t5aSuuwIDX54LvFDzL1BQlxHP+dXjD8NAx7
	 Cm6k7EbOkHcFQtyw/LB+Z4XozuORm2a5OtUFdxS2GwjZ8LzTu9E7HceIjAx3Fopha8
	 7h3Dr/O5KWTaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960F2C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526559358.25383.3800798925996431747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a77b8f13da92494b2d21fa2a0e496e07f7f5338942202b4d2a720f5797d32f
Date: Mon, 21 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745265593
