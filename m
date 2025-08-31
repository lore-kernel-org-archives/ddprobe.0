Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA71F5BAF0
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756614596; cv=none; b=lvbz1yCnHHRLQnHt2DmhtYYIvAEm+fOy/p3gfFEuTZfuxvG9SMwTTcg8Vu1rI0onPGNyO6ObMfGISoDVGnBH9jKm1wI6cKTVD1sufOWtXTZx+Ast9FohneO4j1RIt3pyrXd1HsJfV48vVAuHIUEsS1ML0aRpYzlFA1DB7V8p2FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756614596; c=relaxed/simple;
	bh=cj+UmsMKKzZj7hkPzpkwj09AD7G+BgL+sVYwxnsFpTg=;
	h=To:Subject:From:Message-Id:Date; b=klwDNi2veu3maIBi4W3OGOKmatLsctNmDYajzMtlfpp2Oq9ui7XN3X/y9m2iHGKhCCLhTeiRIqIj+Qe2CDWeaR98ZUqoY0FeBaaQCD7YVK6/VltBWFBQIhRyYojy091QMAw6wlXvJVywwrqBemy5mbZ0o3ZK6kNGJjFRvNkTKdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7/unDw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7/unDw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5072C4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756614593;
	bh=cj+UmsMKKzZj7hkPzpkwj09AD7G+BgL+sVYwxnsFpTg=;
	h=To:Subject:From:Date:From;
	b=C7/unDw6J0GQIrrF+4xCUVvvvSt4aiL1fzodnORM7oMKy1TuYO3+ONnZsDRwBUWCW
	 ug5s45rwpjeC/YhoH+PqrLZGARTvIzk0+eukc0NnU/D0W41zX36fdMLEK/y5XNSyA2
	 csfbm4xqDnn2ji6mH6E2hx7o8sfKi7wH4U/r+NF8NLABfD9oKnkDEM2UHFjsIIgNc/
	 8iuS113KquPTGVIOBNwWbx+Da4wpyIVJ/8llNwPIyJwoYFa/73nFKgU0VbA81OCVVe
	 hzTrsubYheMlJHWibzTqkFFdtZ5blMMzXVBYuu+QlxwywYNQo9ilcyA6HHHyJFfOO5
	 dT3jnPEboybAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A1CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661459357.2705.15083630112285411556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33fb7d4ad18b30124463c0a1d38308874efd0741d6a19f9f0b598a7fc64b5da
Date: Sun, 31 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756614593
