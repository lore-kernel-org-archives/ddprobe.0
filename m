Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FCC18410D
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718397503; cv=none; b=G5WLh8Y86uCv3J4LUO5GZiNrjdjkX9UCyDcHK3zVgNrdVPsmvF4FV76lhS/q7C4QJm4stTlEc/kumv0qxMjDKo+s4Wdx0T5/nJBCfxA6dXw0x+FBD/SDX7MpKclekq4P+o+jDOOEL5o9DdDbeDGqtqcmE8chGxSwMCv3lOGGTqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718397503; c=relaxed/simple;
	bh=eAZkqEOem16jdrFWNMFVCP27LHKncMrvehO8dzDQEVg=;
	h=To:Subject:From:Message-Id:Date; b=jOVotw9M32+VEH2WKDlh4+KLIx3WOz3AaecBoOIZBV7P279g+VDDgYZkEA2aEsodAUGqQtvAsrkzXzAXwNnulR4CI7t1CeYnw1V3qihB+8BY+mZ/TDfnNF2NG0vt1oAhGq0Othcy+mODu5NwRdd4dIsgniUSq3uEHw5cwKjH1Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8WurHjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8WurHjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05FA7C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718397503;
	bh=eAZkqEOem16jdrFWNMFVCP27LHKncMrvehO8dzDQEVg=;
	h=To:Subject:From:Date:From;
	b=U8WurHjIGOnlnf0xZRCzPLKCA/GUxjXNxsF2k0/KRkyoCv+dVDZjR4RpjSKq3iUrQ
	 dwjsorPxDoxGrtxQLncf0iK1vUbNQ1Ff5uJSk/4eris2OGECeXzLVlccchrsGGevKJ
	 MrRw3y5Q53O1hlW3WYfR6bVdtNZAO6OBOeWpbbIZdsCz+Rt440J0V7ZVJfdAgSoF6O
	 o99qjopFLY/whSXQcGLqZlivteRoo61AqxhdoCJ601pCmR/HXzuFP7FR/wNNWkLtIA
	 SlKqIgA6xvOS/88IfhWETMwI664z8+ELj2dWlLEg2RJM+ZFNKLSN4Q21JemiCjjaMO
	 fC1RS/CcHp3xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E05A8C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839750285.21065.8441930045556774237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534760af6c804a4bf57b471cd610128413a7267e8b4af2722ba7a03739312c32
Date: Fri, 14 Jun 2024 20:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718397502
