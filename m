Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 946FD496D24
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789071034; cv=none; b=h4EGrG3VaF1QVpAD1tIN+4M1C6cCK1bKKUQ0hQEc4Yn3jYjqiKE30xfToQpPMFVy96eMExOFFc+95bFts/GRpVtADWH4nCcPAvs7xjRFYzYb3T50OVp67saUlzLMuU9bEn8dqwB+z06rfkbB9lT5GeFhrjjbhYaFtugH60qcKzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789071034; c=relaxed/simple;
	bh=eGr2sHW5RKD/3TElb5iBSb0+JJfonWIfri4kb844rfY=;
	h=To:Subject:From:Message-Id:Date; b=LFXlJvJYreO0sy9h1ORwhplxW30uuYsVNed/Itq9gmFSWCMlac0gq0eYir+Em99QvJatj9Uo25T2IcSr18kCX5qe5O2YtQ9QQNxQ2/s0CYJi6nFiyKsGzAiZM1ALJAN18B9Ihv88vy7bFAHWOuypjPGH7UDhy4JLjGd0LXwo9jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbVBk6/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbVBk6/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BA3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789071033;
	bh=eGr2sHW5RKD/3TElb5iBSb0+JJfonWIfri4kb844rfY=;
	h=To:Subject:From:Date:From;
	b=HbVBk6/BWvPgxZGmy2VYKJPA7hVEBWSWy3S3CQG95uqyUhN4yw4TsTY9O8Li6FZGl
	 lTZYsn9PLd19bqACybl7gIGJuJK8VlE9msXKwNoIQgb+s0kZimMALhXqtugSpextlC
	 8Bhws6mE86pWDUsa+yOc9utAy5ltgtRAtOxP0OXxX9SGdMyMdhjgeCGly8XgFsn8z0
	 ivCSsGT6gyezkxAm8TgFjf/agINpCY/+4a/LEnDd9Zo9mZzDaEt0tEGPyzFHvC5zAm
	 w/mVnAAOtgwOzOkJlkKE4ngGptuq6fgv4UplL3WCkHq6uvm/VYyUOu14yEp737tazb
	 VymTRKuVzFh1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF073C88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907103370.7238.12230113282883293658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a39c0a07ff939eb04712a8cc93225ba664b1ba3f41941ebcf1f5045c7484a0
Date: Thu, 10 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789071033
