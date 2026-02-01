Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40E91DF25F
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769951634; cv=none; b=VbDz6AfaRTK1Nb3mfMLfPXBgB2YVZk5Qm3t4EbZ1XJS3w/lxENoDnAPYoVQI0Gq6u5uKk4dEJOXmepo0XA1ncwPAucGlTeDvZnRU0/5k4ZnfzqMYoq+rMcSKagLmD+DYHlZ6/Rxi6sQhhBck+eP7zApTCy/Z2ZL42IoO/Jyd1HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769951634; c=relaxed/simple;
	bh=pIEJLxJYdIySK6F0GRJ31SLjROInkUFH+HzuzxaCyJQ=;
	h=To:Subject:From:Message-Id:Date; b=FnkOzBjIPu40h9fJubmFLERsDvSGbadg3HOpc9ofEtwImCOmcRSnwMcoo11/xr5s+zZoGwnfXyQOZdVFeFWaY695o/jyWxEWFmwpvupMXbNO1q+Ptk/+X1OSUB1WCL10ns3TssA628keR5AeQXOMQ/WHrVsVLojCHVJ5OyvJds0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKPNaHDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKPNaHDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE94AC2BC86
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769951633;
	bh=pIEJLxJYdIySK6F0GRJ31SLjROInkUFH+HzuzxaCyJQ=;
	h=To:Subject:From:Date:From;
	b=IKPNaHDWkEuh841JROqYczbajNF9q0FszWE/TSC4DObtBlbj896dKGNK6USxUD/mr
	 rOO/4AA4oAfhBELF86+ycRRzqvWFY8VJfFcpL9GTjIh2wr2zE1cQ12r2lZgiihQO+o
	 drkz6GYA7nQzQbktOqQ/pOIatkJb9ibVny+j2+ZcOgvmeWJ57q2gdadE5r1gfB5vfx
	 P/Vx1ege8F7LYA2R+qj7qfuCG2GXInuTvu1ybpOsOYs7jkAEltL+BEs+oMAom4nsAM
	 lSpINeHirJ44hGqjucnVRY97TEivJvGMeCrWrcFSgrneLiPNcQuUkjoQGXE6Uc86Ii
	 U0cRcQflJt8og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98971E65262
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995163361.13309.6842832421978173416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011f6b9c0480def9202b30a1c419670ddcc4a6cf964906405077ebd8f55c768a
Date: Sun, 01 Feb 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769951633
