Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5612A2A1CF
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785716434; cv=none; b=n3uXPN1JzEnmMKRNowg3bQ5HQF9jCb7VfRoQ8ADIXL2xYKWr2ovG+JM0LMRHewCB4pei1Vw7HDsqxLwj/CLbrbTXk8uZEdszFuGqYK+sv5gLcR+dmtOMq5LjswIZk64T6yAyU53v2eNcfgO9yR+H4MsM9Qs4swDR95fNZG8M05g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785716434; c=relaxed/simple;
	bh=IoYHq+KNEJKxI5NrGj4zWtSPR6X3k35cZ/5Uh28vSeE=;
	h=To:Subject:From:Message-Id:Date; b=Au6XcU7BlTGnBx4r5UPhJxEqdaYeewpPT2M7NQgUf0+21laBTOTJeKGz2w10N4c8JYo/so2YDHNOy6Moe/VqCtvnf/JqZTeyLcG43H2oeYJZmhn5kqhDjfQQE3zZI2Leenh9a4idx9sFwDvhnvlJY8xY4P2Et1PftCnGbuj+1Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll9LrSOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll9LrSOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3119C19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785716433;
	bh=IoYHq+KNEJKxI5NrGj4zWtSPR6X3k35cZ/5Uh28vSeE=;
	h=To:Subject:From:Date:From;
	b=Ll9LrSORcN/BbDy5ZdS3mmSU1s4fxXNhHAnk0TiXHe090wdxD/HBzQBVO6QtGgcXx
	 trpsh1W3y0QJsc7bRkSfMRPYT+kvI7Ouh3QUO7lv76HXfxNb+EgpRYls+HXaUyfla5
	 I/0ldEcBttQsraMAs4RRqF8llEswNrOrs9qLr1tdkiuI6Rm7hsTi+TVDTI0GbJv+AJ
	 Ud3C676P7C0EaYlUoO3+H7xcFqbMdtGbbNiIs4mPA3GQVs1XFlbV6/EhEHKH1wiL2K
	 /7MOZDvdNNokT9PIPkzyOegUYx1TGZCF6bdvfCR2lvUdrdPEkg1QQu83c4XX8wWsgW
	 wxdx0aNwmrOsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC2EC55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571643368.4020.476505013889530373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a70a9f9f7a8163e8d62507069cb75bb4a05dd44c80ac78055797a4a61c615fc
Date: Mon, 03 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785716433
