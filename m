Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051A635959
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768685634; cv=none; b=D4YeKs0VUDVcxS1x/eHV+4RxeNwG3Lkavb1zaFU02TTX/oD152CXes3qItTuaZ4TCqxyQEPJA0LIelTffbK1+sM528m/WGJ6jsYAkTtYLYnsr8+pqM5fSGR2kwnqhlWws2sIOvVnw3flC5hwkGsJG4IjvjbipgAyyMsY+MeX6S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768685634; c=relaxed/simple;
	bh=ltvoVijS/TaJSnI3Nz6iOG8hdMKiGGemwZaH2kMHgsI=;
	h=To:Subject:From:Message-Id:Date; b=jNHudj0trx+gcze3htIfYsQQAV3qzGmdrh4thzlsEP8dGH0DpS7lj0wDmgAqZCC6lIfYGLf32y/+RxcjlvLBIVElbf2SUw7z7sQ0c4YKax7cLr75Fi4B0mjD2M9OWbSAhwMJwzXyS2YLk9W9S5Nqi8J+3CKObRyxu7mdd1QMlL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTOapNKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTOapNKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB58C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768685633;
	bh=ltvoVijS/TaJSnI3Nz6iOG8hdMKiGGemwZaH2kMHgsI=;
	h=To:Subject:From:Date:From;
	b=qTOapNKXfI3ci+vFlbPb/OhP3VPSCPlVVJ0nkwsbji+A28/cS7Tm7j7ylsUCKNjaV
	 Q6OqY6Uy3NUojf98l/uUgIUR7aueid8ZcrxQBhfzQIODSeSz31LEVXIkE/HBrgJBDH
	 8ETEk/wSDc7JVYPVo4Phc0xCpfkdAX7dYyyCJmWSwNYwrCfDroKThy+50KUrO22qZ/
	 isE7cIXkxHuqJwg9L98/5ZmpnlnnbWW8D8XheFwiYTzzOHbbSGzB7f+eiWVPJ0V3HZ
	 cpWm60Hq2kMG2MjnJtRhyF4LyGmX83jaNeLqEjLrTgpx7Qs8BrZlYiQFCKgnlDquJM
	 0Y7HNj+SQFYAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC41C98338
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868563357.32248.14598033789177911583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab86ef500cf7ef5661af98bb652a5346dfc8803428a553cb2c5fc2355ac380c
Date: Sat, 17 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768685633
