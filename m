Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFFE33C9
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727284554; cv=none; b=NzOGcOer/1iRKiN5N5IUTr97+qaBIe/fvfB/Id6i9OKzDGI/AwkAGELoRAtcRfLywwGADdTGQDSlQW1Nm8k0ldGe0OOmP9sCRPSs4zgrlw5fY5WVNW+JYY97N4Pr5PZrtH/LXDhQV4wtgi7U0c9884ZzbvuI++/IQ46xlmx8+I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727284554; c=relaxed/simple;
	bh=2CoPXg9zdCRka6nR+RrjJjP1yZTRhaTKXcsvI964Ss0=;
	h=To:Subject:From:Message-Id:Date; b=lh+mS43BTq5erwFMhOTo0FAyetdnDVafXqW91rjCfEjLFtIPSoqY1oXhozONLEun2w+feSUF4scjPYzZ/vPdyoihF05Zhzs5kQHUnyjVD1AJf5K2tilOPkZzI5YuQL+0J8apFNjVmDAXIDAMf7ETivje6FlVMwFPY9a2O092d1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8tZ6+eZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8tZ6+eZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15DEC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727284553;
	bh=2CoPXg9zdCRka6nR+RrjJjP1yZTRhaTKXcsvI964Ss0=;
	h=To:Subject:From:Date:From;
	b=Y8tZ6+eZSIuM33iazssBQDew3HcVYvYhN/56sNx2XgTkeo3NrcUkua+SWkV7M056I
	 n95ioj3SswJjQFUrVX9SVxEg/JbxaQEfaUDoN61xuGxLBERfgDaRQSzTCGdAF+7EM3
	 b10Vd5s4CVrafpFiMwGomu5Y0eweiqxuy3/RYFOFNk6KnbiB67I+siHJtXFHMPVUQZ
	 ihMwt6Pqzi8L7FLA1SNF4QO+oolrXGHnQvEIUImdXxRChXBWcZewBI5GZOdH4T+AQV
	 XZGrYpZjwHNgzmh5G2XH6UNIhaj1TFy1fOfI85IoCcNLMNZFhnSIBrqxCl3f5311mf
	 qLD5+o+0MvSUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134BCCF9E8
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172728455358.21654.11209086668356641435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f078d458f57a2610f2f8df16d487aee81dd3e50880c4b1711176b366112fdd
Date: Wed, 25 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727284553
