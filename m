Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E02E3EA64
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716576803; cv=none; b=kAuQBz0DX3mOo6irLxfrC530bTuuzkOEvcPQ+g0SM81XtZw5gis/Ru4kyBjLICMcGzveYarv9BaxKGfR7ansljhHaOm6PBxVMNops/6asgWRsDCQ4gaPWTDuLTj0OvTZQocvVpvPcsq5sgyytL4WL8t/IY3w1ciQqtmstYSdO7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716576803; c=relaxed/simple;
	bh=6yAVGWw81WetrGhnBKw1A8QxiB7CiAYCjDWxxjOhGNU=;
	h=To:Subject:From:Message-Id:Date; b=mIHdWsbQlfUoDhiz0caf4DBBs14M/0Jqx7hY4FAd8iTAjStPsXZfsKTxwUPc6tg6mdo5QJecEdepJTf7kKl9FiI0oNqOh0sUNedXbiKws0p2YWnowNmnwypHvQf9c7IElcnmojvwdvFlav/uufqYir8rJLvf+qOu9qBg4VJL0vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlgMz//r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlgMz//r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5ADAC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716576802;
	bh=6yAVGWw81WetrGhnBKw1A8QxiB7CiAYCjDWxxjOhGNU=;
	h=To:Subject:From:Date:From;
	b=qlgMz//rcvsKBpNb05NnLcYtUnPsj9pq9omjxPjrzgZcfQ5VdXZ/OOPF7+Eb6zkF6
	 KbaFOzWd34Z5lsSruiAjPSqubVuR1iQ6VEZR8KA2oFMtnNd6HIwXWCfg/1IYTERCr1
	 8yKoVIMsrWimmHHVfjLEjBUSExlzMOoj+gsN1U69b1FtWnOUZr4z6VB+pwhhQgHS8z
	 qiXmaiRomcNlb9zSQZg8gp/dtuWgZ6gr0YdHF4Vf85XQAcrFshxU/fsRW3SEdpydE+
	 4BLmAXcOwLxZiEQxiNXZPGEN/FIiuE1asd5ai4YQRMvXW9pP6Dfgh6k0sQJ7JxdjxQ
	 43Jnrr+Pa4BDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C3BC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657680279.30683.17447829921991018629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53379aa4fd3caf787877b24b7bbee1099e86f2f2a011aa5dc0329d4a52261613
Date: Fri, 24 May 2024 18:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716576802
