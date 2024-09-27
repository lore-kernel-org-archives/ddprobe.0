Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4862F2E
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727413554; cv=none; b=T6syZNLLZncQC9Slfal7fPCRmf32LuSAAyO53TpdCf/SHDcOk3hokRKq0ER4yStv8DW80WtjGDwtI9JFvOEHof19KrPl38jFqomh6yOAqZhj/s6bVUHKxVqy05CgJ1mkBYl0FYp3ZcR0hviDfDvDeuHm9olGy5Ur/RpITxMukcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727413554; c=relaxed/simple;
	bh=PeoZ+262tI/zVAoCMVjyALfkw8yrkLCyolwwJwuZWXk=;
	h=To:Subject:From:Message-Id:Date; b=EJqMIXjNT/jRESF1gKwNFH5e+HepFnaXkbYrSGxC4ZPGfNqY73GSilevSeb7WDKb3qXnJ9R20MhGo2vUIRql64srm7doEpgVJWxKTb/SKQKg0qoT5v9RvQEm5xq65M9LLc/uv6KwKUZ6ggcYNUfAZooFQUcMa0/8+NKvI/qNjRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBPnvJ4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBPnvJ4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF591C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727413553;
	bh=PeoZ+262tI/zVAoCMVjyALfkw8yrkLCyolwwJwuZWXk=;
	h=To:Subject:From:Date:From;
	b=XBPnvJ4ln9ivufextJSM9MC7ojalEAR0AXe2iBna5leBYWK1oBAKGl3lC3OoibEM+
	 v71XgW/BlW0jJ50ruX3VoYsOd8gD89YyzMMoDLJfWz0vZkBWLIMeDbOub45kylz5tv
	 Rv5Gyqs1Rqw3PrAh7ccATM6hGt3PMMp9WnxrOUQIBnU1wLsVksOS6elTFasm4CUbGH
	 RObznHTkZjoP/Hen5hUZ5EddXLHmpxr5R0cdZoZNg9HrRxRY6A8ELexoijJj4CZRLw
	 71NHx3jaudYTNZcQDQLXJ4PUMxqvH/ABHLL/3ELnpjOnEB0zuut0K8Fblt6c6OgGHQ
	 YM40j5cpXN0vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FC4CEBF76
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741355363.19930.18430565504645867096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b79270e5fce63a98b03b0f4c61bdbde74c150b6d7f48394cb39e23e9fb39c5c0
Date: Fri, 27 Sep 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727413553
