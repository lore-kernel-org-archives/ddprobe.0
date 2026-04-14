Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE9A38644F
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776153454; cv=none; b=RKvtNsGlNS4V4JcJE8igdPZRu/x/HKon0zJ39E9VBDvSqWvfG+3hK+YhVACK2MEvE1DOQsOEI1XVf4tgAV2CuX/fK9Ck/ctLhyP0Do60vvs8RW4+0kTzCrQEBTHgcq3CyJLmTWlpbCx88tpuJ5duJMiG/Uwsm3yzKySp7wRmSrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776153454; c=relaxed/simple;
	bh=kZ730x7LgjaqAYY++rcQYoucUcmW00HFtw5PVlR2o6Q=;
	h=To:Subject:From:Message-Id:Date; b=Zknqj59VhdHGTrxd2QweNdeR0QVuED2uDykVQyaoOmVKruUF5JtXGM5lHW6jsSH5qPBf7XOVP8PLz44v2dBQyky8YqXdon0JPsJBLC3zIw4xaZXKrDEjeIx99QcVrXj/L6+6Vs8ucDLAOv20BVcWFdjpk+gNLLSV+S1tWQwMyD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9PNxYZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9PNxYZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA220C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776153453;
	bh=kZ730x7LgjaqAYY++rcQYoucUcmW00HFtw5PVlR2o6Q=;
	h=To:Subject:From:Date:From;
	b=F9PNxYZWrt6qpXIhTbsThG79zYXfWggX66m02U7FdvSXdMwdzwnFy4sE5XIwuAUrO
	 ZaSg+fK5hWF3Gx6DDMxlPELhLqObpe7mglxx2uhOukzITkQ8Nxxrr7YuiCC5yFD+CY
	 Knmlgp2K2hZX1vrqqEp7n8hCYMXV2m8X+ZwfCG/8Ap2Cx5D+VN66bwpqqWGIyt8NFu
	 utAIKJC9RtveGWApWCXUoMAEUda18PZxvPVB40MZVMkSCil+WN2hAN5z54DXypJGlg
	 eGsdvC/oJXfbr1ntcg7+wQpYRRx/7iv/ugfO3YxMcNtQ2w0O5OEVU91QD7sBk5lyfy
	 d5z/x1Shu7WQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9727ED7B84
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615345368.30916.12721136656538706838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2cca31f191717011085b39ea890b0e7f15e6c41eeaf9b2e410628657f1515cc
Date: Tue, 14 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776153453
