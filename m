Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F3322A4FC
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768259034; cv=none; b=mub1d4IkEzbDJLPEnaZRBxeFNkVO+ZwYZyRE+IClogJ/MARH+KszFLNWSaY5D3VzNU3N0BPwQseWfmx5uVLcndojMC808AlqES/PH2hEN1+HVsXjuxRekwRmSRAESa+DQiv6uePz4Fa5awWpfoQH2ZHqBZEdVid56disAyXJe/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768259034; c=relaxed/simple;
	bh=E84Tp/8gbUxeaVLqfrfCwj1HH+d9UPCwz0W4/ycQNG4=;
	h=To:Subject:From:Message-Id:Date; b=cm4wtEf4xNgjd0mNvzoq2X6ziNeHgKtwg7RYwPJFncszTeXl+ZmX+RBYzwiuYlsS/P+U+bfRroIBmtVPMvrwSOSe6az5FA2Rm+WYvqovutPVv1RjqmxwaycDZx7QBa426BTb+ARj+zXvPvdg6uUMcVR8yR3Atd4a9ksNxQyqpuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUoEdOOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUoEdOOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F485C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768259033;
	bh=E84Tp/8gbUxeaVLqfrfCwj1HH+d9UPCwz0W4/ycQNG4=;
	h=To:Subject:From:Date:From;
	b=oUoEdOOGXtrx4gl4C6Ebqb35J1FB9DHzqxOjqKVqpGoM7g6i4XEg4ulXXCDPjr0eP
	 5igqCmOEvkTCosTEVR0j97Vb0PUQcy/ly3CncBGgIijLema1PS+JlEfE1X/wVCC1z4
	 QYSoqNYqgJbB1LuYl05BstoYL+We+XnDCPo2LbUcga55EA8WeU2i17kVP7XYGDJMpe
	 C4xdmFTiQU9ltqA59/Zg4+50LALsAwNE68MHM8dwCDg6UI5t9P5C+Li80Hhcf26v6l
	 KXMfX9556A+d86erhVqUpZ/jtKQGiyvMk38K0jWJ6SIA+7ajLwVC3pSX9jK0caGfwR
	 x0OFRVEVrImnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9031ECF45D4
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825903358.19778.16326833222186325650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d475d6afaa70b329995695633b768ccd9f5ba62d2708211e9ef63027e75bf10
Date: Mon, 12 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768259033
