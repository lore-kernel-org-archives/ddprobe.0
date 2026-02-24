Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D8733EAFE
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771969493; cv=none; b=Ms+uyp0Wl4NrD58pvVcPJdshXJojdHBaz3rwYdtZQOmGmI+AzR7MLm5Pp18Xkst9AS0TYvq+xuQsksfffCotCkRzK4R/efXChoBFrUC6Mk0AS6baHlUO1eTO3vYiBzJdk87nLheDjw/6xXwiSd5AGfaDTFVLxGL+/CoetCIDPQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771969493; c=relaxed/simple;
	bh=d4J/7uD5XMi4g1J4W2vRHIovsckvs30I9Usj4MXgz7k=;
	h=To:Subject:From:Message-Id:Date; b=hClzM4wS6Z9sHMUv7nC8XBUTdzCez0331EnjNyNlFtUOQqzZz9u1sery5SAJA0ZCOm2VvPJRi2CCEZVSf3yAP/975DNDZb/WecNI+bCr9IFgipB31GCR4GpTPFz7+GzfEaP12SL0UKZTufSlCZ8SKK+iznZ6c8CgNmDaXYds9UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeJvh6hz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeJvh6hz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD623C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771969493;
	bh=d4J/7uD5XMi4g1J4W2vRHIovsckvs30I9Usj4MXgz7k=;
	h=To:Subject:From:Date:From;
	b=eeJvh6hzYbYFnOo40SHJuSumumW3cZJoSKsEQDYDxFHKtg/z+xAlUurQtsl7VNohM
	 1HyM8dLd9vWhKC1TFuG7rV3HKpBaTp/Du/aeSZjBIrsLtSYZjeXsVLMzxxRc5/q63m
	 LqrVMbNhIGs/lsaExjLFud+/fHDbROoiFefUXDFJATURlu8rEc0H8x39kpMDmKwVzG
	 rgNx9V+vHmqrEIneGs/UMkYXt+Y2qGuKvc1gKcPpb2tJhNMyABmeWsoVgQsdHSkuI3
	 te9DxWo1e/u8N/OshPxAF7ZyRFNk6ZU/h+IgmewzNGasHGfOsRHvzCnMABCghKJTp0
	 XXgWVeYuJMCow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B32F4BB93
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196949361.21192.11466559643793142952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88558c8209d342a5113d114dbecc1b0f75c8b87ab69cc9de83660894562d854e
Date: Tue, 24 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771969493
