Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD9F1E0B66
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737392154; cv=none; b=Ms1BnAZoBzLr9B3MKj5SyrCgWjJRYLEz6SviH/18JuTSPZYWNTtVBZy8wVKShH/onCPbAXS4Yr+cErx2Ak8qqKZzdXbo/bAwf7bwdeUuSFeAJSV5kN62Nr0miPqs3Oo/Waxb2dITDbU5tN4dxAn+aKwejMJ16BuxJ1GX9kWnDrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737392154; c=relaxed/simple;
	bh=VyaT7kSrb3lEq9wt/vGaiU45MkCAjmxBPMBhR1Ilnf4=;
	h=To:Subject:From:Message-Id:Date; b=ZZF9bGmLgXanBxyD+Ejvq2HIMyd7gZGEC6115BCBYNwThU1aYsw+kiVbUeBNZWubi3tGjHF9H0D0VovaqSRw23NuL0uAH6FF23ywDQMQRIif1EeRwrERPPkSseupR0zIy6stlnHZ2Cb59uXssDQat6kQAdOxqdoIyyTeu6qdaS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltkAnnKj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltkAnnKj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF81C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737392153;
	bh=VyaT7kSrb3lEq9wt/vGaiU45MkCAjmxBPMBhR1Ilnf4=;
	h=To:Subject:From:Date:From;
	b=ltkAnnKjvCqN0sSp17GMib6l5Jo1sZweoM43P3E3sa+/IeCOLsYMA6t0/iwGGDk+p
	 fFnAE/m5M/J1okU1f9z1n2YPH81kNlMux464Bql73coeSLNpQ/IaYzG+N8JS8xJ/F7
	 gpY/ciilHHpaSasJKAil7xkEHzR1oYHJwmL5jQWvBLXbUAmrnaA0CtVDe21g4JRhC/
	 hcngDt7kB0cmDk4Mf02SUrNDrQTmBzk1KzBXoWgifeOMvYZl7hEkhn+D7zn/m/V4X5
	 RVLQj6M4/plbKS2IosjaPO49IKMtmmiezgPOyMUq4DQ4IkqqKi+Qpxz3zZVzy/gBF/
	 mKgvVLoZH7FZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF91C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739215357.22290.12768730599261267821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a63c348e3946370b69bed61b4df851608516f5c669d33f25a6777a444e6b68e
Date: Mon, 20 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737392153
