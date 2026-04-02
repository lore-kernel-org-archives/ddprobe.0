Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225563563DD
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775099734; cv=none; b=gs/n+/Pxfwnc/GEl0ayH3zD9fA9NBL4AhrjyfHNBmJkt2vZcshnEJZ+pELgxSHUb9zdRjawnh1Du+KOWmJRl2SIXNKZWjHb2BArHM3Fyn+TCq9iSOKc45Ibm80kwN0uZmHp7RhLsKklynZouyxBpj4K/DBvEjeIujMP6sLOlk94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775099734; c=relaxed/simple;
	bh=L2zkjQDE6ee9cD/ab156wckMmz4UiKeiLtyX3Wks6ws=;
	h=To:Subject:From:Message-Id:Date; b=i/G7aQLIAaGKK6at9WdU+2RSlX7hjFGmW3tNHqWW1gvlXFr4GAmZKqh9PEc/Cze7GiU3iTFLEd+xbJf5kNy7MSoXBMAYkR5e6JFCHA7XzUZ01Cq2R1VPcucZNoB8ZZI+1yIFs9zIvaPibKuy5z5G6L0n663lpF4JC9qFJ07SkGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXDn4Y+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXDn4Y+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2423C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775099733;
	bh=L2zkjQDE6ee9cD/ab156wckMmz4UiKeiLtyX3Wks6ws=;
	h=To:Subject:From:Date:From;
	b=WXDn4Y+ppT/Fkmt2ruBpBdKj9ezgnIClvLJEu/vZ9238BfU2EqFV9VhLTjGfEe+oQ
	 Ep/++biP8oGv0T6v5U1XFjUV6kzn11DyPGbuPm9SlJZI6iM/5VdWOJ1GtS0B8R1bWP
	 NPxd6+1vqL0hTpthVct6CU8CGTpGiytEl6OXq6EJui4C0rgx5Bufyig2XtiEGIgLRf
	 xj0yST5PcOcLKPDafRUyb8b2ZGkh8zyhLbOVJ31j34rgjQLlyhCe700aADciwofkvK
	 VBTXSrNiTnb/w04xkGfEDILzhE1q3FhyUFNcw9zXmFKPxRzogX8yZindVDNoWVG/0q
	 yCAwjUWdixwzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2B9111227C
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509973369.30270.12260422079083111269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e64951cf3664a81d0e9d1d7bc784b1845d732d547c89800382a0e544fd086ed
Date: Thu, 02 Apr 2026 03:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775099733
