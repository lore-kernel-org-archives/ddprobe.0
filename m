Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5EF1C28E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780709074; cv=none; b=ekt6N8auStwB1yttyexuZlF0TpvQ0rF8vcQ0IEIkoVv7wR95vF5AmPfAw4CLJTz9b8MkX2VB/P+0OSUfDH3PPR/8V2Sr+9/WmBKCcC/I/MOoyaY/fB3FcgPiK17XQHqtUMa5y6oYGR+N6kfh4y9WRxQIJCYVSd+/pOBzPpZMmFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780709074; c=relaxed/simple;
	bh=JORG4OeQ6KF09YapB56uOK5LZeVJX2VBcLat42lmsWo=;
	h=To:Subject:From:Message-Id:Date; b=sgKRjg6nLAyc5wX+Yuaru8PJAg1cwBCmhdi2lxwHIVKsFZu8LkO3JLCyhTwKcnBrZsNqdHhyRDXspKWW8xzkHazloK4GxY2/mZAoiySHjU96J1ZI/8AwtnrqQjEwc0n5J740AzHAI6QEXlXlytC+m7F70b8x5TnSXOG9Wfp7pdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3jwsjg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3jwsjg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB904C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780709073;
	bh=JORG4OeQ6KF09YapB56uOK5LZeVJX2VBcLat42lmsWo=;
	h=To:Subject:From:Date:From;
	b=u3jwsjg9rfejUfuEj+2xMzMpq5iSXeU+vbgO4WqrZJ/GHHVqh7whiN3n8c4Yj8Urg
	 hxE+NtFH3QV7IVJc26Kha1ortGMxMsSgbZO0/GHoRy4XXMZAEsnlIwlIyt/hIlpdyz
	 b+5Y7VXvStOrqLGFwljazFcdvukqDOrBiH2Ibt6uumOUQXx693SYaRoiopggpkI35o
	 uxCjpfCOCFnZo+JyeWGo7D+vYnD2Y3IiNOmC188IzRqO7Kh7yQ9XguZb46Ej4tzTPK
	 Dh9F4+/Z6h9F6ct5vXnajlQgI/iyWrLKZspidcWQ5s4Wj4IP6REqbPCzH4UAleHfKr
	 qkRbzADbSp4LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DFACD8C89
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070907368.16519.16387862336854065652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9af84b426fcfe8fbdfb00e39162f1eda081d57a16bbf70e1a34fcb78845d4cc
Date: Sat, 06 Jun 2026 01:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780709073
