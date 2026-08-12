Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D43A38DC4F
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786509634; cv=none; b=OoQO6XCu5az66dZLtF+tf3GqDuoPQwDZTfUCLOZz2vhBUwI4YMDmUcfmEoyx2/Cd1M6bjgXGo8xjLrGR1Rwkz1fueP3VmRTL59f0OW2gmmX6aeQDhWXyfbdYJyUO4on+v1sDJvIvZGwJJjWBJsbDObtepEsA0O0iXEgGFgsIE9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786509634; c=relaxed/simple;
	bh=dVypjFUU6KcAOVYSMZiWas6200ZdI1EgLqBDv9E/8Gc=;
	h=To:Subject:From:Message-Id:Date; b=IRlAYIHTPeYI+iNHyj0xXgH0UngcsR3obR9nq3sC/UgA5OLywj/vgAuNW/6S/7Obuoo57xDE6nZoTE11jXNyg1ylyMM6jQTPDvxGOx1NgIi/x7voYVPS7YBTq4XhZyY0O0B9wZZsvek0TzzOsibzNOLukOGdS03u63gPQFbbw8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luoFHiaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luoFHiaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEABC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786509633;
	bh=dVypjFUU6KcAOVYSMZiWas6200ZdI1EgLqBDv9E/8Gc=;
	h=To:Subject:From:Date:From;
	b=luoFHiaA00C8irz16s2YMJnO3kHQrY2OeO0/3Rw4dcWonSndjvJ+XKA09NqwPwH5U
	 kOJ558MFrFHA+lRlk+EaR2ugp3i3pSFYL2gjKqI2XKZUkTGiMLTw1YJgod99BHbK+8
	 Ass/cAkN/WBLuezXdwC6cDBURAoSK92JMYJcdTWonNsGiranJTxg3fQHa+79Jdy74/
	 FBrvZT+RfKbivO1GvtVCGRa8WAwo2drpAwf954RcGxLRhT3F4j1AXMIxamtBDR16aG
	 b+MXYshgNLq8kcKHkwJYt+3zNxFYsCrzuK0Yd+MEjYkUHF9oW/J6irrk4xOV4XTtTU
	 LNQv1zBFa3Ntw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C3C5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650963368.16100.3683121359628155565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384cfcf4baea8e71ef972ba03f0fa859050a24617a0444a7bacd7c77cf308ef9
Date: Wed, 12 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786509633
