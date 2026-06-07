Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A1B15746F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780795474; cv=none; b=IyL8Q4X/7YY9BIXIha1uX9sYYtI4Zav1zUVQ4K8mMBYyiQAUR6ca71dNgblNxzgj+FwMXNEl0NY+g0AjaufaNqaQ4Iu2Tm9XDGxeI3oN3EXgXGIutywLxsMYHPkQgMULP82jiUizm+ci3XsOUmShDz26AJOluYFQXgpd+qfUuM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780795474; c=relaxed/simple;
	bh=pjixZ+38u/5Te5oVvrTGlhjM8ZvdrJBUFwqr9+6H2ag=;
	h=To:Subject:From:Message-Id:Date; b=J9H7JuBSxtoExZXx1M1fW6QNi9lQ5LKx+4FTCJ/ntosa9xzGetwDON6JMSOhRh8uVKpwLibTlmmhw8ZBDqcWVDqUOHWS9GoYYzAZGzgXtSOhwxD7GDQPsUmrBsIMMoLih2NYu49toLUpGW0z1GfvckhLksF45JS4CWXBe99B+6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZoMAt4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZoMAt4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F65C2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780795473;
	bh=pjixZ+38u/5Te5oVvrTGlhjM8ZvdrJBUFwqr9+6H2ag=;
	h=To:Subject:From:Date:From;
	b=fZoMAt4+nC3y0gFW/ZhsF3bkcWuO/WyNnBj+ZzV911G8s5lyqHS6ab0e3KtmTo8UB
	 DBU7tNMRL1MwdKVUvulYWqwmfxCK6JVB23jVQV+jh3FGmFP8T4grKO6ac/6Mg80/Fy
	 5qfaOU+c4qe5avPpWiuIoVPbPxQTjvhCkUTwvYLNgb4KtP/CGw2A/Z3M3lwBairntC
	 xx/d7Tmu/DPp8Gq2jGaVguwe4ZygcZlRDk3lsgrzo/2asE2DLg/elg2BFFe8uJnoTq
	 pfnsUlQCJ7t5Zuu/9FBB06iIcQHBniApeWCEKcenQeLnT2zsRHWXpIbgl64OhtftVM
	 BRlfigezZXdIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCC7CD8C85
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079547368.28351.5978435910267813698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82840d1950601ebf5bb331fcad9db9e6ac173fb538d16ab7b4ddf067b7bf778
Date: Sun, 07 Jun 2026 01:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780795473
