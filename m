Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3128E2C187
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772408094; cv=none; b=heWYAbmcdZxthxjPJxMXelA3nU0YufJw4huqd9rquHeYgf9fPayLukJYK6MwXXxZrWganULnOffz5SaR/ZZRGtLm8SR8xeM1IaRO8QvyQWLdXWo1wYMaQ0wUNJhz9JjtI23e/BChjUwaHERDZUz6+QXtd5E4kdjqaUJ9nmn38i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772408094; c=relaxed/simple;
	bh=l9qbVepjXvEgyXyd/GLmrJRRVdR/4SmGFKIMbS4t0+Y=;
	h=To:Subject:From:Message-Id:Date; b=YYeRl62SCf0m/FXWXrrQozDlBLNGlRLICOrBWmMbrTrK/SSX6uea8fHreTfKWy9X2eNyKlvOG+s5u5S0iFN1XcptAdBEGJ2YRpAvaow24B3lRloS8i7+Z/W+so6PUga/gMJb3XDGZzmw4dFEaKiGLujNnAWXkgYDsnvKRPQvXrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDdR36xK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDdR36xK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F5DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772408093;
	bh=l9qbVepjXvEgyXyd/GLmrJRRVdR/4SmGFKIMbS4t0+Y=;
	h=To:Subject:From:Date:From;
	b=EDdR36xKxaKDZ1CRISCuKOPb2tUkkrrjaU2RJiUky73cPBo8QqHniruCTCsMAUEyR
	 ntOFCvn6jTZSTiln9GdXh7XhmDtgJBCLvZCWdIPSP70ORbvji8QftWKj5AoNAY7F0L
	 ur6VXJ9j+9XYB8vbMTPGUsKNle7ebJQx1oFm8G6Xv6CcLYartHjsVagphnW/1M2r50
	 JxIwLtHhc80LbvMu7S7O1aFCbiFms/XoVSv1cRm7QNp0wGoPv/8NMgx9AAHh7OoT6Q
	 XajoTHIuksicRa5iYIxz3o41GZPIEQxFXkaKbpVhxDI+bfRHliWxZHFfXqD6IowNpo
	 5WvShvQJD7RBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9859BFD007C
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240809360.7762.2132261501700500282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f4bec2a2d8c2cdd44c156af49f09d145f722c1b5ad69df80b3623facf2c0db
Date: Sun, 01 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772408093
