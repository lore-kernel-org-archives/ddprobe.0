Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351253321A2
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786860634; cv=none; b=DSJDeDUlJkb3IyzSv6Kamsq9uXoBUrHN5ri58mviJEAh4CR7/9EWspLxJ0unmP5u6hhUsGYm3c6T/5DXm6J8CIQfvsQHYJMH80NNr/XvLlB6NjuAnK0y8GgHn9H+7MUcFMJhzQbXrfYrQ0FsgpgKiEuR6c0HxVQimd2u0Q/DnTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786860634; c=relaxed/simple;
	bh=nJur97NALkAyaINqso0pDWNavVBeCJztpsjrZmKTXnA=;
	h=To:Subject:From:Message-Id:Date; b=Pe0lTdSgEvCKdU/w81FXAKj5YNpviRuAmSc5xO1dThMJS6ECjVu8hijRx2PVPiR/UlbjySt16QO8IpfL2lhWqAWBMMhCVTWOxu3GQ4JCiLmjxL25js+GiEq3asAlV6IMR0zx+FXY5iVJVhcZ5+iAEvXp7R0NaNM7ub6se8DnFhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOsD+LxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOsD+LxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7774C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786860633;
	bh=nJur97NALkAyaINqso0pDWNavVBeCJztpsjrZmKTXnA=;
	h=To:Subject:From:Date:From;
	b=cOsD+LxIwgS5C4crqb1vA+mB9OSQZkN5zddFM7wh0k1znfN3c3QF8YEmfvOJE6GTw
	 6nUU98pGS/oLXasbeM9cl8YkpXJQ1y426j2fNFdlf0B2e4OU+T3MfMt45f3vGr3PTu
	 9BtdARMdre8T5pDRfWBv7/YuS5mSpKOBPRysSlTzFXIQlEkR07TzwNrTnunv6YjhHP
	 Fym1fNZjD2Qhmptm6q5xH06fUZEhKc0pbPR+afMyhBIejJyVD+wpZp7V+JyFuQyg4o
	 NpMldomxcu+BMGSURF7zIEC03uQe1xAVUV11vJ2iaTFqOwilUgZwALD5vtA4j+/S1m
	 Zrv8touCbPKUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D7DC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686063368.31811.9773380763896634008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e75f5a8f0d08e7b3017987f5fd6e1cc80295086a44d2572324aeb2b00c8d56
Date: Sun, 16 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786860633
