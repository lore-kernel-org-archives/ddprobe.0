Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5677B757FD
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716293603; cv=none; b=hOCRBIUZBGUYrcHU6Q5w04zvJjtiSgTHhCmskH8q8NoO1fpQQ9rGYsGVigAhD5ujmB4Ir5TF4bByVcbghsXeNMggzwwhwI9cAlBRQx4Y1lO4DsOCFhHf6JBr1k6gIC85PjL+66H/Co+4bHV9y17/EadjXBaNRFIeKLFMa41d42w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716293603; c=relaxed/simple;
	bh=iwjpWD748xaTnNEm+HejZw+4E9zHub8gRtV8K3R8EOE=;
	h=To:Subject:From:Message-Id:Date; b=Fh8C8mOoKJIp8S4ReU2wffdRh0VWRdAyRKiVEeLn9fOr64R6KRxYUxMfS7fILQDxv0mgaJJiEgyTx9gt5qkiIFF8mX75cJ6iUplGmMedVLKzjkUYkmR1fZojT+ZjSzZIwTwRrRwJ8vXsq8mwwlt0fUkpvuDu1j+9rrW7iFmpsY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGm2u69g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGm2u69g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE720C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716293602;
	bh=iwjpWD748xaTnNEm+HejZw+4E9zHub8gRtV8K3R8EOE=;
	h=To:Subject:From:Date:From;
	b=cGm2u69g0H0ElgDKj4T4uO1mhPtynejhZFfwavWHzO+3HAc1c1OkQPIjoJ90xo6iX
	 jyEKrPvaom3u74SI9SNxHP6/fIPeklXdJuJNcnR+TXg3cudqi1nuEJgIXqw8mwzpVB
	 MTrZ9Sl96N/pVrJfwEB17SPBhDVOw0XPSNemu7Bo7INSuEeqfbqYP7DrhV3y3YoTT4
	 OH7/GsKCIxRu1vpEFgwuQ4oBEryeeR3Os0RBkiCppgwJuphuXgwvr/BXb2AH0+8Xrn
	 LCfslESAVOn2w0r8eMS9j7sjYKf58OlFLJQWZgv1Gct7io1kYOmytYTzHeLPwe+SqC
	 pQMsMpNcPl1xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CBDC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171629360278.13125.5065933108289178501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5934389ef0b66ecaab5716773ce109365f56b6d0dcc96e98d6a301d39a7c2cf
Date: Tue, 21 May 2024 12:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716293602
