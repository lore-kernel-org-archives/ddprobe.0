Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C93B2931E1
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789932634; cv=none; b=MjcYpl8779Y5mJqI+LDe/6AOnK7TYvFSRqQtw8q/44+kaZDzca6kDNmms3cxDhZ/HMhHdiiEXXzpKa58tz6ZJxW8X6kdddYWycgemBsXel215CYwfNvt92T5kFa8ChKffSUNKLkS/C8N8RUReDJL+1X4JCS1MQrv5Bt1s0qmy7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789932634; c=relaxed/simple;
	bh=Hw0IHM6uboCxr5HVlqlVZICETpBRJH3eSgZCZ0v/dBc=;
	h=To:Subject:From:Message-Id:Date; b=iPhIolkf0A7LaaAtnYAOjxWNyCLETsHRnf1hZZoMoIdisMAe1Oi4JZ2khtONXFUzZIoeBadtO5Jk12ODI2v8mBa1PrEixpEdIrRJnztXGioHfoQnjTK9iRQwM4yADldQo3+csRGB4vWRIXSLCE5wjoiEapsv/nao0l5qQ9W0CvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNssG9NM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNssG9NM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC905C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789932633;
	bh=Hw0IHM6uboCxr5HVlqlVZICETpBRJH3eSgZCZ0v/dBc=;
	h=To:Subject:From:Date:From;
	b=jNssG9NMFLq7Ud+SFMRABDaVq29iaR6F9OzTihcjSNRnbJLHo/y53WxG5NamcGqn7
	 nMmhs7/JjhbClpTFyUWh/VHmcCcYldw9HRAFwEbeFDEDyaGGTKd+17soV6Q50PbOlr
	 6RVaypcNmcfeB1EnXVgwNGyu1naasw5kU5X9scB/O3qCfGdW5XJ44VQPuXvZFVtglJ
	 pfPE+b/CfJ17o5QlGNwNYgPeIqUY2Y+5isYnWNkCqWjX1tUBWLYpY1dkvWDsN6Qldq
	 DE6i16MMNFW+nI3m3LMBNhN14VOy4+UlSaWFOpszL0D/CCIYq1X5ILGAPqtwKH0Hs/
	 yvnTeGxR0vKXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1D7C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993263368.12439.2523480951586371948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab34c64ce5c45bdf70765a8d7189f1672888e2a586ccffd73b68ae2db5c2418
Date: Sun, 20 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789932633
