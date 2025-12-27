Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1059E22157E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766803434; cv=none; b=ZEy25eMm8zBZq6BtdcCG5U6CI6uP96bRb21SL1TK4f7FVcVN/vB6YkknoiDnW/n4RVUHh2zOh6EFs4jcFBGj3BXE26VGUrBxDR1ihvm4+NVj15dW8r/b443z90T2Hdi72HIMIXRFo3KWQTq+EXyIAzu9TjNK9d4VPx7v9pReY2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766803434; c=relaxed/simple;
	bh=wvwYWQdIhAJkvddW+Iv5uE52PG0WixjLZ6Q7Kp1Qeg0=;
	h=To:Subject:From:Message-Id:Date; b=R5GG+F2dSlfw/UwKg9qLB60TNuXIWals/MXOtEW78Aq+5we5NpXVBGdsvr/6HeYHr1/SMftjGWMsPYd2ddCBoWy80VTMzJTMI/ZwFodxIOEI8lSV6lR09XW563inML+I7tc35dD13UXGGIFwktepPwWufXtp1X+MxJcHy3KST4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ID471Bu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ID471Bu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE37C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766803433;
	bh=wvwYWQdIhAJkvddW+Iv5uE52PG0WixjLZ6Q7Kp1Qeg0=;
	h=To:Subject:From:Date:From;
	b=ID471Bu3c4lRyxVhrvjQOuKieYvWoxjym2DwBT2T52CT1Zh3Pat8RId4h3822bRz7
	 yWOSyCc/nMUlcnknM8jz2cerO9wobgIsBDhR5yTo6Oh4wxpayrorEyEmlCFN0F/aB2
	 joGbzgp4Zxtj4lPZgKjmRmnUpSB1tH0FAatcxkmL6QQQzbr9PfsAyCiIHGGasrDQEN
	 L8ukzKuPF/RoAM7WBxRgTftmHMvbDZwJkDtwmWx7nnw6aOWpmgXrmxTDV191Gh4M3/
	 qM5ltXWl9EH/2Vnx1enS2CEaMlKJTGq1l9HsBYDn/6aJBzKMBx4p9vBXEueDCe2c/Q
	 pmBv+TtRQN1EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CE5E8FDB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680343358.32411.8330074844907392306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99346181a21bfdc9b8cd25093c3daa0f269328d80cc9e16396e0048bad97ccf
Date: Sat, 27 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766803433
