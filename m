Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B543B7A8
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783627714; cv=none; b=kErTMxFFLRXIdnOL0uCN6zXGRqycYMidPrVjLhAhZKOYMSnNzSu7YRcEFLW8tkanZ0tpJjTnDGVHTSH8Dw3MA5x2Vh0etoYpRWfpL74gsa2QBg2hAXHQhXJ3816qCJrkY32pt0xO3MUKYWnfIQndflCdcn6Cou2nhlBkCEQRKpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783627714; c=relaxed/simple;
	bh=SUeIC8T1reTTZSoeIO68/qMoEtlTxecJanPvgNquTQE=;
	h=To:Subject:From:Message-Id:Date; b=PW3fpe7RWMYCFOE2hChD8J38W3zwWjEqsWzIWL3jrveyBTyk0F2STL+IxeMuy59QTw9OQ/UeCSSBzXk/BsHqfb22Xx9QFWsQAs6MCl8nTeCTGnY5PnS3ZfMJNJiWSefxcArq/wFYNSc6igoifz0FHFF1Bpxhxm5rm3Vdxi6/Ybg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjTyw/7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjTyw/7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4257C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783627713;
	bh=SUeIC8T1reTTZSoeIO68/qMoEtlTxecJanPvgNquTQE=;
	h=To:Subject:From:Date:From;
	b=pjTyw/7ZOdcPcR8wfmpMYCJ8mOESN35duhiUpKjvGnQja2XFEnvmSh1dhhYkCq7Rx
	 9cttxmerdZrExdgHMZV8PpNvUdPzWNPOSSmt4YT24yvvhu6ddiyKxV+6nv9FnwxMVn
	 nyFh8aBCvzXgTA0KkgcMkCDzg8OkIHqZ21Sh9d10vzlQGeqv/OrcmYo3PQyfVupm+2
	 GG3tiPeQCSXjVMvjV/CHWOpGAK/bJ+aef4Pl+hLPPGoyfZ2xV8qn+5PYQRcLGLV3aQ
	 NIkvD5xyTax9S2pWrVa94al7GbetiElIH4sszvuyLgv/hveccAv8a024S6Kbj++dZI
	 9ZmOxtiPFl/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2EFC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362771368.26949.14293953017682088798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8d69fea86740ee44ca026aa8ca023c6ca099a75f7ae38721c6709984dcbd17
Date: Thu, 09 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783627713
