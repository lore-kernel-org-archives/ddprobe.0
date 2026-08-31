Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53159244667
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788135634; cv=none; b=CsA+w5/YHL6RU5GNAi3g2yb/fqpkcIjyqYarMR7VW3vEFizVP/ca9+dQTYqymmOdAEhHtZULjLHhRDb9KxdiM3mprcmmuXPLpvorFLRcNuEZgnZgjco8gXQWxIYdD+lLAnVYUiFpoVyAZGaHdvhmlmhkAANjFKpB0rQqtb+nkWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788135634; c=relaxed/simple;
	bh=5yPEqiFVvCdcKakyC2sAJVD9Rt0En8Zs4oi/N+yiueM=;
	h=To:Subject:From:Message-Id:Date; b=GFW4dE5CcwbMM+nTG65AhaPahZvCWz9QFcjcm/E74Zb86oExGXRLHA6JjJd+bJ3jM1HC9kYiEJB4xPqML95NYCqgf+QwNMXbXnYEtxHE6MzGoMXkMo3Ebl9h9b5lxVcmK7mECTgBsfcM8FfXWaoUTUA6uEr7WpaDLJ37YI1guDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUhQCxq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUhQCxq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6305C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788135633;
	bh=5yPEqiFVvCdcKakyC2sAJVD9Rt0En8Zs4oi/N+yiueM=;
	h=To:Subject:From:Date:From;
	b=hUhQCxq5imgrvKaZwta1W2Sbyv+CUfDT689Y/gXbrr9mXsTLkxAizbM7KLnoRuMMk
	 +b82//RfySRyFgPvx3E1FMppoOIiQS2AES16dI/SZnNE/VRoPoiOXgjDwoVxjzsNY0
	 reREwFrzFxcQ6ktaf8zcJ5NRlk+a48OQF/A/NC1fF8nukyh0Z3QMrwvHnRbQaOHRDi
	 KbfkdIcT41fyrW0mqe7HvGmknafp3R3N686huwrjxVQYztAyqx8Pue7cc0mBJUxzvw
	 rtGBUzQx3+h46jmSQ4jdBd+30jW4pvlw6IhkWEO+AWVwm+dQ2UWesOfvIWErgxRT6S
	 er5B7S8mzQIjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF099C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813563369.1342.9377030690740661908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac005151f686449421b5d03e6f79d31eeed71f5ae398f5c3fae8c98208fd2c01
Date: Mon, 31 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788135633
