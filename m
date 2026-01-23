Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1167F29DB88
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769153634; cv=none; b=qCxuQQOf5h1arp83w2YQ7d+O5sH9RQyDBnVv8HFlD3Pnlum2fxbGb2f9ogJoknSpNt5X/kpk7yyspOfHvQsST1m6D51gEll1LQmmU3KZRn//otpkYIi5cFcTnjwdsjoTJNXhpycKPgKsm/EIIMF89ubdjFbxKRx2OuUq4PGarps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769153634; c=relaxed/simple;
	bh=adaoKcyKWOySWltMXiCA6crI+EQjy8AAu6riHhID4jo=;
	h=To:Subject:From:Message-Id:Date; b=fOlASvVIALJbAvCiIjWA2KBhQIpQf5DShx0N+CaPiE6BaAhv99nxFMuJeAy58/FLkGwdSZjHv9IZAyNIqXrb/Y3nESaQeaACtq4g0aHw1+nmVxNaUx6YwpHvWzv3GgvkbGPGSz5hZxvBj1ByVXK1AL6zt7XZ9rLPkC50q2skMk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LA/PZeri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA/PZeri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B3FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769153633;
	bh=adaoKcyKWOySWltMXiCA6crI+EQjy8AAu6riHhID4jo=;
	h=To:Subject:From:Date:From;
	b=LA/PZeriBrqauWUx1XsTmK0Oz/GSWXNoS1jnUcYKeuH948uaJykNtMAlaHmjZ/HVa
	 vNfQ9yaTZEm0DYk5IY8UR0e/KGgE9DkpGcwrtU2KEk2rJuEeJ/pOdKD2HuRW9EOx93
	 JJ81LYRdO0yAMo+B0CTwuoP+fiKFT9AXjd7s0rawDru+oIqFP1IgwNMpUxLPCASZec
	 D6ZH/CHvED0pP8ZnmnyQL1633KQZtA9v/gGk+osv7KRC+texzqu83ukRRkUpkab2vA
	 kGo2cAJAWTgHusoJ3Ge9iMPnYcly590PAoF0wR2OTuO/bCGmOaj5Y/pMfLRWXDf2ij
	 Sr0OB7z49cKGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D66D72341
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915363358.29522.4050892299093575613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d769349ada11c7c11f2be26c722e2c4e1735a6aa27677cc8451eac37a1f2870
Date: Fri, 23 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769153633
