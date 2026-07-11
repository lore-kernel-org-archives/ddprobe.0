Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215E33603FB
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783782514; cv=none; b=Dh0JbbHMllo08Gv/nMmvd8+NLtNNpLakZNcYJJRrZa6kJa5h7I2mLxd79yo7z3On1+on5cTyeo6j+j8cYMBkJtg5BqKj2iCpga+51KAmN5auNY0JGQUGicSI0dKbXo0uV5E8NIk42bA0de/X8h73Oi8+Xf2v4QckDgfncu/Kf9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783782514; c=relaxed/simple;
	bh=6nQNOUDnEL4bxDLLkbyz1WryEdbdm+CSifxuw3A/TfM=;
	h=To:Subject:From:Message-Id:Date; b=TXArBUJriOnbxJ74pGKjTVFlnvFTWhAcA9vsmp8XC8zXrYm9VoRvp6SLI6kY4twy9iAWE1aKabUz3eh653xdUAD/ThMW0f5WHzM5OC4kQ+xdGzBVVdw73W99hh1QU4032WMXpT97CEMK1uskH8CF4tFAzgn5ghn3uFPzqTEweFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FT7mECJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FT7mECJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E98C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783782513;
	bh=6nQNOUDnEL4bxDLLkbyz1WryEdbdm+CSifxuw3A/TfM=;
	h=To:Subject:From:Date:From;
	b=FT7mECJs2Ujdvz9ezy3azw+LU0w76fBymTBj2tu/p4bLbRq5gCDkrP8msyq/m4zQS
	 uXBFVSL/Eqlt6PkAnA19id5Jm6+Rlwn5/tVLk0gtrRu4v0VELFgYOTZv62Zii2po00
	 jC5AJCqjBys7UdaJP10flnM+ZcDVkAombWfYkKfyUHx7QAqbTVvAmWHyRLW4L5k/8m
	 k2rJNvx7uZV7HUb4GD3yjq0jhpFOMwPERaLyy9U0ipbHpC3bqvTTEUDEZ+skUunX7m
	 XKE4iB2Rqvg5p23UJsSVjm09dRGhMn6vgzB+lXs1pOfqv788gCrJijPTKN/rehlObQ
	 B6ZCXO5i6yd+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EB2C44501
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378251373.31518.5395944916027749821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961421e8ec2bdf261982ea31bfc1d817a80eb56da4113f2a6da935c45d438183
Date: Sat, 11 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783782513
