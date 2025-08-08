Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1694526D4F7
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754645394; cv=none; b=EIROEEqbfpJ0GAG4E6AxzBEwsKWdEiiln0PuS9KTWiGRwy4XdbVRmsv+OasBs7y4HCaxm4JDMui6jFLNIdCPGfTMn+v/pTM1to5AgoUkhff4XhOFLZXx2xxfQ0L5KiRPXkYyCLJBzyrmzQcWw1Ld0O2fkkHw6lw34T6lIaVBsJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754645394; c=relaxed/simple;
	bh=MKfooz1uXYahbkl2O87lbsBvPJIDI6FPizbUv0PO/q0=;
	h=To:Subject:From:Message-Id:Date; b=e2SFC+JqGMzjJ3YoqCdPQbIDR8bOxlB3GgqeR7q63NT6O/RSKefbfP8PtzOKbl0ACFV9acMFGEJCNaBxLNwJRYx2nVcOjwLZwhM/yehHyN879kdCotM6FxslroawOzGUvOCiz1sFaaJJROwwoUtqK8aKdga1myhm4drWvBg6ysk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uecnzM9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uecnzM9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC42C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754645393;
	bh=MKfooz1uXYahbkl2O87lbsBvPJIDI6FPizbUv0PO/q0=;
	h=To:Subject:From:Date:From;
	b=uecnzM9t5PBmjtuHmBj6sAIb8SlbkY08V1MIHi7oIvSMMcTeywN42rSRUSEO89UkQ
	 hh9YS3ufEzORsQKMJAbezOpM1WCghxugxqG0mgEBfHtrt5V4YlVZe5wR24hdFPFNGl
	 WnUxOEJyhMis+2MwqSsfsy9gC6pEO6grD8UDH2D1G8Dk5ZqeAwX7Nva5vRsaBXyJj4
	 A/Fyk7GixfSW4a3qxtqV6sDAlCsB3d0dojU6fGzyjKawWx4rItVymhr4I3eU0QLI8J
	 zU6AKdIDyX5xO4K4Ukznoe4iSXlXxyxmuXMOWITdmKMSmLtX/nmUAAy+XPImQt+f9S
	 eYnJAoSAUvTFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F339C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464539357.19592.5952970046636887564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a634d354869aead126408943ea5349b9e5c6da031722c8a17da8d25b636b7ab9
Date: Fri, 08 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754645393
