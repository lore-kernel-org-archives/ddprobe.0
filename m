Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173C8EEDB
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727027154; cv=none; b=KjmrVvBS42tqJ19BW0oKoJILdF69wCg1U4zOKMxRAGyRAjkBYB9kW4llVkPoQ0PSooo2ObmCFyRcmfBzDHTkTUA6YamyAwqi1De+fBWE1E9vFwFSnENNkUdEsRNEV6vULdxG27zbVw8xb2WQV0+Y9+cH52YcbfZxJnCaIQT1Zvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727027154; c=relaxed/simple;
	bh=l69luVQHIQvdYENMsRI57IfHJn3YycZ5jsYVVyVTbSU=;
	h=To:Subject:From:Message-Id:Date; b=gFzZKda5dJPRkXsr0DkvYdoG1O+dF95xN6yGO57u63bzpVB2cWk4s1kzhyIvxGE9h/D97xC5o8PfJiMUXcZN0E94gxAlP5Mdb/HaqVwtrsYlIrX77eZc1dIQGzGcoiJzMpUxc3fLU0HyKb7Isan7ZkT7OJKMPzEl9O4VvwkBBec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTtDXoZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTtDXoZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07C6C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727027153;
	bh=l69luVQHIQvdYENMsRI57IfHJn3YycZ5jsYVVyVTbSU=;
	h=To:Subject:From:Date:From;
	b=tTtDXoZaFufgIFmBylLqFZ0hX951CYp5wclaCTaNzseUftRUJR4p7WZvan2N0ySNy
	 7jxuDdgZ7p0DP7xbyABaRaAfTmR+Lp0Hw5m0f52it2oO3J8ON5JJazA3t+V6wx2YZY
	 iMpfVQHLtWGD8hVIbsoKtbNVZj8zDDngPkheUt/AcCMkyngCZRl1i+/D0Nx2xi6Bcb
	 I5n5J+a1B2Wr2mRHaWs3jZjaLSHpOqho3MNFKmYFp7WpaBaPCMZRlTpg9gXPIIg31B
	 yI24o7LHGwcguX7Uk9j4+1xDN3BDzb6Dn31P0n1BzWo7QykBJqGRLzJVyXJoS6CqNS
	 UPC4gG87CqHpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D744CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702715363.24306.15985626123918299714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04ac0d140a7ee91d924249debabefcebd98b887471b59958a67feab051a785d
Date: Sun, 22 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727027153
