Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F191649D9
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 09:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715334743; cv=none; b=bpJ0x1/wVERiejnrkqGjZvbKf4zM5le35MXSSyZ3yahj1OJEoJeQo/fJfsaAoRUsSE8tC42ho94yrk4NY/JyicvO48GLY9HxtQKaZy9UlLUv8kRj6A+ylfqr2tlkTob63tjkGv4o7t17V3HGH+4Bxt6PT10/yLMe8bukQWvPy08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715334743; c=relaxed/simple;
	bh=a3C7bRJWIzCZ7Fpk2uVGf8UxA8Qoph/rtFuPJdwTBBw=;
	h=To:Subject:From:Message-Id:Date; b=Bb0B0VGs5gIgq4P/44X7pviq2Q0dLnDdke0HMF58WNCkC4YpPc/JlSauaXsKjXPQLZfp5ZXWITGzlssYc9EmDL60xI3LVzfPcDctfUvbd1XCYhdKDwa5hv15BpcImt5QhL0V433hQX0JSpccYbOXCwjbkSMKsUsYi+WrDmDpSLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIL+k+z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIL+k+z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40C1C32781
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715334742;
	bh=a3C7bRJWIzCZ7Fpk2uVGf8UxA8Qoph/rtFuPJdwTBBw=;
	h=To:Subject:From:Date:From;
	b=aIL+k+z5jKn4BXVgLX4GQBZvAY9gI6D8WQ44P6UibnwC6Brj2GRCzytqtgnlZidPB
	 EdQapBP8cFaKnvoWLb1VM4lrEr4ZgDCXt5d9WqHXRUd0QOZCuUbQ/y+WvIVCiR+gXz
	 +s6n1BvLnOB9bbIOdqIRU4w66+eV0cREJpGuqmF2xCUaHVw8xtQUH3HtAA+xp1U33Y
	 Xxbdu/D5rSVaVBJIlbxJPFlkucsTBKuTe8/mkRSYAyj7sQbumEgfudYd8PJKtzbAJd
	 pzG4nxBoK/kpcPyEtEWjcxPlk2T+PQb5Wb+o2GaEhmd3sl8AjMZHrhGlKEUu7eEK2s
	 /UOwnr0kmmOFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CAFC41513
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171533474278.25629.18183045604431859277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a88b8b706a893c602f4a7d0a1e976f05995cbdfca2151432b6a4b588cc7ecbf
Date: Fri, 10 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715334742
