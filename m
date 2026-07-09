Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF0340B6F8
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783591114; cv=none; b=FN4nHkPZm2hW/qnyfNnSQXPuITvdVy5Ek7Oeph45Rv5uezZRYGQzFn3sD8D48uO6TnwBg0/7j4wagO+yyG05ulQSb0Qn7xxoww+dnnPx35tlbLxdVlwDxJ2Cagi8m/PcpFY/XV4cDXEAt0OvbSaH2a+MaPI+2hToqbuQUL0tppE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783591114; c=relaxed/simple;
	bh=nYRLR64sMVxvW9GqLvWBNZb1S4e0qcZWbPw46/IHbBE=;
	h=To:Subject:From:Message-Id:Date; b=ICk6u12auY5cZGIE5EVGfyteN1AbzaCBbOnqEds65tSlLij/vws8Kvuct8qyArmtNGTPxYp9fCGKMDpyVszTqCn9E/SYYFbvq2kICbDsXu1bdJ8uyOLCrHDoC2FGQgeR+sM16sBzD3KFFM9jIwMwamZO8d89KBcKql5RKzPa3BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkI4TRMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkI4TRMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F85C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783591113;
	bh=nYRLR64sMVxvW9GqLvWBNZb1S4e0qcZWbPw46/IHbBE=;
	h=To:Subject:From:Date:From;
	b=BkI4TRMz8aUJKdIbxSkQO4Wn9Ss4zglD704JspmvtWtkjbqvOGbPV7G+9zxGVcjDg
	 9UXBEp+vXDQjLsYOnYfhiVj0yDwFFlDB8BpQ0i8j2dWAawOHsS8mubd06J8DMnBoux
	 stsuTDJRrX04Qoy/IOn6UXrBUOaKLwsKGa+b0+gDCnVhuV2vzsAAUhmI0JMAC8tIOR
	 xfq8nAO9rz6ByXUDCnUoP2boGXbd7g9LhL0jmrI2JUPw8tQD38nbaXMf38tjZ7Ll2u
	 RB94ebr3uxjPgyKp+1igaZL+XWIK/7JrUQThXk4M+WEXp52Iq6Kf04mVWC8WU3Bj3c
	 /2WBvBfavhpNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79FEC44508
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359111374.17885.17957063614853774107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd2c03a4f146a5c3c2a8c1540172526017e4ad1792a2dc88335d183e74eae1d
Date: Thu, 09 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783591113
