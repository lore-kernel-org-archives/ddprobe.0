Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435E82B2DA
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732757154; cv=none; b=WVZbAOS7shrm572by8JQ89Ku0UShbaIQQik0zSXt8Iyuz29WKRCOtkBDKZUgRdD4CB6s8aOfGwq+bO6RuTg81F+LVIVxc+Nw3v6aWr/2ebyBMeWWXY1YCrgixVf2ujDKmBcMHVdESYomD+N5lMU7Wc8wJblBcYGU5ADHfNzyc5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732757154; c=relaxed/simple;
	bh=dYmhtAuOJ6pvk6se+uw0o7ow4wnKrPHw39kDD/aueg4=;
	h=To:Subject:From:Message-Id:Date; b=i6lmnazrr2J+O07P9OCsXx+8/lNKI87Sp7Sc+0GQEyWolqMoSU4L/6VofpIrBRjrKzQKKMbY4UHFcCZRNS5rX7mw84S4suNlNoOxzQw6vq4lsNWEvanl/wYW/mYYLpyRKqfptX80mJMnmPHVLc99X2pVLuLg7AJaEamrQodQSZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0V4OKMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0V4OKMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5876C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732757153;
	bh=dYmhtAuOJ6pvk6se+uw0o7ow4wnKrPHw39kDD/aueg4=;
	h=To:Subject:From:Date:From;
	b=j0V4OKMd/4Olf5nBUGInCtJOoZP/MaFe/sP5V+tQCvwBekRg6R7IMNDO71gGvsPmC
	 tgh+XRlZyHLdhBeFes96ev5bQD6wFyJoFzxW0ODHdVcB6g5vCMkFvazYjSW6N4GIky
	 79lr2E05P781rfBtKTAFlKk/09Yu1qCiDNWQro6Rfsz+14Q/7ygO1WXStSZQgSJD7L
	 Mfc6oZVpg1WdR3WKvCQ0j4duYHoJLcOxRYSLjBkAdOoQXG0eDRFYhsgZKtF1GyxtB3
	 vsp6m52K/6QQHMv49QQXy97iGLwdkRGbsV3CF6dht1y1wkc8ZZZJAYCzQ2yzfTdmpA
	 hwpPlPDokP5tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957DBD6D252
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173275715360.23981.9235474006737086056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c716cdfdcb5e1985d45617d36887c3667cbc6b5dcfe0f22fcf6f175e0002209
Date: Thu, 28 Nov 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732757153
