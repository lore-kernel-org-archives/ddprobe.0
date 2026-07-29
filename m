Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EB1448B87
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785324634; cv=none; b=DbxzNLNTDn7F/rPfxD6XMWugXmtZ8YQIx2Ymf8CxVqE1ZQjirzqfUWpqvglzZSeb9dNMuRosnaAlgbYnWXluypiTjDN3UIeL1ZAFsnpGvvYa1oKgbe3t4yLQhfuDRW71B43R3S1Z4znSyjcpeOO4xC+cmJpRd6RdIGLd5n5MEB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785324634; c=relaxed/simple;
	bh=tWs7oHwCGyOCx+vJwhFT0E0NzpKaEznZYsrtk3MN58Y=;
	h=To:Subject:From:Message-Id:Date; b=AtEMg79Joj2OyDLgf2nf4gf8duSL4LSqyIGy0OqcImS5a21dkqoO2yqnQRVyhStziDTmbJoMigA36t334wmPnI2ZCtlJncdrInk2z+CnYcJnqiHzmz+2pqJoWXBLKnS1wPy3h4RpXu+9iZujg1gpJfq8SfB5Hj1y00Yns4MvF1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0jSInLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0jSInLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9A9C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785324633;
	bh=tWs7oHwCGyOCx+vJwhFT0E0NzpKaEznZYsrtk3MN58Y=;
	h=To:Subject:From:Date:From;
	b=r0jSInLQYsIXfKG7jFY0TpGw7F6cI8EGmAtSOKe2VIxYG0hqyBdSNJY8fNPiUCTEq
	 ECbMGCsct4jfslH/0JM4tK8zocC7QezdGomF8RYHe/sUO5jzFbv40Haw8vbOEwjE7D
	 WMRkzZwM2dcA5x6s00wX51pOdBoGhmBlzXIxxDhMqqCj4wr9Jh9CRe6IeqHBdtBJdp
	 solspRtpzEu791ryiC1/grSwfDoyf9QY7R0T84LS/qci8sABpEFI6eCNaAQFmyl8MB
	 1UT/wN+iqDGXUBx2g60XJAKp5es0JVV4UNr21/lXPvy76i4rYiHJERYho/jynQs5zY
	 joFQqhp5Xrx3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A9C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532463368.27852.11452497111562021194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511ca379f3f837af78fa90b1f75d58e0ef2a511c78085e19ac6f66411d672f3f
Date: Wed, 29 Jul 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785324633
