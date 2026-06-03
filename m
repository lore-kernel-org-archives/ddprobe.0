Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C5B30B53A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780502074; cv=none; b=EqUkzhPXVwuXb87amwdq5E6AXxksXhLAfNjRdHfKEKk2zUm1O1mHg7YkfkpkR+1Yor9iOJ0DS/V6If+lLVXg+i0HicuLjQWJnVNKl4S9Yiy6vrSLAq5xYBjZ+p693SXc6+Ud+cPP1sSsecgR9DWfwcETZqaVGKnv1X4KeSzPm8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780502074; c=relaxed/simple;
	bh=JNJJTxL8nuKDuBWV1W9PX/VvnQ6hohG0cFsWJLi/XAY=;
	h=To:Subject:From:Message-Id:Date; b=utgSgB/zFrojMdp35ILWV86ixWjNJdQrEkK8v5TeWvF7gmkIfKBjweu6WiQ36TXrP95K9MQL+WJyZu80GbezCcCUxzf/nJRBYAlhvCC9LGyJRtf7kDDbZBm8lJf+JE1UU78UMA97vvS5dfsLzY84QeTbEPKBxTDiq2L+B/UphY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KV7IHMLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KV7IHMLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A15C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780502073;
	bh=JNJJTxL8nuKDuBWV1W9PX/VvnQ6hohG0cFsWJLi/XAY=;
	h=To:Subject:From:Date:From;
	b=KV7IHMLwRumjASGST6s2iOS/7GYU65wHDufMoyfB0sKA+gxFvVwsx9yujdoQkBRl+
	 BkrWK8Bx4xKmJJJhLyD7lCvFrH0g9giavBdjh4jecOb3O2aHvmOjeVR8rLjI2yx9vD
	 kJ/byC856nLUFM/n2dZLAYN7mUSxa9N4kX1lAwvaaZ8WgfzKYe/eq3ssfBlkmG4kKJ
	 KHNy6/PtfpMvKeFCGzjAMvySIPOcxoNtTuxJK03dKwvnzmpDYjUeoy40zriOv4oSBN
	 TMdev2CwTrGzN4M6Z0N4IxoB3sdaSs2KP7UzRMJd/5lstbrO4DJ2eBBrkamr+4cB2z
	 J77TfxKWvxNRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ADBCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050207368.26967.10723771836435740219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ccdaeaaff2c0c3347062b1dd66066f298d1fbc89c460d206149e683fe509c8
Date: Wed, 03 Jun 2026 15:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780502073
