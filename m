Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C19E196DA5
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717780043; cv=none; b=hcRIDjpjoTa9LDuq7UsM64FH+CQi60bWH/bUZqDEu8l7xLGTS127fmCAEa2yfuTvso2cP7IVDBoZHDc7LhYTXUxB412S0D+sOsn14VJJ19A3k6oMkOBLlWQhkpl4E2q1iinOhjOTkSzKcG6KauIW8ObHyFl05NHMqnrEu/Xz1as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717780043; c=relaxed/simple;
	bh=1HIj9A9gU9DFAQGIl2tEJgVVigJsU7uQqII2KoolLpc=;
	h=To:Subject:From:Message-Id:Date; b=BJztGErfdOVDSP1tKsQtnyL0b+S+eR+/LDBeFHLJGKVcT92vCe2OZRVLYz18U0Is+/e+FtYfxehAYXc3vSBpotXshhd2Qc6nWEcqDCa1dxWnGQSMz0Eo39A0L4ZJJF/S5521J4DAUO1XENJczKxe8qMVgAvm0WZPaLwjmR3r0Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bjqvh4Oa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bjqvh4Oa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8169C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717780042;
	bh=1HIj9A9gU9DFAQGIl2tEJgVVigJsU7uQqII2KoolLpc=;
	h=To:Subject:From:Date:From;
	b=Bjqvh4OaN+MwlMQWzADUvCNKsPteeDLNPbglrPXZp8exN7Z2klrEKNpAHqQ5PYSm3
	 OFNKXAVsbfbAmRkfyxSecHICFmcWg+M7sPPiNN7OQEbDa90c4f+7y5pffynlyvDMNi
	 5SfllubPH709///K5f7+2Tit3dTKHuEQhxOCHAUg85v5/cri39bOaGDm3Ylyd//W1q
	 Uas6pqcEAsP0uJP/36W3B1+yzD/3waAH0UXRfmb//BIzLgbxcfp78tndB0a2IAx6q3
	 DUhQ60NGXHRw5LTRufgzplNe818fc+m9EEyukdwrobwmG2c6TQRJGLOAfXHGgo27Sl
	 pzvxIUyi04AZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF154C27C5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778004277.28756.2922772548710547626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03eee0ba4eb19c3ad7ff4f72c80d058a2867f6bffd34df33803dd1a14ceaf7c2
Date: Fri, 07 Jun 2024 17:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717780042
