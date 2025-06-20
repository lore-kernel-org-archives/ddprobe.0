Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3171223C8A4
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750458594; cv=none; b=gTZk4iwNse+NOxGjOXYhgn17JbKfKMVCcw5geT7VJdqoI5hPNTC/GJVq/C3DYGBO6JOxURFrCLeNq7n2+bHBlGYB4N48cLpPXPY/2s+ughsXuAwDFHZz3pGuSqYLPEDOBnK+5C0xNTofx2fTVd8AQKSgHAIk1Q+bWkTJ63tf1Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750458594; c=relaxed/simple;
	bh=t0L51SnmU1Y6eJgwD5FOgS5XXEkfU7VastvXsMU0q+0=;
	h=To:Subject:From:Message-Id:Date; b=WrV4XQIGKt4wT36cqcLQzDwcdXoGgBUhyw9YFEa/UD3bpAgfFI2AVF5qW7HcScS98ilke0Byig8k0zhmJd3hCcSHORu8IWzmOhUHbEIJKTtnEn2d7F6p4/50H3uXaLivPWRlNFTRCPDYawHbHcMqpOuesSLrKBSniXwdSsWlV0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5UfbVjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5UfbVjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED91C4CEEE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750458593;
	bh=t0L51SnmU1Y6eJgwD5FOgS5XXEkfU7VastvXsMU0q+0=;
	h=To:Subject:From:Date:From;
	b=A5UfbVjR8caN2JjiWIQTciEJL21ekmEruNTE2P3OFo2FGyX2ar0dYcD6LEOAtqywC
	 CVpL6Kgn6Gij+goOIWA7aUdfFoV2AU95uxVyIiwo+aDS+qVeIErl3KchUratsu0uXJ
	 oNVa/fPE2od5nQlXQqEJM+nBoplKFIKJWd6Sb6K63CNguvS4/bi3/gB/SqkcwSU3K+
	 pdGRB5pAYqaRDPGRXDHPBMx7KWMa15ckyTmj1Sacm6dB00Conm/SSgeSVVJKQ8dCDC
	 LINaN1gZXg/csvIVlqiMyUcBdKuL/To51xkvHFGcfLlvjJKjRH3dQN+tTFxGIuQXji
	 EPHuh5b3V719w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90223C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045859358.5883.2146615807406196582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba7a0c1775062381eb3e67366b233b5f073f0af6d72b5505cdc2d2157b3c0d9
Date: Fri, 20 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750458593
