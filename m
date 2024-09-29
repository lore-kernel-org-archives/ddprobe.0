Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4013014BF86
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727611554; cv=none; b=Seb2e3j7WbDCIWGJfKIaxh+Tdnl6DS1NL7bVrcbSDvgqUpu2pXmIsHhyNw48nRttyrhNRQ7Pg6M6QEB04UOjgNu73/qFXPjFMMwTE1ubrloFAtfqIzkCeQo5ZZvhcWNY/oLp6arOZf3SziT6NCk7aGhCELAyPBQrnDlpwW3RHMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727611554; c=relaxed/simple;
	bh=qSAkTkVw6mE8wxWY0MLKaDWUCrIFerv3kAlyb0DI8Oo=;
	h=To:Subject:From:Message-Id:Date; b=V7OZqXUNt0JoajU/cyzrf4k0ukuYjQLxWdecqvpCfExIHePB0ZwkSyLlcgUxT6yzW6jik11Uyc1uS4kntgB14z1t5bRfaNm29J3S3yjrBurXO7rFHCXegczVtq3ifafVvIQgLUqnElfB079AuAKIlDGQZvBMhbyhH7ohOujc6cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYbyyXjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYbyyXjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17CAC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727611553;
	bh=qSAkTkVw6mE8wxWY0MLKaDWUCrIFerv3kAlyb0DI8Oo=;
	h=To:Subject:From:Date:From;
	b=MYbyyXjx+2pUXlT6BJI9j6HjCn7wCGI1juBPiDcnzLF8d/05is6PNtcTbqA/XX0+I
	 ukh/8dCm0e/xhqW65QlWSKNrVb5ZeRI2e4k/1nNGbj45Yt/EE02qSut05Nv9S3P9Yx
	 IIL9Vv0nv155e+vas7WXxUQG1YjrKgATotpSv8WaxDD4SF58AOUw5FbknzfT8JhL/Y
	 S0ZIDUB26sdCiBSN/AFQADVaYXc1V/6cX9NjniEacxrKFVoAjQ705SfIK6Wkh84ufp
	 q5fLHkpjHnEPfgyHyrzqJ1CyZS9YEJ2g8v/oG003AqdX/R09VmRLqLEA2AU1wYeurJ
	 S2n6w++p8Vc4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B358CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172761155361.5033.6643135636143581586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43df1c386bd2e85d013d5ce5d7754af5b980325e51fd342ae5222ed50916093
Date: Sun, 29 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727611553
