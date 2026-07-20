Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56042346FA8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784586514; cv=none; b=AT2JVC/G+AP4n9Ozji1z55qg2XP/i1kHzpmnvHZpZOtpID8IFcpF0jarKCtivSErnnRtJG2u7/EbaLDK/J1tzq68k4J2DZIBeyy+9ps28eyHBzmdDRYwc1BjAhKe41dPZbISQMElhH7tmq+pSz50J0g2E3dsyJWcMt5gBZKXPi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784586514; c=relaxed/simple;
	bh=MzTByiu+9pFQ2bnE5ZdWH043aGmJyAKygGx80RyZJbo=;
	h=To:Subject:From:Message-Id:Date; b=S0Bjaf3GVUCV4WPCiD+H5bD6owr2Jk3IOE7VbwUuPoub4Bn9VfvDgBEKZ9Vio8bf6lRA74/xVF3GFNal4NSrPtG2Q0xDSHFpzDrrIFsY5IgoPhtcnDfw7vUfFxjTLzmwn8UUhiIGU9z7BAkqvKwJTTSRkYT+pfBV/c/jEzFxbr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTidnnU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTidnnU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D714FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784586513;
	bh=MzTByiu+9pFQ2bnE5ZdWH043aGmJyAKygGx80RyZJbo=;
	h=To:Subject:From:Date:From;
	b=VTidnnU7znoKBy+i6xApixX+hRRQswe6rfqHl3y4wOeqITFDO4ZvU2Znu/uJ9qhCY
	 XA3DtAg8we1UcLxMOos0GRltZpLjl6JsRWAPg79nn+5DN2ljqWLDL89/xByZKOvCHC
	 t9EiFvRne6mVWo63hvIlo3JMdsXxtGT8Gt4wnLPclpB+eDRCfOFaFCvTBr/PLqb6vs
	 ESlTiOrfilpAOORCOvbF02XVXIc3vQWhIbkaBxFlUEfMwS52Ku4qWNCBA5eBTDXya7
	 3bulqZBbyQVpweAIyT1GOhnw8Gp0U9KODDIcbafr+nTWWPHjbfhsRKl2rMwdYL8Z1X
	 NxcGeGmhvWWCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE058C44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458651370.19408.12319030718805450603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1e6cc31263e33761ace3aa40ef1410b91cd6101354f74d220cf0ce57dd63bf
Date: Mon, 20 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784586513
