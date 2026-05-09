Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C41223BCF7
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778290054; cv=none; b=i6z87zrqtCguEdt7SDNJZJOU6Hnj2hBvzpTCqtgEuUDh3x4BTqMG4t7HJypCK5iOkw6vlO4Fb6UR+1D/iFk1iyxkSHWyisHO997o+RvgTI1qXQ1gWjaquQVOzGYVj9e+DUCIA/K1YCbTX9U1zIaE6R7XiVLB8cAJxrpnU12XlUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778290054; c=relaxed/simple;
	bh=Dxiuw+IjA6Y0Js2xKFMMt6vPW7kEAufzzFFMr7GVsLk=;
	h=To:Subject:From:Message-Id:Date; b=Rl2f0rWgdlCyY5ufZLoil22jDnpUMwuqMkB+3tELe35BHYgNr6WRq5o4VoAvU9+HnkArA8m7viGfDHy+xSXPynFYM/Gcsdwa3HqNaXS/HH0MC6bD0WbAbyFDbJTxKEx9xiEVO8jrIqybrBHwHpZsaEZ6JcU+X/1Ufz7gaI5dcXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXqVDYvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXqVDYvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3548C2BCC9
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778290053;
	bh=Dxiuw+IjA6Y0Js2xKFMMt6vPW7kEAufzzFFMr7GVsLk=;
	h=To:Subject:From:Date:From;
	b=lXqVDYvYux5ggSbsADZd3F9C2TYV0iWmC4FolIcgQ7Kkhuow2/4C4hDSG4sFwQspt
	 NR+faO58AdV64W9wGf9DD6AUp1krtbT/7rqYKF5CWPuqUu++Ish4gAkeS5mh/3wwEn
	 mCXSHVBIfiss806nyVytd0dU7Ye+PScDdlXjfpactYO+IvYTi4iUdllDK7M21yAhFa
	 Iep3rPNkynPg0A45g3dYOdZvNBR7OaE36FOmQh/dhv0S8aSWwWrHXCO4IgmArGee01
	 bzRf06cjQWnhOtrtdlO8YVUmDGSdxE7PR/u+AW0Ix2DaJpL8Ar0abA8FgbaRnSXfES
	 mS6BQcjuKRTrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B214ECD37AC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829005369.12419.17388539076172679183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746925d73c0143713c800c10e0cc722449583c9e15762847099ba74813b79f93
Date: Sat, 09 May 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778290053
