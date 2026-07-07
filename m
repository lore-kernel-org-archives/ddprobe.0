Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9F73DFC8D
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783436314; cv=none; b=DAz6P/6huDnk6xPdUHYt+K+6PuPQsJWzXo9xYYGbIwGs/ThHLRkUVgVcPsHLB3FEDyyoqNHPnG1zsX89TOAgjxsA9htcKcX4hrhnpdMo4NIOEt8ztIh2XRV8GJxK6dA2MhoL/NqR8YIsI/U4oVW11T+bBrGM/CW5WHbOvuUPxaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783436314; c=relaxed/simple;
	bh=vwUBHarHyJbM34A+VTSW3UddakqwOwIUB4npSt+DI0k=;
	h=To:Subject:From:Message-Id:Date; b=fycPem3URCBpUwJI7wVgIH/kA7yIjGqMfRADEQDbKOpfRpOHzLKOW/+hLc7W+JO1tcX67BPQcmlnxOQLDNAahZ/K0iHYZAZrYu/MLOy44UC+Mt4Wtb4T1Yv+29kfaGlco3aEDT2p/TZSUSCR9ijs0RNknV+xvjosElQH/Af/frY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M38ApVKj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M38ApVKj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C8FC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783436313;
	bh=vwUBHarHyJbM34A+VTSW3UddakqwOwIUB4npSt+DI0k=;
	h=To:Subject:From:Date:From;
	b=M38ApVKjCQE0ALEOJqgsItguUjzLVdL8HL5R/LCMfZjrfQB2ML2asBp4Yg3L3B5k0
	 zmF8BE0//JZnqWkyrcDega6G141sI1oUMJx4wcw5+eV1T0z6lsOL8tzn2RKjhS+984
	 5+kp2Y+xYjH2Y9A3Xf/8OGZNTWPx7/KsKYnQKVoJNykg4lkhFvn3GbagsgHSCeD51Q
	 guOgpCgdcsttSmS+hrjzmZ2u0UKov49drBBOWMmUQTOf48q08ZX7JxqUmj3XXzPHY0
	 J0c0KdzRmNkjk3O3CCDfadG1q9R7ycyOSIOg/Z28OcPFNN9Cb4kl4LE0gFsKUqFKyi
	 U4vtz00G2JWPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D71C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343631368.20147.7618652944655236665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e99ae6d5c3af8afe64a378e5456d714969876909d2ce67ef1a48f3513e0386d
Date: Tue, 07 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783436313
