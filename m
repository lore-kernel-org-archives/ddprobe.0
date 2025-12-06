Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA1523BD1F
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765042974; cv=none; b=Z3nqEkbDr5e8A8fT6tlMwtVlYZfhrHHLDgW/pgfXDWoIatul7j+etmSDOqcV2gN57lxn2U0E2c+mo/v1Q8RVlZoz8DDjbcdmVP9hlsOJ7vzyI5K3vfsn+5GZNpsjIlqfT8fXX1JkXGNreavtZZGpOw9k7LpOgj1JeNhePZpxqOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765042974; c=relaxed/simple;
	bh=JJzRIRc6Pxr9PloGXywFJNyZ6nFh06fMInp6j2oY964=;
	h=To:Subject:From:Message-Id:Date; b=rmE2ROFaCwxegVFV2nyxaq4VZuGSrxYtKpyePgXxcddUHmISFMHheccEpioMhGAIS2KBcYHJWBWlkcrPFtrOKUgFRN8XhpGiXP7hVvpuc3piLqZNN0+f3AXbpJQ48ueptiICmZudnZnG7QmNcbmg05lLm1H4tSLgse2ft01rByQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bej2ZJTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bej2ZJTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B6BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765042973;
	bh=JJzRIRc6Pxr9PloGXywFJNyZ6nFh06fMInp6j2oY964=;
	h=To:Subject:From:Date:From;
	b=bej2ZJTCwn4PlWTI/sQLsaLtWhaA+mO94nnval872QUzibKkJDDbaZ6bBz2JyMWq8
	 qQVLDOfCh9LW3EX/XdX1WFp6Ire6Vig7Fvgogk9b054hNXx/A2rE5CiWKMIH7OnpjT
	 x4g5fiJV0859+dGuWNt9RaEzXP4Mq4//Dx6or4T5yXmI5CCh2BZ1KCbjbnCS6SicDw
	 dsQy1DCEO7cSfD6e228vZ265lrv8AZ75DuoNsP4rWE85dCYx/HduYLvnlLZTS6pXQB
	 H0iyV0AMVJwRPJukGXGfkeXfB8XR46Kb879s6MlYjs+EnpyOaQ1KqKtjyt4aDwjEV/
	 bFn5mC+RGXDEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BB8D3B7D8
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504297358.32620.17430345703871132170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb016868a120fb2006165f188d60199cc8bfa1b65a2455bff8af099fcfa7365
Date: Sat, 06 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765042973
