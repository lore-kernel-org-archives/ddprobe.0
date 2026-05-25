Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC743A784A
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779692554; cv=none; b=nK2SmAsdP7rQc4HWOm4+jCvtvuZmKTDaLijINnagTJYz5FNQM/h27EVPTrOfrIGh6H00/xrA/7GzApAO7wC9lkqsKZIKI5tfTCP8JOy+auhjyeUlGqawONVJQWM9ItP0R2L4WFYhnNCfpzERNNYzVLYzI5Dh5PJ0D5SCmTs7vKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779692554; c=relaxed/simple;
	bh=rOu85BCFdBOlWAd5OwoI+ixbsJfjoS6I8ROvxGX1YwU=;
	h=To:Subject:From:Message-Id:Date; b=VpU551jOTvfQ3EUbaD3XnnjidGsFH3zEhIYhbwCo4bxYFXjlx/GrfgcU0uvmp5XLDRQtOP/Ey2/fQokVNLM0eVmWKPwt/Qwe6DFXypnsFBdvBlpvNPlvzqpTFfRgHEPJdbwLLoDHgdHBHEZUyGxudhsJIKBJHSBLDoEXnvMSsnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6Um5+1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6Um5+1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5216C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779692553;
	bh=rOu85BCFdBOlWAd5OwoI+ixbsJfjoS6I8ROvxGX1YwU=;
	h=To:Subject:From:Date:From;
	b=P6Um5+1YaBRMfETNaNK6nPMUswOAbIDpzWspukCoa9n6wsOL0UWlnBvU519dwQg8C
	 nhyd/CjyaVnkf1XrN2b0Hx2K7b+orSqNniW+KOF6rdrCUtrrypiv09qG78jbuJgAlA
	 4E0aV8T+gG9PBm4jh0bSteROaoht8eCA3WPUr1USwo6meLndZUJ7nYRV2T5EUm/6Do
	 1DOqgAw51PrV4Zgja/y1oc80SPw6u5hsW8jEZdONQJlB08OLwy746M9IODaVMPRQBD
	 P9k8qtytLZGu0NZGRDl6LUWLGx+xLXADMeSPPectmAuu/pCrWzR8gBXrATFH2b/ozB
	 +XUXzETJejbHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA61CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969255369.4907.9986970948293162408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b76cc7ca6b57a171e4b84c3deafed5d575099f803bd7182027ea07b3246a99f
Date: Mon, 25 May 2026 07:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779692553
