Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E3444163E
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784119114; cv=none; b=JeGS05p2PJN2SkGEhjbwktm9kZlvj4ks4u9QT1R0IxrgswQTQ157iOz+XZs4OlYbxW+aozBm3yD5iAgLXEmFSaH/oW3bo59QlHfNKtBlfeQqPKAbpDvv2sU8QoRfkdFz/IH66Rhp61zoELrjibfT12V0cveRoXG3jgOUFcDuLb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784119114; c=relaxed/simple;
	bh=T9T9g8oAguM6Wcjemar4ghoZdA6Ofsm2Cj9M1zYsN+A=;
	h=To:Subject:From:Message-Id:Date; b=YxjL0xKA3dXq8W2Yoa9gpDz7c7ihEAog0FNytErhJXMuvps57/DwaP2mCRpFkVdPsPOGC5fhYitnA4G5dhvTSsYSzztAHtH1uAG1DU79O3kRY+Z+U9bytVlOzPMfQYRqTJ8wt/vjAz8T7zgCayRNzHXU8sTzUHr+Ai3sKQZoRhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoLjkwVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoLjkwVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC17C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784119113;
	bh=T9T9g8oAguM6Wcjemar4ghoZdA6Ofsm2Cj9M1zYsN+A=;
	h=To:Subject:From:Date:From;
	b=qoLjkwVeZXEMonwGeZ7ztmI3Ww/bCJcCUnE4OHZePZc1D0ijc+Z4vbk7H+Cuw+r64
	 KtAGK2yJ9BVPyLJcXUdlKqI/0KXsx7qkWjt8+1XcXWIUD9xapyGZH8INhwzC+6Q7m1
	 XIQEM6NibPHgEDunM+24Qw4MbJ5fwGV4+GHqMaG9fN7PSjIMoi6uZs0+54b53vguTC
	 14B8x3oLq0679hLIdiv/zd9OpG0NDSiL/rwKwaonDSXr09ErdSfrk3CTI8ocg+u7Mt
	 Ut4kF15QcTPqfLESzQKGIDsmHByRelVSASGVsshW5VybmMDWV7pDuXGlx7EbGrsnaE
	 REhXaKiQgssOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C9EC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411911368.13854.10590918494414634026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597dde55281d27b272467d66ff381c9ff5f46f7ceabf7afefb6259f73b96142d
Date: Wed, 15 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784119113
