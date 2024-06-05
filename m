Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4673B190497
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717583783; cv=none; b=n3w2yXl4qUcf09qLWIXwISbgVqp8BB275ErPpJleRV3/rsj7hehA5VtW+Bk8M20OW+lyGkuTDVlrc5wqQmmPKjgg2v9BJk2jdYQC6fJF2av3pStV5EJPGMsDfvcVPsXzkPlyPUErqu4mYATi0E4n+lzvuE321mCI08nf/MGVors=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717583783; c=relaxed/simple;
	bh=8iyCLOPo+Gk4ePqmgdcIPvTNokpUIH/ioj+gFmlW5Js=;
	h=To:Subject:From:Message-Id:Date; b=F7Yc8KyJm9djj6n3B5eNQJeNi63LF+Ea/yJYwYiRmQybFRds/X8q4KrsvV7dhYwl4V9qNQeYdCy3cKH3kb3pGEFTkl5Cpug8pZQQBtKpK8qOoZhaqBE7sNizdw6+DAltEOO18KEJk2RnQPwSko37uDXYdwcvycLYBVuJb8g1otw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=affcudh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="affcudh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B9EC3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717583782;
	bh=8iyCLOPo+Gk4ePqmgdcIPvTNokpUIH/ioj+gFmlW5Js=;
	h=To:Subject:From:Date:From;
	b=affcudh5wzrIKpmycQj0Zok4APZxoUipCYF5sO73kdQoM1Xm6PCvXwxXtDRZkkn1w
	 o9ddugzUGx+tsUre51cz+OdSHIAWDQPe3yI2qh6Spn7dXGuj2lRUpHqPWdN6l87kD8
	 BdHuDZ0bvsvlKY4PAf8Y2/n7RQZXpVvsxM5Bgwttd0q26jJDUWKT2l5BZJM4QJXrTI
	 Bv3DdpDQh2pLlVPZ7C6Fuqj3MUHRry7UPvllnm2A31Gsp6IB2IUXT735QzljS3v0U0
	 AZZdyNB8CqF8ciVmh1Ej8kvYgEjRMSePPMtJKb+Gp3cjq9unZWdFow1eMOwSA6EC1S
	 MIBkPz3J8GhkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C306EC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758378278.11200.5227997419104062356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554699621748e0ee95c6d5da4d0a794e32aeec59cb2345c6d7dcea779ab4012f
Date: Wed, 05 Jun 2024 10:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717583782
