Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154412772D
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773530094; cv=none; b=i+eRV+I54J5qQ2nwrVE52Mtr+W+crHKlRWYdJhJsUTkDEX1jNSHU8zP5Ep55ihM2JjoleFMO9VjZkU4hKNy1p/98iXAOz8xxPOnArLGPmcH0TeaQkxrTS4KdPvmQj1+Ay3tTRsEdHV4HNlbgTFHWXj45n+w7QiWGb7JcrkytoPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773530094; c=relaxed/simple;
	bh=LNhVABvDMy9Zp6T+ZhnXZwQJkX3jumTtrrnq2PykhaU=;
	h=To:Subject:From:Message-Id:Date; b=LWPfwMR2NkGACmWRSTdqyUJx0viE6fp9uy2+UisP8vG80LJqJ2Y2Tr7qt4KovjV8VE6swlfYkjh9VGlBAw+IBL4YxRuynYSlMCncdS04wT9cezgIkqfn/pshqoJbXScTQd1S7xbbU30SKkFRONF10Qg0LubaiajbufjrmBFfHtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S17gqZpI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S17gqZpI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79F7C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773530093;
	bh=LNhVABvDMy9Zp6T+ZhnXZwQJkX3jumTtrrnq2PykhaU=;
	h=To:Subject:From:Date:From;
	b=S17gqZpI88DbuSR3qTYhCmQsvcswgo4eR9GV+NRfwRodd6U6Pf3ZzUfsIU1FFiMf1
	 d6R4+Kgqgj5Vd+LuMJaq6j/4D+rMfQV1D0sce2VPrwDLOHTwuGPzrG6tQxip+TqncL
	 Jv57MwT6z6RrKiOB+OY60/oJAOvYoq7h9qcNB2hnvAazv1QxB1oPgcOFmsqp8Cy7B+
	 dLsKhaMJxVii52m+Hr5OI5Z2TzynC76nmXTxPj5sMx5b/bXfl0BGoEK0p9PqTNei6E
	 4ivOerYtkikwqGpHkhbFpw6wedli9fleIR+ZPyGYxOxmeei4F1R+5SrgbDRbLMCtbi
	 enFL0tHxlzvYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9208B10854B4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353009357.30356.5561963881996235284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b0313fd25d7deaf407f8fe3566123865fed23468aab281b36294d3d672b2b9
Date: Sat, 14 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773530093
