Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D2D17BB21
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787619034; cv=none; b=n+yN8t3jxEGk3thIrNbcNQg4rJK0XO0GqeliE0pLaGJhG8pQS8bPmhCEkHsN6EJmCoG2MJiYq7PB13z5lZYqOYlH7WHKzbyXPmLyRn1mjXGz4YOEZVMub1nnhcAg6sPoA8MSu9rCURAHVvQH0IoTAzWcC9ToULqEyEdkM2Djd5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787619034; c=relaxed/simple;
	bh=fRvXGIznhlCTIS2ZTI/q+e8Cgf/3KbQiJwAeZ785nKE=;
	h=To:Subject:From:Message-Id:Date; b=mnowo7tQpd7eKThSwSF5nLUgxXCQaUMkSCnIB/jEI2sa/4BaSju4DzvSznBq0kzUT1qbwFE//mSzNFFKv7YiD/O+WEVxR1L8bPJiz1pe4vHLxL2jGCwQJTeW/LyJPDo6xu4toV9vI0WJhji+2fzGu6H4AOyGjrBvb+5lCJrO6NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moMkE0Xy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moMkE0Xy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A4FC19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787619033;
	bh=fRvXGIznhlCTIS2ZTI/q+e8Cgf/3KbQiJwAeZ785nKE=;
	h=To:Subject:From:Date:From;
	b=moMkE0XyrSY41znA1jlOGb0SWMQ/URTi0iK227rJ8kbUxnpUp6+dsHiXnTUzGm66+
	 X8P6AtaDAHIB4pU7/VcHGb3si7+FqKjksphk/6uavv2/GDMlXmF189x5M2+aJVU43W
	 ShxWkPglFwVcNWIApbMcNGw9f+j5JPEPiVisqG9sTLfhv1ce6/URifbAqff7pmZOac
	 MvRDTxy7ajqhjLIpgWIS+Aepcb6zRnJxaxOx0SlSzuvLkuiUZ1GCkybuLlvpY8XXLB
	 Ysjyhp77J8QSHMLOpBYPRDnJh/m1GBihDEQ5DicRrYg6oguX/MVGpln7/hHiHFwgSv
	 B0aeE92yFiotg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB6C5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761903369.6669.18047410021871013734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f10a22e0b4d1e2211523c76a7aa9f2ee3f264b569efcf43594e0cb82798500
Date: Tue, 25 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787619033
