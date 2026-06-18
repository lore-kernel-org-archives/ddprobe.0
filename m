Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F6733F58C
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781809594; cv=none; b=Rs2DE+1dDfyBN29mRE73jvSvIuhyeOKtH9mR5DWH5kvLXdFn47fSp2ojA14xwPiZZ/f2xT4OyETOLqe2kx/HUqVbanwyXeJCMYMaqK36brT9v8LrHsfJr9QJhcJEsQEGmwrqtThIVrdQq1N0/poS5YzvxlknfB4a526gzhNrvGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781809594; c=relaxed/simple;
	bh=JOFXrnh7xJmW90PT4+eZNCLWDBQT14atGK0p1DXbaAU=;
	h=To:Subject:From:Message-Id:Date; b=J6QzeKF5gBvwmYj4aDwLvvEDWtsXKB9OVgL08UqdHj+NLHraq2Y/2zmOhvy2/w/86v4OcwfQ64TjhPJY+Y+PORv8jYznGy8sdO8/7L22h1nXvxEdZ8Iq1mw9ueztI+AmNrd+8gueAws6wHvdU9UCD1uFovy9ZbG0UgfpUh7Lx/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAOSPFpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAOSPFpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B5DC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781809593;
	bh=JOFXrnh7xJmW90PT4+eZNCLWDBQT14atGK0p1DXbaAU=;
	h=To:Subject:From:Date:From;
	b=oAOSPFpW9ZiIt9UHthDdXXrpXCpNo8M6ZrIuPlcYjrgM6yEYVeHyzgYm/LOu0JSuE
	 Z54F0n9/uGxarRx5HywgL6kKScUNnxBReLRZdmNz/LNHnKuTwW75kSg9AWaFZz0D5R
	 Yxrp6n9ZJBqoChi605DL0uiQO8P5nkjkP3lTshiNtw1pUFxPHzXFJ4ZTxvxcWdwjHw
	 jjX7az8/Cxsh1yfwCNBde+FZp4uPlW5dZtaNddFQnPZ4yKhma4wXyjOc0FSnhrIMPp
	 AYFYDAl1NxxsRj/TrTvfUjj2Db4YkbYgr0EQrY27yDJxS8wnfelx1KFX08uxPB3SW4
	 VQVWl4zei4O/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC585CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180959369.18593.6859815333665971369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33150aa826b2bd91c9217e785f17040f1f6a55cb2ad01b0d070b861fcd454426
Date: Thu, 18 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781809593
