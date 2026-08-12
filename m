Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C9B21D591
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786504234; cv=none; b=OES0Km+TGepyi6RN6U2UhCHLZjfbFJ70SA75aTvyAZpwTVKc+67c4Zp5kTiV30HuxjPfFIT3Lc+nrsOK3u0RcKTFogtoD5Bpkl02YlzViQZK1uH1r6MMCaqt8T34W/RLX5hcX8jilDZJeKhWJmaSUSbG6JlpeulwDErBjRIr5DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786504234; c=relaxed/simple;
	bh=QobNRre0LcbnMj7v8vBRIy/MMRE/li7eNFb8vDaPB7c=;
	h=To:Subject:From:Message-Id:Date; b=lgIZG0gbuvi18MOW9TpKugEtMhbWKuhmd4viJXcEprUxsMBE4TeR3hHPkXL/GSyQb7qKEaSYUDahhc1YfvTBVcZE8ibD7Fb1rbkfsa23MW3CWGmg+cgDLQNO/bMXJ2ldH+x7OTMe29EndWAB1QUSkr6x8NZk1CtEFEIs+2se928=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+t4qaLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+t4qaLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA4DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786504233;
	bh=QobNRre0LcbnMj7v8vBRIy/MMRE/li7eNFb8vDaPB7c=;
	h=To:Subject:From:Date:From;
	b=C+t4qaLROOEWqd5Iu1IXfSgFDWSslf+bl+G9Uhe1CeQNryZpZMWuKrGaKSvAFQQvh
	 t+E/e2X0L4DOX5djbPPCp88/Z5kqPStV/Y9r97LuF7veZKFiY8zIsIeJZ4t04Nzpon
	 nGBZ4y+p3Xr4vUjIWBgBkvJjNWP3hgOow0KBoEYe3eORYG0zTbs4GWScG7SFJEOK+Q
	 dX8aVwyxTysYHonkiM2/I3oQUKWUb7/p5fIfxghJil0NSy0o7mQhR2/MYsWbUIMnLV
	 Sb+tpuwG7su+pbpdiV+YAKRB/Aiwycb40CKuyLEWk35OheTOmE7RM9/yUVDO9PTN1z
	 Ozw4ZSbfnsk9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB341C5AC67
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650423369.24319.9369567809196504678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac67f119f9ab80e8e464726efc394bb029667c34bb90705a3dab068cfd8fe569
Date: Wed, 12 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786504233
