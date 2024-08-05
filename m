Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427DD33FE
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722831354; cv=none; b=RUfhcklZMqjvg41B+lu34Vhdl5v+oDoNvHTnQIQSVjIGUG1hODfkbC6KyJm7qGz2N5A6UgM7fWF2jTIadnlUzFXLVsw+uy3mMMvE621I64m7A3loIR01bO9JGCVOM+9ivS5vTkMJKAPaBagI1OVytDcnQR6UDPd45pUUOpppoIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722831354; c=relaxed/simple;
	bh=Y3lBoTZCZArwtMOJDMPrw02FUEkm1oCcZFc1eTHXidw=;
	h=To:Subject:From:Message-Id:Date; b=tDgcsTX487A4pHICbz4FUc+dK/9ZeqKcOHenzlFC0BH35CX4gwz/xOxwdsFoNNarfv+dIRTUgPS10QnemYFP7vm+74EooHn0H0Z/dMcnyTuVev5dJpsYh0kK3H+RasuPzpRw4iaCzqvF1ANgKT/ilz1I+vbfbdQTp+/62xYWJUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SptHSsEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SptHSsEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA98AC32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722831353;
	bh=Y3lBoTZCZArwtMOJDMPrw02FUEkm1oCcZFc1eTHXidw=;
	h=To:Subject:From:Date:From;
	b=SptHSsELvQbYmV+IFYnO82XwUary30zFz9tDUxDd40lmW6/PcnhieoY8fH9sx85dq
	 /zN7EWy80otDspWHfSIlqmBayljum9mCYUPGLtg7xwSeU5pB5mSQjt/xXQtGIZUmjd
	 VpOTpBXetaDf0JRpoufZMt8BE1bvgcZFBBUMjABE6pCGy6kcLOFhNBfxSfBSraMcuJ
	 r8Y4sBDrrsNFZpcb0X6DL36qwSjeL9gyEq36exIbO8VIIAsTK3qDg1v1PJ+dM7pj6L
	 snzTMMlhZishxb3pLWd7Udm1HyHnazpJ5PQkLMGVzAfRbZM1L1ojWwxCpARkZavUcs
	 JLlY/X9E36EJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06C3C3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172283135361.19799.13802061012712694592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72024d6011db60f528b2a38e1c29b5a132c13c8f9932690fed40792445c9ab9d
Date: Mon, 05 Aug 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722831353
