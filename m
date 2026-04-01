Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1935E3CBE6C
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775039734; cv=none; b=VaCnKmBQm5GAKK5EUSpSnwGJcqYEKKMLEg+3KSXFCLZ5l7sK6ppw2GVWCVIVuECbukbHYBHmjdQBTFTcsufBiUdzQ7XHNQvnZ+1WZuzI4JW1QUXpxFEO7lBe5kBtNIY2Ad3cHd7Zyybdo/DbphYifOLoih35p7qXlNxDgHX6QgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775039734; c=relaxed/simple;
	bh=XQ+eql/PLIpKkog1T2hhmSEE/rpikFM9UK30ZUaMjfY=;
	h=To:Subject:From:Message-Id:Date; b=SuasVoPgr0ao4ItTTOBp55ghcYgYdapClmofP+YRZ9346YwTFu9EjwWi4295Tv2TORKvsHVxLjcx1Sraac040rO3tN+SavRSqjfBgCVjz4BTi+WRlOqPHrK/bDUb/pF+GrrC/rAGACTXO3uzTklAbcPiQe9YYJP7BdPqXf45ziQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAx8Jo1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAx8Jo1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC85CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775039733;
	bh=XQ+eql/PLIpKkog1T2hhmSEE/rpikFM9UK30ZUaMjfY=;
	h=To:Subject:From:Date:From;
	b=ZAx8Jo1rwnxHDdYzp/s7MdjtMfm4Q+2j+E0fw2h7XP+j2GZsM0hfU+kazbIqRWyaI
	 /DTJtfsZBgijWR7yzrcp4fZZU1pMYUSLfouDhIx9lACwVdUm/F3kz2x51qu+is/dqj
	 9WrPnZ7PMhgOWTRFK1fyza3xNB7PGyjcowj2z5Bswp+XVNK6H700VQdZO7kyaovKwY
	 Br6tO1h1ebEdHxHifGSwSevCP/6N6XNMdWiBou7EuK5eQtKdpiww8dBx5wOw9rdsYA
	 5VJm3P5I/ZDHbavMXQ6JE0Dn1AJpH/vndU+69Eb75HPR3CxyYmfKztgt0IgCH0zBa5
	 RUoPeP92Oo8wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB91D35171
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503973369.8611.3013665488183813497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3c95934fafd0208d460609d3b2d8ee6e5a0d3c894b9ef167cace6cff5d1a48
Date: Wed, 01 Apr 2026 10:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775039733
