Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F701EA7CE
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774649694; cv=none; b=GcWYkQJ+DYvWIW7R0+jua/YomV78XmM/49sdlYwyhK2BOCFMTm8gY3M9XBAykh1T+YFRXxGy5hisSx3rxEbcfVXH9UJxv9tBn09aqjF9azKhJunfcxEMN3G89AAED4ydwjBHT4QJTXP0Eb5Fuf5It3eXYOkDPHt5cBQr9n0WSvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774649694; c=relaxed/simple;
	bh=vZZFZvyy2gDWoVDmbZWWzfBiwdzWGdizMBhaZaQF9rk=;
	h=To:Subject:From:Message-Id:Date; b=nFIF5dJfWFB72bljUzk4OH4/Ng4+6pZJ54iRpAKq25+8hrtP4/A0Olw/Z/cqCsxpN1eubRLUTfqA5E7lLUGbdclsJWT/9Zo7ikZoGSg6dlSQVH2Dk5vW8Kbyn99uGF+24OdL0LtBZFotRts4rX1GDPxp7opJJpjL0HD66IoHOQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbpTEDtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbpTEDtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AEDC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774649693;
	bh=vZZFZvyy2gDWoVDmbZWWzfBiwdzWGdizMBhaZaQF9rk=;
	h=To:Subject:From:Date:From;
	b=rbpTEDtqdgsq/+HH4fuj2GuPTOdJXJ5DMq8A5W5sSc/o57Yyk3xaDqswRTyOmbN9z
	 TmblbYOCU6/Wt0frS85WUUzMuNXgwYrCu/yPEOQdDseUUBNUuEPjZjuIqnm2Mu7Ivv
	 6mbv8gU2g2Jd0bq2jgxkDW0O7xiKbAvyObUJPxdxZuDOKB3N80lvwQCF1xIIj83fvv
	 xBEXQb0RrK+v19Z9tI/YOwvrkgW3TD2VjuXchWzZ4sqdRWf1AX8gPBcaDaVqMmRFc+
	 +2UMxQV28vM+uBeAbwwMTgn7F2vn4KOj3ht6YtTciFxD1ssNdAqyb2mXcd4i+zlcv4
	 O0iMV/I4/eRGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958A610F2871
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464969358.5806.16259037315542909146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc02744ff25ba898ef9f1d4e45b8d4952beb5475b3379ed9ccfbabc1de88d14
Date: Fri, 27 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774649693
