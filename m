Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253A717FD
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726204554; cv=none; b=bOgYu7vUjk/x9wWvNGFfQ5uV1eRj9/BItH18spn6NFgjZy+eD8d7myMAS//+TifDW8fZYVFangVnII9LPf65F9D9zjw0B5P4kAuuAvdE5GWGPcfKoS1JWMCm1/FTRytEWsGPFBQsQ5AJiooSTaAN2hQkI5RwAjy0MqO5549jEcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726204554; c=relaxed/simple;
	bh=qPPNP7KyMhAdkM7siqxbqtgFiF1AITBoTYeHngnJzQk=;
	h=To:Subject:From:Message-Id:Date; b=eP4EFEB8KiiyzH7FlQrzjrO8DcbcLqN3echRyfbHvkbwK/luzd06kTK+op0IV1YVuDp/s2EWGXZ8pPsRJadbFnkVlpiHiU1gFc/S+Fe0+OiRJ4KaULOkqdCaFcQLE0ZWvowfWTxmI701LofKnYcyfWGFYObVOId8sEe8/XGU9mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIPJeblM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIPJeblM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D42C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726204553;
	bh=qPPNP7KyMhAdkM7siqxbqtgFiF1AITBoTYeHngnJzQk=;
	h=To:Subject:From:Date:From;
	b=HIPJeblMWf2I5IhrHbH3L/w5ddVoHESVJxlhWuaoSd6O5jJkDl4upU2hxCB+LtOOZ
	 +/m4Nh/hCSEBH3SMc7wjD4NEF+HRcjuqzb1FD9SWaC46/XMi0LOmfIso3ySKT4+n8B
	 989PcV9QXw4q1i2+kKIivmKt0/nh938waxiI4Qz6yYrI3LFEotqwpyB9Rb2Ez3Vzil
	 GPzPeoWFe7JjZn65TvO8rlAepIXMOG0kZD/R6AG2cGqOAiUIM44G/4sSbT1KMdDxTI
	 /Qz6WZtNHp+LFSMkB1Z4WVw/mZZ8J/i4A6DOR4b5JQblCMPX7kKp3KuKYXMOYdJnX6
	 u5sNvbeb/IMhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93898EEEC17
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172620455359.10906.12959740593107491411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8884144d4dad11d0f75dd0ccedaefc4402892fb62ba4db5f6014c351133b108
Date: Fri, 13 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726204553
