Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E37C20F979
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737638755; cv=none; b=icN5x8W2Q7/4WNL83q5F2oJTA6J2BAPRAhxUIIc7huZfR4J7UdPGpYnPsvbxcpQjtaUceBypfyUciACj0fTJvpJKFA0uwgLuEnlPgzAC2KPCnOrODGlwQyfUlSDmvBuhjYDopdh6srKqJ7ZpEuzGPWFRE3kLioGsydSRBTeaEnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737638755; c=relaxed/simple;
	bh=xRDYU25B+x7r75QHz2LvW7z0+iHvHGEpnox+H7UQkOc=;
	h=To:Subject:From:Message-Id:Date; b=dMaeDLJZ5eg3J8gFAUcUlDnwfMlTACw+1pMwVTJB1EOSRCuz2kOkRWS6+nLj+HP/o9n5PHcv+muKi454HSzvfoxPXav4u9r/OnoSe3HWtKQvyHfIfgalYPc2QXstt++FJ58itI4QWhzedbQEezzbYhHxHZc7/NEsgPZk/ZxlmEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAKX/xnD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAKX/xnD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43F4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737638753;
	bh=xRDYU25B+x7r75QHz2LvW7z0+iHvHGEpnox+H7UQkOc=;
	h=To:Subject:From:Date:From;
	b=EAKX/xnDG2qGeOCs3SvDeXaKwoFfW6m+ibEXOio3D8yepihzlnaU+IoOLTjI1cwPX
	 e2Mn5sTmvPu9H0N1pZd4ci4vO4ghpLitrd5PFjJdTkxA0u/D5e78ZBP/IWOdAWPdjc
	 oaQ7XFMKDgdqmyHEMU5+yVKzRxAmYZRaKyxDQlFwFJmrmzFxjyyGp0NJFCkj+27Acl
	 LbIMCA3dsUxzQPAmA/BW+xeeQa8Q/JgKbAzO3Darzt9Dxnj96Rv0YTbPUiAiCPG1EE
	 DPNrqnUcdUtra9H2anTXvi7g6Knu0bEIEN6sAOwP2HRLWjdW3YLNhJL7+ksigSg2Ne
	 oICVkKfAGY8Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9068AC0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763875358.15802.4720181113401364158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf71da21d0ab2b48918ad476a5b16a43a75701c6bc5eb97f3e3f2ac23257f2d2
Date: Thu, 23 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737638753
