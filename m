Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284441C5489
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749902994; cv=none; b=a5C5jjOMqc/es568C4Vb1FRxJrhZOTobWTxxXqdSkHZcdM/sHk2HDBr6DnPyv4m85yR5qhERbc0EwJy00IXcVl6ZkUgItK7tddn5LDo5u2hpXH528tcAyaNZ9mkeWili81YmSha+ZOFSB54ymwjxHHGawq4/bpK+yHfgMX3Y57k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749902994; c=relaxed/simple;
	bh=+LUK/M71Uhrb2dlzB2shAOZEorLnJCPkKs9QtkYrdRs=;
	h=To:Subject:From:Message-Id:Date; b=VBgUAxrLZTsXWTMRpk/VgnA1BneRiJY6xTS+RD7yIXZxz5N8gJ0JKPHFNOEriUtub4py8J9TwBUofNgJGXvEFmG4847nDNTCWeVzYr/s+jjIIZeZiAWVeVw+M+PWh9nfqPujYwD5Q+fGwgrComem3UEdsJsmez3WlOvpUg2jctY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQAckvy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQAckvy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3CDC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749902993;
	bh=+LUK/M71Uhrb2dlzB2shAOZEorLnJCPkKs9QtkYrdRs=;
	h=To:Subject:From:Date:From;
	b=gQAckvy0JQLpprY42iRpWe8jCkx7aOEBT+RAnfvRembUIo4aVc9rj8oE0ulRuy19X
	 cAgOAM7Pg8czJn8AYcNpIHAFRasWRK0NS8GEi0jdNN2szmarZ3iK5C9X7rG0Mpf4n/
	 JCRNhgY0gi6tbAUoZXlmbsykuWcP8g1TXqQnp4CBaunwzjEgXcsBde4BsHSUeGyWER
	 s/vT5zsvuVfnx8je9RZ3bhcU78Wk8qDfQ6R2fpDxnopoJ/yX9vkQweb0Nr9J7lDaMy
	 uNKv9kZ4RkejohATSp1Zsy7OR01WlKfiSvxV2QAkzHlgOyZ+QDS6oaVk/LYQz80xTL
	 zbTQHUG8PIfRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96757C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990299358.2062.8430377288381167845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890fa21227c39e4f0e49a9b1e0786ac6ebe84f2b56ecf231cc81c7f13e71a3e9
Date: Sat, 14 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749902993
