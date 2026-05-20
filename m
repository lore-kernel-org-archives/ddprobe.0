Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3911B3A6B85
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779266434; cv=none; b=Yp/dBPWLmnHE6jItAa2gsm8GimBJKZSRYHQxUC4DhNqnDx4xCY/VtFdgLgtOCtLBxUKvhB4HpBZjK2FjH8zF0u0g6ofn5VOQWrniqCfCxOIla1vDbWArJjoMoXahcApO2HlyCcHXQRhIawycin2idn2nqbOPwLRxdgEeTU9v2kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779266434; c=relaxed/simple;
	bh=9Fz4Dv6ajzZRt+67BgZFEg8Vwhmix6ULeetmpoQCptI=;
	h=To:Subject:From:Message-Id:Date; b=GnskU3i/vbT7GtwJR82enMs/WA5ev3YN0eSscgLwNelCS3iz1rWEA73in6RoAE+vnPbfqNesJBcawFDThxK38A/tOWvcTXd96Vkgg1nc2lLuQAbp1oSTpDDfCzA9Bs661Z9nqq90kkDyhMLPocI0EqW9mq4FMKn7YqjRDPmeZjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcVyaT/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcVyaT/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22FEC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779266433;
	bh=9Fz4Dv6ajzZRt+67BgZFEg8Vwhmix6ULeetmpoQCptI=;
	h=To:Subject:From:Date:From;
	b=KcVyaT/2XzGLvC//wVWp9Zjrjrj7gKaTiCiq9VUxkq4VfIObt4m7ixS2KN5q554eU
	 /hF9oQnrUzIuCfHqGk0IBuhhP9tuM8lGJvaRumSJWeNfx66G/4wN2WRaTJQG/B880O
	 V5XVNYvoDY7V/ZJ4zFlImzjLHrOfci042T3E2Z+ikmS78GXJvRRtc76SxXqMX1sgCY
	 6QfncwUq2V4SsNxudRCjCjWrYGmj3E7AxLBZ5BQ96w2jK6p3bzvi53LutT4II2oI84
	 uUcvt/pZfnIkHqrHnpoXSEJpaNqrYT2PBQc/f6LtTzn8Pst6MLicf7XjmmcsgFyMwI
	 NPTcs9+eXaLqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA961CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926643368.17184.6027769630992772794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ed593af77022664e559ac37da30004428913e629839da5928608503b2aedc0
Date: Wed, 20 May 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779266433
