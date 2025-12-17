Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A17F336EF9
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765985034; cv=none; b=NzN2JGo9qfqoTNZaxw1I0SrTe6H+BbY1L0fBQ1tFYamiDLsiwtI6Pk7nxStYNlCd48UvRMcWprtgz3SyNhT7m5bOwPgEVAFXanEdLILbVFXt4a6mlNOmUfOAroIxsg1GYbbg/ImoDFGV7J/iCsj3hhhYUFtPPg3+aQxRUiozUIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765985034; c=relaxed/simple;
	bh=WJV3ezFYZAfSjtqe5g+pJ7/qTPmn0vgMAFpMyC1O4Q0=;
	h=To:Subject:From:Message-Id:Date; b=YVdSsR3tXsjUlTwNWoEpxjbt8DCfnkbZL1HSowrrR/9ksSPHJGyPmfp78z7GXThepuEDxOmZkXOvbTolJ3oP2Y1F6f89++GOmUx6abX64VBIAZ24sMzzQ1Ipb3gwPAhbDW8sqrzxAnzLLhNsdp+jYYQKFOvRnIYPD01YHoD5Srw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6fsnUM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6fsnUM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA29C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765985033;
	bh=WJV3ezFYZAfSjtqe5g+pJ7/qTPmn0vgMAFpMyC1O4Q0=;
	h=To:Subject:From:Date:From;
	b=N6fsnUM/oXNj9Y/uoatwiLEyfMf6PuGtuNOBf9BfCsrmPYdaL2XGhfjf8ElhYzWVx
	 yFpoZVt3LAC66NS6rCWQ2x0XiXFoJSfKGtfx2AbMAz9UOVRLvs8KDpx6uzZPGah2wb
	 ApMeSBih0hEhLNx25BlO99LkZqrLwzzxfUNFx993Gj6X03cN/fHqKeaVZcQVuG/R3Y
	 MbYYsuiY12rebrCAtHRB8BTX/vq5+mSmHJ8WD2gBvScmVKNkCLTz8e+1iNPIzj+in1
	 tIZgN+Wx6Pe8feZj1MRTWB5bxeB3QEJKwf8HT8My9R4MBt9kWh/whWLhluEWD6+psh
	 vJw4iBGoOuk8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF46D65C62
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598503363.29401.699548538329145420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75297f5a9add7267bad15deda66d3dc9efc991aa9d0f20f364573b5f5ff1c906
Date: Wed, 17 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765985033
