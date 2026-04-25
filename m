Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F94781724
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777124254; cv=none; b=ce62vN2AxOCmbqmJAGgrd5qqk4kLAk/3Jx7iPZg5lR4LNQBrsyEXgPnqnlm66ZpbU2rHPm3TEOXOv4I1PnNk+UMt4evIDDRTkL8YiSNW2C35g10wgTlpZk0tg2+qm7KBR7ZPwJsiwC70XPiYXn797uCKn3wW5fnH8Vy+lJiQTfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777124254; c=relaxed/simple;
	bh=l77LDADPIceab73G2wfVDKuXNp0eCkyQqSRRgk/vkKE=;
	h=To:Subject:From:Message-Id:Date; b=MMB8YlzOJB5g3gq1j/c2OX+oUMeaNueOK/iiEmBg6dEZdWc//tXOH0L8SZYV42lfdydo72oWjvnhrBJFh4RuFIwTVRlpf8OAr1tTrrLQjlib9TdvtdZhG4jqjE6Ktzk4pLK8emMLPO6sdx5DEH+jtUD7DFroaQfV9wGrDG+W+Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRtcx22B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRtcx22B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACF8C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777124253;
	bh=l77LDADPIceab73G2wfVDKuXNp0eCkyQqSRRgk/vkKE=;
	h=To:Subject:From:Date:From;
	b=hRtcx22BZdCDZ837llxEDxNyk3eJEcs75LiESKzZqOq3gc6b4ykLp0Q9Np3L9tN/V
	 dHWgEVFEYJeR6HtShVaDSyBZ1U+NnMJmMBJKQHmwWRZMb72EJFKL3yKo5tJNVSENHv
	 XDfulaWBbC035Y0BRIVbJ/lIdnsR0dpyjBzAEeI9vubh2RlkSEi4TYmArABwAgwNLM
	 R/Yei53KUQuM+s4XPM5AMRXP8ubzDjzK5V2GxNELUXfEEN5nLStxoFMOP2fMfOmYt3
	 MP9Pu3OPu7WTxRnCnn8uC+1FD8VtAeODIgd7PWWGnYNDdrgic/5HA8gnfCkRZQGUGA
	 2eGe9O+ZbKvNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC315FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712425368.25782.2373882683784025197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1010271fd50eb8d6a95bd09c63933807002377ca4a83e0699ee541e5b0ebf999
Date: Sat, 25 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777124253
