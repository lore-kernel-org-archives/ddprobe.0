Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250711373
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766606034; cv=none; b=jyi+S83NbsAeg9iZBv0J4tdtkR27jL98KvVf42+eqJql4EvHZRPS/aqT8UKxL09bsna4AyAjFU9cx6tbJbzG0JwGknDIy36px6Fb03/P8F+BfSaLyWJ8HU17E8dgXHM+LdeyzWncC61nOQ6zbWW21FHKsXnrrt6vxonkA4fzGuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766606034; c=relaxed/simple;
	bh=AhHs59cc1PbPcJVRtWOMyx/XFrr6SjQK9N2PxbXmFwA=;
	h=To:Subject:From:Message-Id:Date; b=Vfd2KhdgO8Lw7edunYgL/yGPzIMYykxV6Im5Lu0A9BSWyuVU1Be+G8GlG4eGgq07HlfS52gCtOo1EM6ouFyF7gYHYdaVMxn7nREfJyrnQX2joZpdGN73hYXoEZK0tmTj1KXyQG1EW1MSCFnQZTH1gXH3AmB2ijGQxQUXnl3q5vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fz47WywG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fz47WywG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94E4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766606033;
	bh=AhHs59cc1PbPcJVRtWOMyx/XFrr6SjQK9N2PxbXmFwA=;
	h=To:Subject:From:Date:From;
	b=Fz47WywGEb/EJ7Q9bFkdMpnAZ6fzQi6m298gT+/dA2P3iRLjfupfzME/Squg7HPXB
	 uouSlVqtHSByUyIZgiCSEA9rtmO/ywfsPB1P001qxL3yGfFeM3yJrvbDvEjSMW9lgj
	 6tC/VjeMoOGVJZqWWudccrxY99zju4gMquRX/gfdNwcLDtA83Bb8LNmwawkFdoqkGv
	 gxMx9mg24qKX/zXEop/PY0eNasP1tmT+GS8wt1Dc9n73O4sUAp0F57x8q6L0Nq0LOH
	 XXYWYH9ZTs4CflyXwckWKV/BeDiEjbEMxHBbV1NUOMkgb+3lTO2l33DGpm92bFStti
	 gUprV62Ll8jPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95011E7848C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660603357.24079.16420685811447568518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d110f0d96caf8dacbb725c50ff7915a5e429e2665be9a21a7e9f8c44257d8d
Date: Wed, 24 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766606033
