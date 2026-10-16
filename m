Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF6E3E123F
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792194034; cv=none; b=P4RJd1/7Rs+g6uq1+undc5dyc8OER2rrI8uIlhcToMNoqffAdduRLgija+o/VLfTB8p4E8YLOob843gA2GwXwGJGe6SgFIrkRqSTNbEsbLNrwE1wWtEJ/JJWx0Rk57UXnKluPIaE1FgV2XasNHVpsfqAOSqZ6kSqlwP4U3QwV0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792194034; c=relaxed/simple;
	bh=qAkW+ipZc0e8iCyl++oT/loey3dsiRA0KJfnBR1zmkA=;
	h=To:Subject:From:Message-Id:Date; b=kpNqSpA+cdIDA9VHipz4gbBGqW5Bb2eUhbZxIc30uwWJVbioZN6YLvaJCdPhsejFnRyYI9Z7vDIpOk7O4ZNISuXU6YyJUsut1YPWaR3t4zzx+svO3tBgkGvaVT3IGVziP+PtGm0X9aYECrzSC9YTpH8ojhcQrd+N4s2UA7A+sQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcEPJWHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcEPJWHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0016C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792194033;
	bh=qAkW+ipZc0e8iCyl++oT/loey3dsiRA0KJfnBR1zmkA=;
	h=To:Subject:From:Date:From;
	b=KcEPJWHl2LdrC4zvY8irdwWRdLUQsAJsHyA8eyhWhJ5InS+VNv9ewQMWxOBwcS6/q
	 mLOORSsG6DbmDZ1BFv/jSemQauaVifTZY8NEP3D+1O2K7ivoT1ipe+6AsjHKXB28QE
	 tAlpsuW7Qn2qyj075iXZAYxybA2mszuz35JmE8SOgH7IfrPqo9z30V2HHzQrIwt+rK
	 lslUs+GpRLZ6du/3Wu0FF6T7cAQd0+NneQ/V0Fl6jY+pUXSioPcrzwXNPWvIs3Y39B
	 5VoLwq+faeSQPJj1JqDaiWBbpjqCehKJ0Zj6PH5I9iE08HivHxrYII3rJE9ezEXsmt
	 uKCHVLtRoqFGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB54CCA490
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219403369.31154.6741729069650041275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6ec0a1cf2cc85372f461427a79f849007750de747f5a0a28b7ff503e743906
Date: Fri, 16 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792194033
