Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4676B1AACA
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727770554; cv=none; b=J2H4iEh4ut8QMNyxfw03Dha8eBSLVtpNQ8SsCQDn7rRVphqMhvSK05+/aJ5dpm02KJEyJpcPfU4bHIqpwnUWedwWwIL6W3kGcKj/H0uNx8hZILtQfWJj0DrujSn28i1vElPBXV0Y0GSQoS16iKG9/I2vd2w/42Vo1k+TVCjYsIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727770554; c=relaxed/simple;
	bh=yoegRDy0q3wexEqnbMBZqk3gBCatXv6O6LKyGIUBuu4=;
	h=To:Subject:From:Message-Id:Date; b=ARCFvmRbeI34MUyI9gcHBXfGIdvQvIJBzUdkqgbYXDPUdCV+BoZTR6J6rE/RjS70igS7mB5JJ2CzJX2QX12aS33oxlw3SXx/uTMDktBef9Mv6LqwCXmt8+2zJVHv3/marTRrirP0nevyuFr5nJmPlKxeviyiXwkVStS4RDn9+eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4xVWjS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4xVWjS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6847C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727770553;
	bh=yoegRDy0q3wexEqnbMBZqk3gBCatXv6O6LKyGIUBuu4=;
	h=To:Subject:From:Date:From;
	b=e4xVWjS9FglMarJ0VKcfnN9wcQjRHoAIvruQpREQR2F49117N03sTT5zCqLLh4pNn
	 I3x93pCrlLMYr7gGpTWAn8OxA0pLMIhZmwAet54Qfp44xwUDWvsGqaBI158M1FUPEt
	 5b+/lJJq91kNKpS8Kd5XP3Or2veTDJ//IwDMAaOSvfKaKKdJSzfl9n5ClyA1DqudTo
	 no8J0yoecGv/RZNZu7tlBxudIWhwUh9lgpTn8BbnZ0WvbLG5G+uQYGIdMEve5TzL3X
	 lRwVkilUDwv4HWx7VNwQQxpb0C8MB+Pc93EMGOgyB6xiDya3ibj3jLZAzLk+BUUmcx
	 4epC8kRtauR5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C73CE7CE6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777055363.13960.12269985526110217554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b95120d326699ddb8002cfd691da9c77dc325d75c820a2f4bcade43e2e5a75
Date: Tue, 01 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727770553
