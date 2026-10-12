Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE4E395DAC
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791842434; cv=none; b=S5GgcwlWB7p/JONR9PG743suhfvJj2swYhSMQMauW9WZvMN2yddfgtV7d571sRDLwLUhsYHbnW8dFqDix3bowC4+v5CxDeOJ0mcG29854cI4vbjQdOO4XMcqDPtIAHuOiFCNcZSo2cFoFv7bwudKilhYsxSJM3taS+GfOfm13a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791842434; c=relaxed/simple;
	bh=VGlac5SIx/2G+8MbozB2cMytE0iCW0kLJWIOOMOh948=;
	h=To:Subject:From:Message-Id:Date; b=XEUb0tDG24+mSnvf4k+SbWlQUI5OpiZpF0WL3ugSQEA8z1Mc1414TtZl88cKQGaO0u0TBIr6Hr6FeyxoItTc9ed8K/22RidY9pM0KnSMydPAqftpjJsFPLK/R21pQ6aS6vaRu10WsecPvnqqmc2jm/iqmwInBT99kQ/dIOEA5m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFcDOPTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFcDOPTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D22C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791842433;
	bh=VGlac5SIx/2G+8MbozB2cMytE0iCW0kLJWIOOMOh948=;
	h=To:Subject:From:Date:From;
	b=CFcDOPTQhYX0qY6nUQMaMuFPvkKctn57ChGls7LuvUutRlUYKN2kM3/q5hDfgk51q
	 AZdkWSGzJY+0NMSpm9CbaGcs52HIJA9blMBjXLc6bb2fHRZgJX1k4cCBXIV4ZRT/ll
	 AFYwlbDM1J46eife2xhfn8/P7DmYcMMqqmByxDTC9t/DpzEtewaNaOFt6yXzeAYsF5
	 UcSe510z0D8Xx4qAmGUyDQzcG0PDFoSJzak8bLsZ0zYS/e1ixvcfrX8ZSO4ysnSw45
	 bPB+XvIx0TOotjzJ3FbS7MvDQOafthMlzyXi/O3Gj6/Yf8zENY18XqBE0zv6Y1MU4Q
	 iOPerVsF/Fuvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9A6CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184243370.20265.6921716822406922790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183b953f2692cc8dbfbd35574a8a39725b3eca00227cec4d4d01e91748675252
Date: Mon, 12 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791842433
