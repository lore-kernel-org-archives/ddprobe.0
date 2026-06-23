Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F4640D56A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782176194; cv=none; b=D6hv8XC9Uu9M7opyLAe8mAR4PSeviSNF+OtwQas1NW5DCXnD/1AdUIsiUx6svPgQfr9HB0Xr2nnUAmn4yryjoGnbhuRcFYHr97t0eodjdWplEEvJp6Gpb9qwZGdAnWUtdxeTMuwWhExMklMbj5wPY7m65OyA8Zi49IDGUu6Yx0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782176194; c=relaxed/simple;
	bh=LWKCGNP9LEtuR8qTH35gV2Y8u3dhgpHp7nQC3SBCryg=;
	h=To:Subject:From:Message-Id:Date; b=XiMqadJuuyxx/ynjTRujPmIznGOceqMsNgmXvoXbbVhpW0dZcavDKEY7fvWffJ5jhVNKkpQDDK9l13+Eb8vIYX01/wVSGt7PgUm7Y/jfRYPIU2nbSh9wv8/4T83rmY/0Ngjxu7e9vuOfM4qJemAMRaBjZRhkbKZZEMb0Jqh4Mww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKQKha6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKQKha6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8077C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782176193;
	bh=LWKCGNP9LEtuR8qTH35gV2Y8u3dhgpHp7nQC3SBCryg=;
	h=To:Subject:From:Date:From;
	b=PKQKha6nelY9OAqzdsBNQW3oX/TwQCboWnV98x48aMjcCn4XeDIaldA20zmoiWTMC
	 7WjLxriGmLsAE8MRQjNicZgUbscRZLri42j1JEVu6oVmOJJEk1Cy5ESp5+YTLyoKcG
	 R5IpYqrd0KlZeSTJCY216gBPmgnj9H+46aN8QYocthloxnPKS99uFfa+3fhX/XWHSi
	 xRdV2gkhcJgjdbxo49vxNDA3KdhIEUCw9Wez2fwpKARkrbHkwwmlM7CBsY4g0Vq8DG
	 bKI0bM69RPCsVGqlrlA8V+d71NX7Akmt17I7pC7Adi2QwJ1tWNUEuEJr1SM0IgPbJi
	 W+yCLtEyIHK4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE432CDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217619370.25762.7800966718705009490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db170ea9964af7f6f7e8fbe040991644820e3a721ee08be5a8ec4c8b68d9744d
Date: Tue, 23 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782176193
