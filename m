Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D2D315D58
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773680094; cv=none; b=ZmCFboMJBjHNg1O5g9BjDPlfp4rugLkrhjnfS8Va7vDQzdvfWhV2BTeTaN/4mmx+k6xk6UPr+ROhHrcT1Y9aU8lpZjlKhwUaKyhkmMXg5O5ZX48Dqgq+1DeFsp6yVVqbxEK2lVIAQW1lMksgbtt/XAqKYVuHt12pLu5E9WdGRLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773680094; c=relaxed/simple;
	bh=4e6siy/SV+CPHp5X+9W0VON701FZyHlvEwr957FW76Q=;
	h=To:Subject:From:Message-Id:Date; b=oY5OBLNhxBfZPFYwP83/xPd1HcTGttMP2emGUwO+kM6QZgZSPOh32EO4B8JjVeJYGx9g2UVPPSq60jHzY5nmeOf3oYrAPoQRCauAZMC3aI7HDfaOpzWolLhz7kEG/vBBcTTeItCqpbh6Bp5qznJH/hoBb4+Tf6xrWlxjdzA6150=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ga2RB1rG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ga2RB1rG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F340C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773680093;
	bh=4e6siy/SV+CPHp5X+9W0VON701FZyHlvEwr957FW76Q=;
	h=To:Subject:From:Date:From;
	b=ga2RB1rGR8pA6Uy5vcv9fiBf5A/FRjFVOrdXf/+dVtFN7oQV4aDMSiABc2d43JU6m
	 fAQTQDv7Kn7bisb3ggzC5P2A6rzXnyavC0dMx7nFumtL5PZgMVm3qN9xC55Zm95YxJ
	 lIdzn58WnkknY56i+W2fvM9bX9QlcrTCf2kevjplE7uwU+uGclWRslCqRRQqzHGCI6
	 vCH2BcPnJVOohbzl5ah/9qqFEhT6jYLsMa6JN90nJmXDa4VibQ0HPzeYmNai2TMKzH
	 Bjae+mPaHcIS5x6l8L1E/OIpOv15PePGsZytstnJFQhw0f+WpXYNznm40rDLhTP28u
	 HFYIp+/pwm/Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE12F53D77
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368009357.10870.2876114226233259984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f133035cb3f75507b94e6a4aa41aaa0f8b63ef27dcb02513792ed6e491f15796
Date: Mon, 16 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773680093
