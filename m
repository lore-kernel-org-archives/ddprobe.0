Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC3227702A
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759031995; cv=none; b=cCOuqXmo9JUWZ1KpfkLoFJ2HP3Da4z1+7UtZ+aStN6sfG79n/QMF1k2juRnYq7mX89nVLYmXnupNtNbLpR0ADHneK/CZdMFeRI5OPQovFeQi/4NN/prre1NofVByJvq4k82ig/G/vsBHPdBWr/EanLgX2KPf/bTRhniSYf/DGZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759031995; c=relaxed/simple;
	bh=ehaYvzVi2fafvPqcwX1cdDlDv6nkLgEmC9khsXN5YzI=;
	h=To:Subject:From:Message-Id:Date; b=Fu/QqLNfMLRmnsMSdzi7BJXZbsiJ/oKIWj2XR5ImTpdVv/ETDBjzWNa9sI6QKr6Fdf0c9Z39PlOaJwyo70Y6TrDBNt9//N6TDODjwO5SzdEyo2GjlaPf8LrQKqTl7fexVCX6l5+iTaBXPs35iQCB6NWjiEKR5up8Cy1+p3RqdXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZGheh6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZGheh6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B081CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759031993;
	bh=ehaYvzVi2fafvPqcwX1cdDlDv6nkLgEmC9khsXN5YzI=;
	h=To:Subject:From:Date:From;
	b=qZGheh6kJTqetyeZjCDnlROaC6r40at50316qs1Vl9tFFdN0lj/lO34g7NcG5+ECr
	 nH7tR+1Om6EJfTkN8QdMrBma4RUJy6Wuz2R4TPOIZVwJExnqbTK4b5CF4Y3gcS/5gv
	 BTM6ekYRLmIntvFnHB3tqeuYzhf3sjrez8cMOBBKTkN3uwsZS/kU+0lkfjYrF21jQd
	 utR4bRPnRbAd5qYHSCtBWD8Sg7QVy4Z2Z0pKqS1Ace7abJJIanU4jKQ0j+9/LS5yoe
	 Tw5/RWKHLtPziJQLlDgG2ewPTI9WXjceIv2kW8kklvrEEGC2TvdetMJq30n2KdgvNY
	 xzM4MDN+nqSUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B0BCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903199360.8630.17521600027781580285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8099275a92022634fb08f3857254aa429238b8efbdb45cdb66ffc0fc312c3ff
Date: Sun, 28 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759031993
