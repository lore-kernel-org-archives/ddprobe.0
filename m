Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321521DF97F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753000796; cv=none; b=fVenZC4bt3Se0+qydS6Zbg1felQhDtDszQMLmi7R1C3K8m0YrTqnGn1OWWWvgtyjZez9XAGC3PvZ6olgpVEeQkxcZbhMXAVmKBaxTQ8Y27Ro9K7xlde1ux5ogAvvSELYjUBwLWt0PF6IjkblW9V1aIoJeIF4Lw1IV7VZA1cZxv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753000796; c=relaxed/simple;
	bh=fkZ+DoJFzC8haQ6taUB7qmxd2B7CWhDepfG/0aSzX50=;
	h=To:Subject:From:Message-Id:Date; b=Bu2ASmEI1PCQm/r1RgrUL+IVvTpfrZEETajy0B7C1HNIL3yHgsRLqZYkPmad0kD05jNFGkY/amshPdxGA05s3BQJXyIyE0fBvr8aRy1oRxwwFwatoi3EUYs/Nj0oxtXEwf5OcM/HEmL9JVpnlOwZ6nlU7o+o3vHNG32BVL+Q1Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tb82hzkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tb82hzkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9DEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753000793;
	bh=fkZ+DoJFzC8haQ6taUB7qmxd2B7CWhDepfG/0aSzX50=;
	h=To:Subject:From:Date:From;
	b=tb82hzkHLquJpyHeaIs5qSyHiBKBazxy/RVJyiWxQRNQi817dKYoYyoKDYCw87ZDo
	 X+n3DD2Mfk//cdGamKxDkAZGW4E1VrcML7tARxzfR6VY/dXartMbEOQWrP29LEa6l/
	 AOkBuFmW+OKqshSlRx1xFRmzTFH/NhznXga9vsFlOzxHszFaIX6H/8p1HbzIn1hjQv
	 lr805dsLu7IvM4izdMrCFUAwmakIfvdREEgTMyR8eH/lwr1qBRV2WULEmTnSSSHQHX
	 uPuoSSgUOuqxilQAMepA3wEcBrxayFQtUOw/h8OZWUEHZwJhkJgiAnHUBFFbd7BU93
	 CHJRFP3K72XMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97023C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300079358.25723.373461915567121268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae517ba6caf1cb98299cd055a879fde029dd2c2632b667820de476f5cdb84eb
Date: Sun, 20 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753000793
