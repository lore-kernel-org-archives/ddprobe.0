Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8672C39A80E
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776370054; cv=none; b=cPSbvDo0mg3vz8a0Vm4WUH8c/3ohpBbLvv4PS6YGs/yBQyRWK6nLnigS7n3tlywXU4NVXin3P3vqDAKLaYPEO8ReMMFFgpBiYpcK2H74aMdriy/otGVteGSzlejcl3q/1yDOzxfyxjuvfPRQCjveV2uSSRjMzb+UjWB2dGqrtmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776370054; c=relaxed/simple;
	bh=4Wdw/U/hlp/WDmz3+qt0NjmeMZ1ryPl/mzmAXpB2fZ4=;
	h=To:Subject:From:Message-Id:Date; b=qaNgammPmggc1xtM3dch73gcpYcR0KA59X7AI4iA39Xmgoe4sp8JezNOq9ChPjIUkJok5rexFGCV65HXhIpiISrX3byXqJ/rhobs2QQP2uYvRAznA/6RSbwGkq4z5Z1FXuzKARns7HvtyAzNe6/oNjg+Da5g2I0UYVVK8Hh3ARA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+3eZmHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+3eZmHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12CBC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776370053;
	bh=4Wdw/U/hlp/WDmz3+qt0NjmeMZ1ryPl/mzmAXpB2fZ4=;
	h=To:Subject:From:Date:From;
	b=t+3eZmHnpW7RXcMI+CYR41Q5+b4pILANFT0LaMq1Mm29plejviOtmJItXQ6BwjYaQ
	 8LVXP4uhfKkPBO91Qq5CE1c+9lTnlvtQB59FwQDHCpStB6L4T8Kds0lvGfM07DlMRT
	 HTFtfKcdYpCFQkh56o9bwyWAy7orQOhfp16zXLK+4VNMFv+Ix+1NalMG24zBRjRZ/w
	 /yYmLs93IBcnrmyqAXJ7N5U6MGJ489KUuhWdHGDfFd4rPWYKonGSlGpZIZfPbQfC+A
	 P7/Si16Xt0imk0S8VbCIC6ItSjGg5GPMIFXpcztCcb0WjEsEs2LUWyqkt0+Ak4swiX
	 Vhn3TbsQAl/GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA0FF8D775
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637005369.9780.8657282916450952996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3439a11c9273675ce7074ebe122edc742134b5679a1cf82ef67223e0d1d5b3d2
Date: Thu, 16 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776370053
