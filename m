Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3167F2080C4
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750888194; cv=none; b=AlnSYRv6kX7A+gQiTc4K4aom84WxDdXP6uPNyjImtWoz6Epzbw+12ldLSHPa+PeW1zhK5sZml4mhMN9JPEF1Rhevy1mJW2mv9+37IImi3gqvOn8R1nKsqEvauroyzVZOLUlD4fJhAbBFvXkoLadIxq9Cc5XK/DYr77QPSPUDp2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750888194; c=relaxed/simple;
	bh=CZN36kJgwZ7hkFD9WqYOGi3ZxPrztCyV7+AOiHqm/FU=;
	h=To:Subject:From:Message-Id:Date; b=mp4OO+YIzhjLbhprrJuRbACLkW8K5Jngrao8TEz/u66ROznn1Wg/hocA2tfDRFfUANiCt+7NDqpz/zXcLQ2j18Ki6GMDa6OM+DgBJbjeZvRRN1qp+Gi/t11lu/fjBe0kZLEoamxLGc7M1kgeRS2z74bCAm3VUylPL20J9cEJfkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UytgjToG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UytgjToG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A202BC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750888193;
	bh=CZN36kJgwZ7hkFD9WqYOGi3ZxPrztCyV7+AOiHqm/FU=;
	h=To:Subject:From:Date:From;
	b=UytgjToGE7gG43JDTjRtdWLdqmS1O1b1UOebXkwYSU+z4RP5wH7eSl7vu9xzQYt6R
	 isTmEhI+i3LWpfhmn28kyYFXPEKC+2vkYQiNX9LOGaGV18GD4O1du1XmclN1M2SY2x
	 pK3NK0rfzk5N2aHO8AJ31UupNLVrgEVzimg562U3qgM2z2xe9nOAdkwjUR5Tohm6gl
	 zDeTURHRUVMht1vNhXcqbAx/imjJQFH95p0mq29RWnxTQZQ/BzzMscFcX0D+gwD7tJ
	 7ymQobm+JrKkJwWsWZB0WJ2uv57bz0nHtwAidwD0hwaL+RnbNwxAfRr4ZUPWTLCmi1
	 d1ra8DUOJ6YEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F7C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088819357.9009.15122645866425267345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d9469c97750cdc62cf97f133a63e8ab4ea475f14d8145daf0d49b32b5760bb
Date: Wed, 25 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750888193
