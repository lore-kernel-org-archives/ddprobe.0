Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F2F2F7EE7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779654154; cv=none; b=CL1UTAR/Zg79GSSzsIXgkGbtpwvFFJ1Vf2on9lalFlWI2QmpsufIZ8V5XQDVrzOkzqUVqKLU+Pgya/dFVAy8C4x7FzgjpqTu1lgelNAGegszekIrX08MI0bT9TTqad7gokgdlcAoQzz3NEmo37pUsfHWJbO+4bg8HRRCDge4U34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779654154; c=relaxed/simple;
	bh=Zmck8u36OG5JXd8FCtrntwjaCWQ3uVLedO1zn+mmrX4=;
	h=To:Subject:From:Message-Id:Date; b=rRCFInGsm2Lk/Ow4YEqQiEgp1ERjo6OSYHErZV6sdfZevE1ee80H088ZpzaHhReFeTYiVotJEIsCNuyFAa1643rlEyY5SXnlZ6ciEpFz1SFKBpS+i+6Pt0+tbeLq8mbm0r5yR4MgmlqzTlFYRfdORbFGESUpvI7kq/ha2e6OAm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKlzrCD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKlzrCD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41B4C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779654153;
	bh=Zmck8u36OG5JXd8FCtrntwjaCWQ3uVLedO1zn+mmrX4=;
	h=To:Subject:From:Date:From;
	b=DKlzrCD8gXNtmgH1PI2d4X3SQuXi64GNaJH4H8Y2OzW36Sy2J1Bl84xdmRauDC1XD
	 pOWvb+rW15XFiv8Nt9XAv6r0aBvqw77Q+j+oyxYwcT7jU/y6d4+BI6a7gwvfhNWDzy
	 3aiiK1UKSQTB8zetVTXe4HAtPePzfXaZWppW2/pClTUQAd2hhTzgwAPvnsRyCi7jwI
	 mI2/8q257ehlnlQv/LyQz8lXOltdKDe0lh+fuA+DP4jCsllxhS73FatiTQYOxzlx6u
	 zybPvmWkLADRP3ggEHw73ROpBA9kXcjZ/K3RWraxFFxDRywiFwMWYR2bMyOWeNYJsw
	 WtlVptRf3MYFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE7CCD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965415368.1442.1832436613228509752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424950e615f9a980f04ef792c687d1f114b3df04f881bfc9983cabffc7245a1e
Date: Sun, 24 May 2026 20:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779654153
