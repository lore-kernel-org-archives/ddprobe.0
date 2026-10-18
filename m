Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B14277CA5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792322434; cv=none; b=uZmNLI6A3yB1gKA82tm/9XJr+i2y4Oo3qPLyCqXYyJUKClYpMhGkihii4rr1WEahdhufUgKOZWfAWwzbzf0QeiqBqcgHi56Hpl1CgqrkP0RNRPeklNnUQAHCcLoSVJdzQvKinzXXQ4TuyDwb4xjOZirNNj3LMH3sAcY1ET1HQ4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792322434; c=relaxed/simple;
	bh=aC1eisptSdt4fs/vckbK5BSbuO4op/jIlabBi+6q2vc=;
	h=To:Subject:From:Message-Id:Date; b=ihjC8MDcxsqMyHevMrA6LZaWcml2sOn1WrPbxA+rw6aItjB+l/uiStHiVnIjaxTnKKFD2rz+FH4Fj1vZSJOQIZ+mCzmp2AIdDxpUhFd18mWL5p9TpDnQiHm0TozoKZXyit8D4InXwCwIeqdcJFvgnMuY623i0n+1AkXmrntLPR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ft6UXdHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ft6UXdHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB951C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792322433;
	bh=aC1eisptSdt4fs/vckbK5BSbuO4op/jIlabBi+6q2vc=;
	h=To:Subject:From:Date:From;
	b=Ft6UXdHikDtl5a1yZ1+Dw0O4voJvQqcQ2yhbWw0L3MkY7+k2c9tkUXnktwRILBntQ
	 8wtF0OKM9eF9cA+ER33t+4AYTgYEv9YPEpf5a2OqP4TrEg1BWuYt24ZKZc1rdSM0tW
	 2At2BgYa9HNgqm/BjxqVciFjbCHsrUIerVznRUaf+St2t/hAeZc4c7dpqks6VJMsW5
	 tz+Zb7Xvw48SFKnpbjHaUvcOaSPXfH/OlmVdK42XZkxAUtea2llYq/j84evGqXwp/W
	 ayy0Fjz8BLip+ysOSEzCskNJWMlhfYq61+Q3d/hDe5ThmouCKBlh8irs87eblfebyi
	 qOntmfWdnpdpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B96CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232243368.17688.17441924579194924280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b31c5268b2913e601f23d199b4a20b465179ea8519c97d1d8cd75431c55aef
Date: Sun, 18 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792322433
