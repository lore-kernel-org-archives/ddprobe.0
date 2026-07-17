Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9A93A9D84
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784268514; cv=none; b=ZbPAEcsdakI86anmF3KwsJUgJGYAoochmyTupZh0K4HxFA5prtOjmz6EN680uFtPCShH50XBtnpwHR+c7LYn1yeb5cOYlDwh5NSQouIafmUJSB+8uu6svY7A4oztQG7gzInWVDTRfsA4CxSRaXA3ZSfAQaYY2MoKTNtyxu39rcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784268514; c=relaxed/simple;
	bh=0u7zDKr9q1vzVTeWyFY5NmIvjpWKiIpiWfe4LwBZ5Vk=;
	h=To:Subject:From:Message-Id:Date; b=Ti1tw0CqgjxIzXD9OpbVZodqx7F08yInsq+q4B3i8xEKSbsmDaUfkP7vM3XwfcS+g7IzdvIz59+qYJ+k6Pug4tGK7rq/eEMtCbswBfVSA9JsN1HaxMmiFhtbeAM9wQYa/LMFDYTI7jOyhJsTpSNJ0ojDIlCZSu5Wn5kMxDJllKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoR1KwjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoR1KwjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BFBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784268513;
	bh=0u7zDKr9q1vzVTeWyFY5NmIvjpWKiIpiWfe4LwBZ5Vk=;
	h=To:Subject:From:Date:From;
	b=WoR1KwjEZ00pLuGC+024KJZoiCKnTrIv3m0ziZy9tYjdGLmZ64OO0UwkIWd7a+zyV
	 RqKJAJu1RC5j5pNtU1d9OCIlHdb6LZnLaNBmkAPBxJmS+QsI8tR8Y6kdZAUDVnHO35
	 eB8yUgqUPfWdGScC02tJnROYoPdJ04MvYy3vPeKPewgK73IDnv072jNnhUfKxSbMUQ
	 leo+xGoOHyogwZwqHW2k7TWmggBwDher0tftch/z75jerEBwByBWygO8OyZIvlCy16
	 KntFZVzuJtG/2z3vyPGwbpjKPQZedf6Sxc3PvtDNP0GGypWwCdre6gBH1Znnr0grq1
	 7k9CNaVUDKXGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB568C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426851368.10592.6458809834871046226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a37f8a4d075434e016468d2d7533f99492c09c49f2e6cbe05a666dc77fabac
Date: Fri, 17 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784268513
