Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A62A29ACF7
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777748254; cv=none; b=MhUGPamXKucPxLpKnPL7m7Z5bRcxRsqwYKu1mYBDQIuI16dF6rIVF6Vb8nJ2GqWy4VhzDLhS3zuxXYoaLFNo8UGjz7K9JAhrTO0J9h2kzHXaj21jkd2AJURnmAqZTlidtt7lmUSqpRbrrTIzaDksBq+SSYNLnyUNXRE3rlFnH+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777748254; c=relaxed/simple;
	bh=5DwFtZWJS9WfAkQR9q9vNLD6seQD2/ErkjcyxHwRVRc=;
	h=To:Subject:From:Message-Id:Date; b=j2OorTxg2YXmW2cuQ871Dz+Yhu3hRw/hN8yrioQY6s0ocFcQll3prqeSWKhPE47QavT1EH8k36X10C+j2al1BMir1gU7GZSCmfmjLJ46rhWc2FXOgRfoNN6BIkpTiK6XJVZPLdSbd1qd2k9ex1BGU1come7gQYlzOk/42vJyT9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXkRBDJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXkRBDJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7A0C2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777748253;
	bh=5DwFtZWJS9WfAkQR9q9vNLD6seQD2/ErkjcyxHwRVRc=;
	h=To:Subject:From:Date:From;
	b=jXkRBDJtn2GwTHmpAdLzUa6dioRIboLFrN40VDvCn3ucoB4ZLEjfHF9MbhVkGbjJj
	 LGkbksNEl2fPFwJciHGXTzzA54hlj2zqJC69IjOPbsd9Z15hcy5FVG9PUbNWqwQ8UK
	 RqZpud6xXfAEVUBPmP5aYkv9vW2lQVLVZasqvrUir9MEr/wlruqb26G2A37OZF68mO
	 aY5jmTzodwF6k4e+qjchH2yMkEuB6v2xaN42LbdnucpQzl0SxTlYaVipArB5WwEkLl
	 jifx6kjnaHYX1BndHv2xClOmwUkMPDmNyGPlJr+BRrg8IDVvdhCYZrZIRjsA0oeWVk
	 3XkOcRjB2nWyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E07CD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774825368.31185.7635072166872180199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c785ba2c743cf84390fc4deb421108db60bd480d7edff92a6cd4037af1f604
Date: Sat, 02 May 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777748253
