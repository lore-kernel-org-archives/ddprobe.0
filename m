Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDF1366
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732583754; cv=none; b=UDA+30IIU0+0Cd7yTQvAezGr2e5ebjsC9X6yc0ioss/a5oto1MdagAScYEDul0dmdFgNhzQKf7Cm8P4yvQnO7sezz/24hz7+9FYnrL0T523m9ImYx6XbYadRNhg/mRnTin8lAsSbbLEyWqfmtdVz3z2/jV5/zG4njwPXJE83D5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732583754; c=relaxed/simple;
	bh=Y04PEb+PLhuT3TA2aYeJvPQgzVE1vSxl/BXPsDTbL0A=;
	h=To:Subject:From:Message-Id:Date; b=NdfJym+ayJKSCubkajWabYUV18/SfN3jMcuUyx2b3wVhl8dIqRRoz0o1nhDCG6z4hQSkmbm7jH+qGsZ+xIQf8URv2d4o/hGdZEVc1DODN5ncmh17gQFY2WxwpvGTNIzixDe2tjBSyhik94jiSAdaM8n4oTTpWoxfE7XHBc3fQ80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfBE+fhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfBE+fhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC83DC4CECE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732583753;
	bh=Y04PEb+PLhuT3TA2aYeJvPQgzVE1vSxl/BXPsDTbL0A=;
	h=To:Subject:From:Date:From;
	b=KfBE+fhjebR/9p4A7drUpIz3Ls4OxcQ/AVCHJop4RvPRtXVnCpVyFOMFaVFY6XAZM
	 FPXrTfy8Etyqg7ZfprgqLzqnK0Aa7UnPL/pqaVYK9vpILEELEQq+AiPrjOkZ3eNUgw
	 vP1YcuFT0jlzGcwFmsdEBcHWddhilEc5+yP2kiepQnXaMl+VdnI93V7adH/cIlHQ/s
	 gDXmSqfmvoystgqzyMwqDrB0ypqY8xCUshvn01qaXVCfg6gfx6sTgQFNrRGXjj6uh/
	 wk4X8WuuH1dMeK7R/TrJRDemCV16JT2KMqMvLFVjoQBa6jhQFabJgmeXeFry5x4B4z
	 V0Jkut4FWt4YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E7FD59D86
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173258375358.25977.7299800208522336184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e22c74c7f31c830df6612cd84c4e94db64c471ad81c29c99ebe0cbd336613b6
Date: Tue, 26 Nov 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732583753
