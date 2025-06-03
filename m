Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F32E6BFC0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748918395; cv=none; b=cOUSQg8m/9sN5ATFfifrACGADdyDkxxIluCfoWY/s96Z6xtJW6/VdegglBhEG418Clp3WU+PPZAP+00dVEuSK4KdYc0uAuu3+xIdn77d++eAJFKob515naYE2r43LoCtSF85MeOZL6/HPIC2WZe7oX9mh5uaFuXeqXb4bTOaMgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748918395; c=relaxed/simple;
	bh=DXaGsGVhWLvaBPoiMbku5mYInz41djp8CDPheGNPXYo=;
	h=To:Subject:From:Message-Id:Date; b=j3Dj/HRzAuCw6sFP0MBhIzliy32BSWY25Iv/fmcJEPO0aqzmhz4IScVu0ZIwg0BKn1qOFbG1HGkiefHagbjnn5I21Ctr+pAAbYMuNfYDz6Rx6XTETrxgE439Q2tNKNg6UcXqSmyI2R75x3OGr0EOQmx1hY9D371TDS6/KvMmXNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFiyiCHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFiyiCHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7504C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748918393;
	bh=DXaGsGVhWLvaBPoiMbku5mYInz41djp8CDPheGNPXYo=;
	h=To:Subject:From:Date:From;
	b=DFiyiCHsSVNH33kr/1FNXf5Il8W67KOccPXAzbvJMJaaotYrTgskLtJwapP4tOM2C
	 Cywy/wm3G6tlMOpu3vX4uI1naHG28obr1+3+IYa/NUkDkAhO3irDSePRnsGGZ0Hr3F
	 EP76IGbCsXqvnFKTPscDglFWwigFD/un4dxG6wUh3fkUiVnIs+bgGONz5RViwdZ6Zi
	 b3uvwxeA0CoTRGuhYwFnzJXFocSGfe6/b4P7MfmsJDqv866PvZw4kbcQy3SR7Z05yS
	 of0H4VeOClVqqnUTkH0tlmlusrw9HWfBxDuZNo5bkHNKIXXGg6rC7dL7kmgF/13xqE
	 DgqnWnI8d27Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941FFC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891839357.948.15630208582226852591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a263682912540b35d1379279a31003e24ea50b30f879dfc28246c5ae4e7344af
Date: Tue, 03 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748918393
