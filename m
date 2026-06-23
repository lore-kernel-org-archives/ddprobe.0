Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428391C5F27
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782258994; cv=none; b=foRss8k7z1Vi86uk+z5bCK4nkOB6FvBcAllUsoP2nNapc6EnGZC8y925MWDCNEFLjJoPmBmORgNKTtQl0s+33NdZATfzyDLlBp1HVj6RgzVUJe0qY7zq1QYyS7m2w3JWFZFGEY/aFXbmt9mCpgNxv160jZrZ5SIKE5mpmIqDUpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782258994; c=relaxed/simple;
	bh=OYhlwdIMxOXIERltYzA9/yjQQTAZNjeKfDpMRSHcL94=;
	h=To:Subject:From:Message-Id:Date; b=TZ3n7FPLRKmkHwocQ5I9j+GQWsUaqaPHNHHtaH5E2qfQy8biUvAEsHey98L1+TgiPWcZ7BgffeMGrcLDhgeMcYoLBXx2rvy2/J/kaPrhXO+PyxRiLmrwuZYeU0yCX9zgARaEiO76douSIRKNXwK5rtJzgFmW07fN+SiLYCo5Vq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNaSuXBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNaSuXBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF76C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782258993;
	bh=OYhlwdIMxOXIERltYzA9/yjQQTAZNjeKfDpMRSHcL94=;
	h=To:Subject:From:Date:From;
	b=UNaSuXBGdAxAMlJ7vBycubiIxNR89raQrovuZnsm7pt7i1zF+IRbv+uH9Tk4a5+jM
	 LopQ+bQ961sBZJIPUWgPRcy9wLZmJpKW7WGktceakF7OCFTxTZYKsNNmDElMi7deTq
	 cHU+STqKGSPY33MFaLwExXlzL8qPJQqMZEYjRORYZKRXFowt6Tju9PX0mdMwpw2m4r
	 NxLwqHkC/aymK13NPCYdF+sCNGodicvxSqMSW0BK2cSH5NJtZVqT1GJ5rs/XTQNjm2
	 bN1+BQazmEsf8tPFei06SC78VIWLhCYBerML+JGvTVp6qUsx4WS+tDOtRc5rdDvRB4
	 eVaZaTKNYe2hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1631CDB479
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225899370.12699.10423146689946075762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c801bf849a84d2f92496d8cc469bf5b15832a75b6149365e98158b9ad49f6644
Date: Tue, 23 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782258993
