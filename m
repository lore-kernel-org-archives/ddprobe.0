Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BBA19F137
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788134434; cv=none; b=nxoFKHWiUcS67oVc+pt4NbTpvxiDlHRA+0H/HLYG0yUUo4pJTdKKfZ5wuHA4wKqin5DZGN0ZFBM1+urfCQZW9jUv7RCzOumzfFLRKwgypZvxgszBwreBGkK7D1Ldnp77H/rqRUk/rC0v3AjknxIlzAcuyDtwLr6cih56vt1f9nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788134434; c=relaxed/simple;
	bh=JHZisUAHVhdhMwJ2VMmj5+3kpn+qYJFADjfcvf24vlc=;
	h=To:Subject:From:Message-Id:Date; b=Q2xHbMMVrDU266Rm8XT70TJOL0OBJFg6L/AyKGnO0uxkgL3aVpw7U9GxjzMI4AleeiX/lh8eN31ejwAiPloqyRFE0j6mOVkZ8JdePYQElC9yNiDd69nWa65839i9dnyYhDvssuoygDpMCfB3BrsCeIpjZuu10xVRhFH7gUS0bPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgZIhNIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgZIhNIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56E8C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788134433;
	bh=JHZisUAHVhdhMwJ2VMmj5+3kpn+qYJFADjfcvf24vlc=;
	h=To:Subject:From:Date:From;
	b=kgZIhNItMYRe1/T9Qe0g0cEuufU9JJCJlGXlR3xpTMsB0NPWBKXinhZPeATgmZI7E
	 FeLO6XVpoqQPsZJQLk5XWxmuLBS7xTkHR1k4S3wUduZaquxLhR9Y0tMXIO9v9F6SzS
	 /T/twwyawSvKEQXpFBM5mHDBk4F4+xpDoijtpY2BRON654mP/6FLp0TahThhTDyiYi
	 Spc5gF87phwtDy/Gpm0rODaxRBKCJXaxy7TLkPySLDwCva2vywrKqSC2E7+cQH8mUi
	 ZzRE1J7F3OJ0m0OF6CdDtw3syeyZ/fn3vkm9xICOffE/iHX97VXdVjjiO1tax8PX+a
	 bkPMvgqj3lonQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0480C61DD9
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813443369.19460.1833034777651433004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cec7a89398b0a3bea040eb1f5f1187d56e9a9bca4f91a44b76a4696e97f996e
Date: Mon, 31 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788134433
