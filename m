Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D10847C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721363154; cv=none; b=NcByTElPmr3H7SB6KQchpucEHzJuZWJfk5TBlHkrImFFE76GJYhI6w7fO4pS8HGqm+ZErQ84bl5BHa2G2nxRX0YuTD1TTl+Wwn1AhjZCeltfQX3ChCfbW1RAPrgB33GrErEaHlIJs1LPMWBz0FadXdquAniVr0zMDRhG9RNxd8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721363154; c=relaxed/simple;
	bh=rejDCU7KV0UR8gH97GqLkUGHZ+Gndim7lvnSEexeg2Q=;
	h=To:Subject:From:Message-Id:Date; b=M9RQFaDnnms5DO/D0DooOVq3JLcYBZzaJ4IzoecH5dTU7Zq9nA8wdt6OV8WIsQlxJCOgajozNpzMSu1a6RhD9RNHdMcfCnwJMvKzCOftBuar4wlO2vrVHH8023QNWf42r8ldTpOCtY5xqOhPfG9ok0tukSGeR+CjLqRhqgl8Prw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5+5cPNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5+5cPNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ED8C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721363153;
	bh=rejDCU7KV0UR8gH97GqLkUGHZ+Gndim7lvnSEexeg2Q=;
	h=To:Subject:From:Date:From;
	b=m5+5cPNnJ63Z7aIy/TGfrKUA/pANFA8Tcv0LqWDj4zz+1bEhX7Y/JhFQpAxM4LnMB
	 j5AhHXeRVlYnbcMM1ISKVmDkWKk6lIQCDbkon6TMm7SNZHTCgdVXuEYzljDPrwmzmY
	 zK5oYcpc+zWMqBP+xzwZDr97dK143tWJwpW/8pc5ZJANrCa1TJPBOWKAC7/UgVFdpT
	 KEjNWqkE/FCk6BcFSnAKRXMWf1A+qprM+B9Rlj5dqrUg7dhk2JAJjedKv2Qnd04FL5
	 O8Kl9fSUiUQ4tmj4fLHJFo6Y1AKr8S5fnhv7ApRxpJJBdNZ4UtljQUycdJ0+U7quEl
	 9PTydrIgEg88A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B90C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172136315360.21433.1367075963212117750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aefb8b6513dc7e00741a0011415d6a99cb1d2d804093527cac8c8ba0312c2a5c
Date: Fri, 19 Jul 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721363153
