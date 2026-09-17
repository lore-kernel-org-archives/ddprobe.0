Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4452B3CFF6F
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789684234; cv=none; b=Ci5nKAnUw9G2301SGHSlVB5qLriUbdJlWHbuLrlMhq8o72dSLm639LgFZuVKVk773H5Lp73rnuCM9WUvP56bmWKmcjIup9ooTRrDWsolGV386biYdqBKzSCW6RwJfAW4Mm7izV0BDLAadUAnJlGv1R2+f+oomsA0cUTtP0xytm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789684234; c=relaxed/simple;
	bh=TwsPbuTkqLkSgFVK72Ls6rfQJWyijpfTSX08r1GPvgg=;
	h=To:Subject:From:Message-Id:Date; b=kMqqdqjUXtGiZ5U4jadXqjTxJz+JbbeHzjHpBhEbrVJoAkgEnphR6RboBBOrAdYHUkouAEsphO6PA+wB+WHp3NxTQxGv7mQwHb2+I0xqvSuUjiA8wd82OhFTmQbEPFd2dw4dYXC68w4CMBCVplJa3t4cLq4Nlo1tXatA6Uz30gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPwrgtOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPwrgtOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20B1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789684233;
	bh=TwsPbuTkqLkSgFVK72Ls6rfQJWyijpfTSX08r1GPvgg=;
	h=To:Subject:From:Date:From;
	b=VPwrgtOdk36qAF3G5mPjUiYk7oMq8jAXki2URKTVm44eeW9brt6pu+qPsITIG6Bo8
	 G6i9tCHBItFc/H8wHaKNKhw0alacK3L8aMx3QxXThi6GXPbUd3X0NbVF807rVbNRAD
	 TY0NgBM/R/B/rtvl9QsOKU+XI8YX2B/d4UMSz1yuQ6XWGyiz9KSgRmpojp+67vszRc
	 wl09ehnP6G8AzPOkOAo47wKheHpwwHtIEAEntMccJixglSfCdOu/yMgtdP3Bx5TZvc
	 QinvUno7rfCr2kxcI1YWdwebtnvUuDFQ0t+Xy5SBqWKpYYhMW3BHmBfa8oDwcdLaop
	 XFwiZaayf5w3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5C5C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968423370.21675.9300237495545550604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702a64e00dd3953b6d9376471a2d9abc6b188dfc981154955e50f9f781ed2c06
Date: Thu, 17 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789684233
