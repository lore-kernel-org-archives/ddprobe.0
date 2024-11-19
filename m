Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1698C6E2BE
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732002954; cv=none; b=VMVSGtvzE9/blz++bY0i7np3wZUSdFOoAanEg6BOECWtG7Co0xXxyHkbildNmCVz7lVpNPOrPQC4wXWpDr7iaqhI0uR6sQjC63LebqOokdYSMdpM5WdOhv43cE0/EGXNlXUkcDz/75gSBFL1uXILhIqEiWntqrLVfsXxpLY3iPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732002954; c=relaxed/simple;
	bh=nFuBsDXiz1whS0oqXXEDsF1wtnOf39LUdFjXowesFlg=;
	h=To:Subject:From:Message-Id:Date; b=AfCkEb3fdGUghKWEN0B2yrbn5EsdqncTlsX++A+qtK0P/jTiwi3zKMLPQkcA8orvJ68RBPxUvXRzGcioeakz7TrgBGBcgxczVTEPKxvAPxWmaeFJBJcnT0H/gU9r1FDpt+0dhhOPmvl2ZyBfWiDZqqWdfiO3ySa/aqzilYzAWKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7Puxbcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7Puxbcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95E8C4CED1
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732002953;
	bh=nFuBsDXiz1whS0oqXXEDsF1wtnOf39LUdFjXowesFlg=;
	h=To:Subject:From:Date:From;
	b=M7PuxbcjcDMusnPvA5zYM55zdK98frSbIUx7Rx4VfbHJAJhVutCzLHFbBEIIYJ6/M
	 itLIYfT/FJ1vIHe/xwWcD4oOUHSgm+ISGyYoAzGU3NcqAdSnlczPrfxY76+cb0ZC6V
	 8UpH0f3hpWUbn1uUmv22IbvPHJr1DEXcoeO3+gyFU6c0K9suUKP9CWSzd8YxF0wIqg
	 GIrrferEv/t5ThYqataD/DZDuWLSV/OnnZRcCHEziXqpQLxdvVsYmlolRcAJm64nzL
	 zuZupf4g/kHEomvgHCgDxPilZCFYKhOuv8C6I0l88h8LmNIEps7eHiryKy+eI2L8Hv
	 NyTQUdnxZlJ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C09D60074
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173200295358.17598.9120191577110902603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a03e3f8909218a19a4c3c1a42965622913283f66640431532ea84812c741e4
Date: Tue, 19 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732002953
