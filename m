Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5202E2D949C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784829034; cv=none; b=Aq/If/kgjPPo1b7apmqBGK4j2LBzmaEVnG18Lqaf0MJDLofTmKZooWFFkms1GOWaNIRKa4xCN8Y4QiWDvsUdxA2xGV48lcQQOwB+kCw8GO9I6Y6MGgws3Y5J4TzN7A6BVt+PSrd4HrxEtEgd9UvpzaleYUGFUIeQCmSzQiVxtbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784829034; c=relaxed/simple;
	bh=NRronsko34AkmVHYnSW5Ln/HdJghERathZa08bxtPH4=;
	h=To:Subject:From:Message-Id:Date; b=NY11j+xppeQtdLaIDUHfRKf+Ozv2GDY9H6kxktefdwpi4WH5ABUDIVLPu8eGquSALFEqJ8q/tw2uE/BNZoqfq9CIqQgxAJhkJKUrQz+aIT4UsGyEY4fVBUCLnuBY5mJhklC175tKyjpwlKBPCeSFSea58tJLC4Ci3nx+sy2RIDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcMeLqQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcMeLqQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE043C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784829033;
	bh=NRronsko34AkmVHYnSW5Ln/HdJghERathZa08bxtPH4=;
	h=To:Subject:From:Date:From;
	b=lcMeLqQpngmeXFBwnlUtd7TPvtqxJVU27FJrSaNEYVw/rj6Yg7DOANv6Ffx425D2/
	 8jxs1dV6A45pyQnYBwj4DqefXkV7GPW7Ks1EE9//h+pruk87427l/o/k2q/vWZ7XBx
	 0TU1mk+/wfrvYUpPQ3tz7xBD8twHqONztuIWgVM/Ir5KCpRzgr4AgzuUkMTjT/Ntmb
	 MnnadolI1irz97WDr7FHeVhu6OajV30oZ0cSCRrIXWcTZM09qvkT/A2gH/xCuY+uYJ
	 jVRYZx1bC46pAxD03bH0YY0krXhuFXT3sNUpogiOqx1AWI+Hhh3iBcpUQUnbBqqsPj
	 nLQ2MmGzgBTxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD07C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482903369.28227.6248095909733622603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e896a413a8bde281a9bf8097d34c7d2ffe09313bf2f00b50aacb6ebc81e1d1a
Date: Thu, 23 Jul 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784829033
