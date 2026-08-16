Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5C237E5E2
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786841434; cv=none; b=PYPwiqpDG+5DCBmdiyHYx8r9d+NXgb8mLeINxX6BDA4dtUWny4zNXreJjXAcydzmWJJlT95KpkxqIzUhAZ+U9cinD2e/slgmxZ64R78o14NDprua52XxzwL+7TDnZwHapTyYWlKz+jOuL0fykfw6c6FGElqk4KHTKVJAaVasBT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786841434; c=relaxed/simple;
	bh=eOSqQ6m8flBEzTL+dE4fmLFeY6/WMGWFP9ktqp/4BmE=;
	h=To:Subject:From:Message-Id:Date; b=Rv6pOQjjESUZ8yLgJEYYr6r31t/FzjkdeRuiHgY5vQDY/I69TNs1n9Yc6GqbNk+G3GF9MW2oIaNQehw241STaxbuV2sdhskUENWTwwGucuyeOOHWvnAU1Fe1m/ivHJ7w5KKFMlPm8LaAE7ihx9x0Y8psEp4KkFjjU6ngZjI+Hvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAwC354G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAwC354G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6662C19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786841433;
	bh=eOSqQ6m8flBEzTL+dE4fmLFeY6/WMGWFP9ktqp/4BmE=;
	h=To:Subject:From:Date:From;
	b=NAwC354GCpvq4uy8VO+ln+ttbTdBXmdeD2XgClTFdHs7NPu/II/EenMV/1QdS+kgD
	 LKq1biQG4ZBCmuU20r7zfSSgcm8Fd/0A+4H9gJDmjAtY/yyZPcX0y9F+PjRHjkS32g
	 K02FbshR4u4US3G6ScipU+0RSBcXgak3/plSIWCcm/2OUX0lhVeXCENMgEtyRI+F9o
	 gLYsWMqDbyUBc6h22fI0Vv0KobM/MRLMbszDaJ1nmpWFxXVtXJ+HCJ/mR5g826CaQw
	 AcbjhEOrsh2s6e5y+pRBEwfP0/SH4esaz07i5TCU2NZjYPCRRgAL957DJl2uI/5JYX
	 bW6k0wHQ1JNOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31BBC5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684143369.21155.2381819077339288635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed41b4fa91079be15da72b4b97b80e391b2dffce471950ecf596768e0f6e5cf
Date: Sun, 16 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786841433
