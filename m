Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596FC1A5B9E
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786019434; cv=none; b=WFjLJHq5UKk1gSU+QtBs6nAkT0/icnTyDdUTie7/89x2GKo+IDP1kHGmzscUw3cKNmQ/9r/xnn5fmdtuUssPFmKC/dy2pYB66y5hXrQAw/eTITA3vy00YS5hYNi0DYZTXfP+A0DEyMPJdu5QZEA3M+WAkssEpey9Kspf2jpmpd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786019434; c=relaxed/simple;
	bh=qAuafFbyC5h6Bxrjojy7uqWH6xArBRUlINd39KnjYAs=;
	h=To:Subject:From:Message-Id:Date; b=nIKA8N9OCg6wpHL5GGRhQWUMOIa5ztdc8grDae+vLg9gYCFOClsLfKfVEIb+F/rxg8wgowW43+Z7fJiUTdimcOmVifoqjGrKGnXAhjhFgQJYrtV3sqT5gNvKG61ClYxuIsXHf4GltozLQpQJ8em+8rq2iGysuutjhwEpnlfUwo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZPZGR5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZPZGR5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9C1C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786019433;
	bh=qAuafFbyC5h6Bxrjojy7uqWH6xArBRUlINd39KnjYAs=;
	h=To:Subject:From:Date:From;
	b=KZPZGR5g/JisET83DkAn3nFz/xr1UkB5bKlErggln51VwxSADcNClZ2epZrrPp58U
	 VZg8Rt5JWww61QN5w2HCW3NTSaQtf3DbsO0rT1eraMYIP3HDoocH7Qlels+52q/5q3
	 XsrnZMDWZFeLM/cs8kflVIK4vq7ZGJtcy4vZArInoKcoqC/9KoOqesJF58lGiZ9kxt
	 KV1TihOs4tg0Aj1ViGKWSdQwMyDmD6j2J4RLj4lK30vl9gBT5wHc7qatoYPaIOaW2g
	 iGPNhJAM6oqwloHSFARu/PqN5bqBNgj2uCUgvltQRVjH8xylm0z/sGP8uAZ0HqJlrB
	 L4yE3fxqgrjsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFF6C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601943369.32248.12253161832238011349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beea1b7da9ccc2eecc188210751e34e62e3394083fcc6182c99f41f8c79d1f75
Date: Thu, 06 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786019433
