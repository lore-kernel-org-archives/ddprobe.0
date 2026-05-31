Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4352FD1DA
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780206274; cv=none; b=jZIUf+VrJw2FYIu2Euo9RehlL3oolNu8rnTkelTvFB4HnDK6eTOAaE+u9s6WiHw3qPNp8mIC3HSe+9QX53BtPZTiTu0DXmyXkq6WvF3rns7E+Gg7GxwFIahDDautMfxmpImx+OYCleTl+jsTj2wZgvb+PcLTig0jvCyrHe8E7ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780206274; c=relaxed/simple;
	bh=7OUQA1FTWFQFJUcQ1VM2E4HtMImuu2Lp8p0F8L10EDk=;
	h=To:Subject:From:Message-Id:Date; b=JAQnKyo0AimZYJTj/jGwJmNEAAW/vcaIdm/lUF9O+laatNivD+aa27PTf6ljTqY5aPuBCX4tbmTb2A4yuUdz4Zof4xXXA9TsYUHqVrj6+9CJyOyaf3PAqHwkAlm4QSGQmgaCpBmhICR5mT4VrZ9moGRrZGlcCtlA1+Kj70wVUVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOLByd3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOLByd3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C301AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780206273;
	bh=7OUQA1FTWFQFJUcQ1VM2E4HtMImuu2Lp8p0F8L10EDk=;
	h=To:Subject:From:Date:From;
	b=SOLByd3qkhKfhG5tZAgO3fF7UT/Gh+6M+HwS7eWPjIsAaEzudFRgzSLtpkXmv/WOU
	 kaCK5aky0YX8G4mfzmymmLr0zG3XCEEFQneJEzY1k+adtEKuLeVAdC7AKfb4xCntSX
	 SHYqeskkTyPp12L4/7JWYtBP3n/jCvO9gemOPtckHjTpnzpC/BtngBARomHFFQv6K9
	 ebH/DfxYmegqpNv+0ehg98st5Gs5cH8BliktVbhQwNt6I6wwNWJchw06BQKMA0lHFp
	 eWvydIcB3pjXZETbJBgriVvNBZ7Zpm01yKstKtSU0wd9XYglIXplMZPbfkW6ErF1cC
	 U6ouOGeEJLkxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6CFCD6E51
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020627367.4021.12051274435963656597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dceaff8bd8da6355c675f19a84b312dcf729a7558f721052a6005ea0156a4cb
Date: Sun, 31 May 2026 05:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780206273
