Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E2357CA6
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722782154; cv=none; b=UVRo9wv3EB66qaZ7rl7QtRDJGumycwDWL6D4Xw92VoLcHsBgk4PsiffprX+O3Kj6ZicDexcJ4/TmCr/kJ/au/PAGtJWHs2bnOLhVizvRcCaSmrVpuBl/WiFGLnAi+BaGS7T3u+FQazHB5YC4x8c6UFUy/esXMTo6Tf3usjwR02g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722782154; c=relaxed/simple;
	bh=LZo4iReOLgBa2Vnmr/9ijbdUpRuxnQwZt+yFuJsezLk=;
	h=To:Subject:From:Message-Id:Date; b=f2w6fACwdWGs9g1ZvOApVmfJbjCMoXmSGsEhtNMjAdBrRvuzhb9E5134tYgCzfkuLd3VCP2cMvAtXAeAQkMOYF/UdOBLsJW/GUNTMDhtteY7IOKcSCKFOu/WJ9epptD+iR5myWDiIN06xHresvs+tTroR7s8F+szKT74yTaAwKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0Jkg53w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0Jkg53w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6422C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722782153;
	bh=LZo4iReOLgBa2Vnmr/9ijbdUpRuxnQwZt+yFuJsezLk=;
	h=To:Subject:From:Date:From;
	b=E0Jkg53wLm8Hod6P/5+RYm7E9L1YE/h0SgHBSRvbLw7Y4N8p92y/CUtox3dTmh4dX
	 qePBmdVWFMEUKz20iHdfslQplLAi55/FSnHuVBvGkrvPk5Faunxtt36CKe49hUtb5N
	 CY3Ww81/DkDdBa7kEJsQtWraO2QH20OSHCiF96+u+5I81DpchX6hJ1LheMCmZF7gVJ
	 fv2Uf9F8saVz1GhrGqsrdvAeb9qJcRiN4iC2Jn0XrpWyADKPAh2G7injGzk4aLe4JB
	 yiAVbRo9JRe6alksnSZYDXth6+lM1/n60K9JBbORc1N9Oe7wqUO57GALJjKOw+Jyyr
	 gxKZZEhQHn2rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909E5C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172278215358.25695.5279552696579532484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63102366a814b65813582f51cb87b3cef7ff02fbfb7f96c7043f195c106cb0b4
Date: Sun, 04 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722782153
