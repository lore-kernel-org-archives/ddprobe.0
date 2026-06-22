Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AD013AF2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782086794; cv=none; b=VABjunfCUlTpPl1G68YdjeMsqW954KM1GR2SIY2W0WellvA394J1K8b2cZdxnS7HpCTV8WyMHmrwVOmDqL7XXCu7JqMhDHFQIy1z/EYjDPvabjFJR3IIQVIxiXWUlfqOgqEuCwRyAY0D12tZhz3eSMEWG+ZuR06pCXmOCW8pOyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782086794; c=relaxed/simple;
	bh=kLHyUJpCHFNiE9eT3rQ9aPpdYxEccfzpWlpbD3mZiPs=;
	h=To:Subject:From:Message-Id:Date; b=aopKKlDnQwvqraSpbS7xBPpFcdfZ75gaefCdXNoTD6OlasuoLDRyftlSJKohVgBR4h89HrvcINqRSjRMEdYmCgbPonoc1sKyaauMqx2A2d/x4u9l9jIAR2jvn51O+LaEf0IdOyw8IoqAnZ0XT5c/F4b1xKW2mK8BNPb7fKmXioY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bN955sSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bN955sSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C882BC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782086793;
	bh=kLHyUJpCHFNiE9eT3rQ9aPpdYxEccfzpWlpbD3mZiPs=;
	h=To:Subject:From:Date:From;
	b=bN955sSSUAjorElmvN3uaKE2GbfgdU9VMyleqVCLzIRNqnGyqE12+VLpZeS0iYfe1
	 93gf4nccVM0l9uHgVAXYv+zp1OiFWo50LPbnPUTOifaTjSQYD2Lhc6q5D4t/3ZfrCE
	 mHIGHaBzzNC52X3Sn09MrxRFCPYblOaBuhLzV5fGs7QAwHz7wupOTdewnCUSzcGqux
	 unfoevkm0J+3HVsNxeW8IpjtGGXlU8rzrse89YUqDLUlQfz7ZUqv0tiONbD3coD0vy
	 i//O8tCngk13ZTycOZEBZ0wlmSAsTomI4wkIZum4KCrZDVNPwKtS7DOrL/L0B+gVcc
	 KSSUyBTRnhDhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD4DCD98F0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208679370.9493.5153880649433873336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23500f685add4552a04a43c6d6ce0f0cc4c19b971bf01d16496e653e94952f71
Date: Mon, 22 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782086793
