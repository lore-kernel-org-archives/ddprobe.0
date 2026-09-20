Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6DD335064
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789862434; cv=none; b=p+1qkjhz9akzLooA4KEALMGtrp0nPPrs7GjOL8WQMRDPUHnyM/WFQokg/yERNY+2GREBoV2MCImAoyFV7w2/MBtFSFOxDgrdyGYw/3mHJXiBTNYPaSrNc9Et5LXEnFMtSqbifTCZY6SoUXDG8ApK8p0SE8Xp9iMs0/WHz+yvbXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789862434; c=relaxed/simple;
	bh=6bT1s/2gTOrU26J0N536BJx6TPBcRrosoJZ7uxYmURM=;
	h=To:Subject:From:Message-Id:Date; b=MN+TK9mGVqwp9EB4gBVPIXTAkVO+MOn8hxrjkJCPH8wtHnz0rASbCxH2CqqdU8stb69QxzPR2ce2aLnEoJmuGYXPlHD9EU0F1BB/1JgCvNq7EyijMyKA2mo11GBATtCJOog+EtN3Nmnv2T3Wf+YmHjFafUAL8PDDwpNkNOckiL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bizc3vKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bizc3vKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16C6C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789862433;
	bh=6bT1s/2gTOrU26J0N536BJx6TPBcRrosoJZ7uxYmURM=;
	h=To:Subject:From:Date:From;
	b=Bizc3vKn2BR7duSC08XAzy25iS4ujXD5OBo0Ny0y6ircY2nJamlMbrnLJghcEGH+A
	 xXEtuDeZNqN9J9rwP9Ciiui1KrfDH0DlKYZzrTJDiFLW+oP6X5vGCaPJDsMa6Ashff
	 q6acp0Q/NdPqt+NLplgAukYgXeww8O/S5HzHKQ7l63idV4e7pfal4gGroNr5IGmD76
	 6PTH4DI4kVhBw4W7eCx3Fg8QxaIWCR4lQt1GJkSFxO+huafr1KnUkhDdtKb4u6UdjK
	 hd+aLDx8lr8UwbBGun7kazzdTb1wZ83jweQ0C6T0IOtgVrPn4PHI1nPn2bNT1wglqi
	 aREs54v7uAKCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89A8C982D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986243371.19776.16844356479512354680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092be40dcd42bc377efbfddf8c75c829149d4aaa51661be99afcea46b8bc0f39
Date: Sun, 20 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789862433
