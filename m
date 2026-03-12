Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502D0346782
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773283494; cv=none; b=mNuXl1mrk/3WBum3xoyN3F2rpGqFVPmQRZsw7YYW0qlP5DaY3ZfVHcxfCHgNzwYjPnOnVqEq4/js+Rbt+PzcWuO7JIJlbq64Fjrg1V3l80hadKdA6+Ud5S9x+p7s1DH87jb2lk/8dREf3hrFg02wMAf6FMcA4UxhXQlzS8v2N2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773283494; c=relaxed/simple;
	bh=cKIyXWrdYOYiHSArz/zMfdBQRQ++D22oR2lw+YKnw2w=;
	h=To:Subject:From:Message-Id:Date; b=Rpm9Dy/r1DXOHjWx8KhGtQqt844gj1KIYjtvLTeKD3G7SpouF9UPtI+GiX+060rLjqBtImkkXRr2MYaaHThohAPU0NV+XkdJB6RNTdHbI+wxOSmmP7qRlN//CokXVbcpsa3OeRanyicenXOIIKkixcCmvxQVzfPbccruhEKmLhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad5e1GVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad5e1GVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27A7C19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773283493;
	bh=cKIyXWrdYOYiHSArz/zMfdBQRQ++D22oR2lw+YKnw2w=;
	h=To:Subject:From:Date:From;
	b=Ad5e1GVnMESeHhbQkK4r2X+z6ACOUtfx2Jz1+901y2n717jXjnIdKmkZ8LKD5I1TX
	 6KxFSlZtWvad92gf8x4c3rTGx0oYVS/Nxrvkd+LYQx0rE1QCPsypfAEthZnuC62qMU
	 RpSS4FGep/90x/BcaaSvX4tpY/FH9t+ghxv0F09+7XutMn+uMnwprbsskm2Isaxub9
	 CVBw592lWpL9jJCTv2YW1V80mLu2XgaSqol3edyO4uNpt0WDGoQuQf7W40tKstufFD
	 +3phqlovWlh1g/czpRUiKiv+CsvH3nXJuIn5YnI2RaDC55BNDlyKqr8nmuz9lEsN23
	 zPGVS1MuSgpew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF36103E304
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328349363.19901.4116886979599458102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167a8e22467bc86644e3e3c07e042569631cae220cfc0a74e60aa1bea0e45164
Date: Thu, 12 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773283493
