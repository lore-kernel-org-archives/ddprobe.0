Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7D5341648
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771429494; cv=none; b=Qta9qHx2P0oJ5i8AoUvjvrEmAs+kll4ULuG782I6bqvFBvde0JV6762fqKTr+GkHp20I5Ky5accSxpuyTXrMGpcSg+QkhujGF7n62kGUVd15sVSYz1Qk00nbj1QRXP9Ohk2+8oHIikQNCxMzBlL+4QazLLBLa1bsUzZw59990kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771429494; c=relaxed/simple;
	bh=hZG/wZJnAomJs2/bSbNmlqxw+9QOaVHhbxcLAdu5yEk=;
	h=To:Subject:From:Message-Id:Date; b=sURun+1fE2IWLea98C+TvLm7GzHmmjHtZbDkooxCFdC9Eh4rP5i7W5OXqkZ7HBQGLPYeUjQcRMz3+phcGkEe1O51nMHqCU6ieh92ioQXkZMaz4iVDDXhlWictzkYs5vC7PC7NbFFtfG3BUdeEUtbMrPHKk8xZSk2PosRy+DowUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRUlr56y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRUlr56y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A999FC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771429493;
	bh=hZG/wZJnAomJs2/bSbNmlqxw+9QOaVHhbxcLAdu5yEk=;
	h=To:Subject:From:Date:From;
	b=pRUlr56yk9i4y4lwCiucNzy0j2mIzoShnfgzwW7Koz8P3b8NyrEPCLt1DbG792LJz
	 kZBbSYWLyiQra+6syEgsT9k+U+n8ynrzwX+EiopTubS4Lv81ITiGTc0lKEVzBKr638
	 CayPNUvAsriJLC9OQnt031+9YeSxxTO2OVf6zV2cvr99dfB5XysROMgoGFeA+reJm0
	 aH2SsA+GnCPE4FJ76nQCZqtDbMa79yGXYQENFoZIubDOZhNCwNcvxVoIsfu0hs8o7n
	 rrAyWZvSog0NyGr4GmggikrrwNVw1r1XyEkdCLyzAfY3qg99aN4F/6f9TKbYpr5j4Q
	 0ucpmWZsQDHEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945A9E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142949359.22270.11793844768981677640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7004f990b6f2afe0c04b8cdd27e750f4f32cdc5d6ac10b5ad74ed31d6033afee
Date: Wed, 18 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771429493
