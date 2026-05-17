Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B6132F757
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779057634; cv=none; b=oTJAOYe7mYZMg+FEJbBNxQYs7chlRSPk/NYxJi+MPUkiPrvgZQVXDTv8TdbN9NHYza+CHgfKtdEfNP4yGOHE31o0Dn3Bri+zw78gJ+OfrMUkGRsVCLKT0QEgR9hpEHODrp/FXbLrxwzdfji6OGW4K3ahzFPYjKe6Wuaww2+mQOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779057634; c=relaxed/simple;
	bh=scSmFSQD+LXSxxixFKqDunYNWujSZjjr8pwavRu5zwM=;
	h=To:Subject:From:Message-Id:Date; b=SKRwDp1J+vRDTcmAcoE3+EyPUAmBkcwgAgrG855+nBuRO1fYX/DQU/RAlzZq3hV4rYtLTBn3Z2PW0uNhXUyEYpNy9S9D3OhXg2XPhK5/cKYVl5xKfPrJrHCsnPj9+L7DyU6NakcYFCnV2yy1YT374QchRTIiVYz/huuhsjuA+j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCaWltHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCaWltHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EAEC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779057633;
	bh=scSmFSQD+LXSxxixFKqDunYNWujSZjjr8pwavRu5zwM=;
	h=To:Subject:From:Date:From;
	b=JCaWltHRBtL5UAgMX4hovFVQhz7nOzvaO55yTWwmVaEBy/v5QGIKF8I24QK3Bamjf
	 gMtMrO36p8sZHbulKytW8XZ6nulxJwqNCaJs3HkShixtnjxz+u70Wrsv3fz2bul1oP
	 KeZG2aOfpf4P6zg+va8uNfjvXfE4ed4GEPtvNiXMuUj1SIQnB6ByR2WJRWoSEGJ8KU
	 M+wlDj9XyVAUvZhR4Gb/OrYUxgEq4E+nFlUR68g181vQvWLtCApID48dIGwx1hmvs7
	 yZVrNmgkMxfDllYNCS+avid22VI4yo2tbIU4NHe887omVMK9nxqXEeTQAiaahdsYL1
	 JalbwjaGnwn7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDEFCD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905763369.1464.1542927393360583131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd96ec8e678c2691239c89ae896cd47a51c302d2a8f1c7ca72385d971c3fc31
Date: Sun, 17 May 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779057633
