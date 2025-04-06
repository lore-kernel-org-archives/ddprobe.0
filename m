Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BB21C5D4C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743944394; cv=none; b=er+4WcAE6CNUDt+fj9M57zgrEY/jccmNcVY9r+BZaKrEm3K4ZwImc1C8uos7EOvaPicXCMiPwJ483aCjr+EPBLjVFrQuOrQpCVnxxu44ubDmeaXGbzmIciN4IQUwwqeMZ+9qxmmGsnS64Qg2X+Dy35eeCBus/PL9yQwLkAU7KGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743944394; c=relaxed/simple;
	bh=587pwX9AH2hQqQp3OM2r27XDZ/Ea6bwL4NZzpxOfY3o=;
	h=To:Subject:From:Message-Id:Date; b=B6VOAo1e1eQVeBsx9+xaIACfTLaK+BjKw822CHqihPWiGSL9uWf6ssS4ZQ3joeXLfbtDZZmRiXQn+TaR44l/o5kfzS/W7kLHSAxKYUnoFyQ4MCPoCi0t0VmXsB2FubIDBZW5irFVMHo/bXX7uNcicz1LfkIf8dTm1Zgf/FKQ0pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEzNKUiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEzNKUiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BD5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743944393;
	bh=587pwX9AH2hQqQp3OM2r27XDZ/Ea6bwL4NZzpxOfY3o=;
	h=To:Subject:From:Date:From;
	b=DEzNKUiFmiXc5PkDlbuScyBLgCNuOVyXKk0FriMDwc8CdasJx1EMZ45ec1gEs1oXM
	 dHiljAFkZgvdOGcVYxpQXjjycQJ/64hcVPeEOWXurHB/Kv+bBahXPpGRnhk3y4EZth
	 Iu9v1dkPQOh/2QCVI6mHvZ528ety8pNelA1/ys5Ot1SFjO1nUg9SYzvsHNik9MuVKJ
	 q9RPQUyp65Jgiek6SKtws3b3++bax9BGYH3QmxIwxpx8oW2Pjjyh4o047TE9VHICyR
	 wrL2Kvb5R381+PC2l9SkpHU/zPMlhdfGTWFoPk/StZLF7iIa0DjPmCmHLAijJ7/Czj
	 b4BfgfHZXk1eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20F1C3601A
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394439365.20247.15130055191884901515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3653cf24905aa37ecd7eddccccdcad0a38a61b337c465c22532f7d3ab907900
Date: Sun, 06 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743944393
