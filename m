Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFA42AE90
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727626554; cv=none; b=NKOpAou3QUGfy92/dkQ3KDbrGib1K2A0SLG4KaXxD/wI3rMRPfMrVw/QboOJPL5f0eXV82KSGNt/CwFqM5mrYfUbFJ2PtGHLgqhhlab+Y9ENzSa3HK5ZcLG5FMjO7hwA/yDIqc3zDV+e0fsqyIjKO1tcigCziJj/RLnAOLKJR7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727626554; c=relaxed/simple;
	bh=dQNRPJ3EjdYx7w8EUET+28wuV9fK4CAsZa/79gf4Eas=;
	h=To:Subject:From:Message-Id:Date; b=JV6Cmy/cp06STQdlDQTZmqmToDpv1J5IWwRchd1n0MfS+0o75EqDdmx/W8Mnx8CSENGZ3IEHGEXnZx+YlQepBT9VdjeBDFSpKiVjpPk8eC5EaKQP5GsS/tLts83pTwod/fM2pEHjFfaL2iltm/26eDXXW2dOlr5B/ImzyBSbnKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFGGyY3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFGGyY3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB6AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727626553;
	bh=dQNRPJ3EjdYx7w8EUET+28wuV9fK4CAsZa/79gf4Eas=;
	h=To:Subject:From:Date:From;
	b=MFGGyY3rNmtA3i+iUj4JQ4MwkVUni/0FpzyuvvsKo9ZbTtBX5vIVZRNeJgHlVG4ao
	 Wnjno5vgCNZ5WQ9c5gNv45s50J6QX4AIK++Ca3dv0/mgNfvf2+tAWNYcRXq1duIR2i
	 bHO4E38SyzHMWv/C0VEUIZX45VO8y8WzfNb/2q6k+8UrkpZmyuVrxZq3c/d3/ptl8s
	 9wTp09JUGZLINfNwaL7Icr6YKLqbWX+4IQw0zBGlkWcNkeTwuQzRAtIE4fR2DTtsNt
	 JtpNv+x1LgFWtyBexBmpPTZYQCdMp3Lmsv2mAxpCOICrhFeclxvyYArLVfLxSi3dw4
	 5KIpe09iN8KuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F3ECF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172762655363.18306.8735112311543864721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c02d850ec38f4ca1f2e3b2822f804ef2a0477c5c5df97f014daa668aaf986e6
Date: Sun, 29 Sep 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727626553
