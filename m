Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377E513CF82
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790037634; cv=none; b=ULKScWD4O8V5wQuLxHhR992d/gRbDLjc+fexYL0U11v6z6pV8oI5sBYs7ywOziKNyYtAj9rqVckicJgaQaMuoSFsrsJjshkElpiyNN9tQhC2NmRVirswdZmvwKYx/Btw7ENMABw0RxM5q+5wdpOmlcd8voThsN+fSD1lAAV2gMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790037634; c=relaxed/simple;
	bh=SSD9dJxCfEzll3d6LucRGn5jg2t45O1jNnl6U+3p/l0=;
	h=To:Subject:From:Message-Id:Date; b=DydJ4LW65omgU4xs16rI4umVQClvsHzn0kYJ9ZbOgd7iU66/nMTuOXsKtH1ULtKQlfj+DKPHOuS8ivghGxZ4PUGu2pwnpfiBTZ8bw+sEOsxP2vz9QDh7/tailjucQl/2KK0Q5EycyxWYAsMvrClUTJ+Yrxmdpklx/KdbxhXA9so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2NNYVGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2NNYVGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB3FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790037633;
	bh=SSD9dJxCfEzll3d6LucRGn5jg2t45O1jNnl6U+3p/l0=;
	h=To:Subject:From:Date:From;
	b=j2NNYVGP9rtR1lrUKQtdg2IZXBxola4JU17PMrsHcepFo4MS3etn1cNeGfdFtd54/
	 J2O2qPpYEUTgx0UO1bQ19pruh0kjJHfIiQh5POSDwvT408TmHHvOU/R15SRkeGLxTz
	 ab38KV7sIPPmC9p0yO6iMCXipTEJRI7aVA+7p1/r/JRhML2fUKR2oH/gPT9olMtky2
	 EqHKOsT2/cTkgC/4LmYyzIThczZTq/iw3FFR4QPwThAztQTE0FFdRRI/epJvA4lEQi
	 9E+MGsHXJ9ZOvX4a1a9wenXRqC2Nw/v24AVNsASqJFm7elNgcULy1koEpmAbriCbP9
	 OY6S2Z1wwD4Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB417C982F0
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003763369.28624.7882323471194419464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151fa595d83a5b87b00c80b5c717e3bf32e466c7f15be684dbf2c8fd5597030b
Date: Tue, 22 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790037633
