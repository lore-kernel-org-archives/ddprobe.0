Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849EA2DAFBA
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763543514; cv=none; b=YaQgLvOOddLF+a3N0L+i/nViEdQpg7ZRRg18xM/gvlW8lUVqTVtnpYTU/idSJ2I29xMY0bSaXivtNt3Qog6battknEK8mfZaJMV+BSsAf8l/lrIjxxLxw/yi45n+t3CcAW815wgPNwP3va46wbqXYKgOEwKSz6SE86bf2+evWC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763543514; c=relaxed/simple;
	bh=NBqsY+jUD4yKbt2psmMstcbk0n4/ACcEBi1D6X8v6+E=;
	h=To:Subject:From:Message-Id:Date; b=QMuJ7kJRJ4ldwyehw4amew2/hUfOsprkSwLVtQ7gyIAAB/NAujOGM4QXdNkOZjLqrOjtT+4ao6evGWzyOxLTEM8Pegl9tY5rmYSzfXWO3ho1jqxpayAm7bZj3I+t5WWE4dVDjXIPLoz7Hrto3+J2TiF+OPL99lw/5++WkPU7xJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1E6Kl8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1E6Kl8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D950EC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763543513;
	bh=NBqsY+jUD4yKbt2psmMstcbk0n4/ACcEBi1D6X8v6+E=;
	h=To:Subject:From:Date:From;
	b=C1E6Kl8pRnWfAQtYqXlM1fXnA3in2TBIfKwqvTKqoGTlwsrqCV7iV/9/l1r4Walng
	 DY546VeCD65fvm+nRQbEULL/Axs7dWLHB7T5jfFyyukYYc2G68hOVwwu58inBMq80W
	 7dWhnD6uyZVZbM32znJzM/l2j2Awr9abrV3qVWsszzX72P9RqBFxXfuHK3+Azk9rt2
	 +yEY2/ZOxtEZb2tczQfUJ959aDT2lfopAXCNxJWucY8m8KGVDeW/bORjhRctovJkmm
	 TsVAyzEiYIFS1k0B6jvrngbsUEvwAsfjOSR5cScr3ouyApatJcMHk99mgvzw8MthQW
	 XBSXc9mEhOhVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E92CF258C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354351358.30930.17370607308048574133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3742497e4964ca7d610f594042387b852dc61759d4033b32194f6db5119d501f
Date: Wed, 19 Nov 2025 09:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763543513
