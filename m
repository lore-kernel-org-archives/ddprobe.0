Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BF5290BB0
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751063994; cv=none; b=REKe3Z/Tjm2aUO/lRGd7tUzcWF9ws5OeGFpAUZxfOjhYDKLfm+vOGT5ysv4MSIc/7tkCU/QkM1JURKD08gK0ekxn/4rfblr0TJDFh7wC74MUeQzOyo62g9xF6pWnr2CoaPq5ib05BvA5D+OvYQNtTsfvO9baxxrYVTRJI2/jhzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751063994; c=relaxed/simple;
	bh=hdYgXF6qmrVAaztyDtbxlUReVO5x4s2nYFbVYx8zwwU=;
	h=To:Subject:From:Message-Id:Date; b=aJ2Re6KBWsIxMkZsi2OCa9vJAsrYPEec3YFfpsWrKDvDO/EEzAnMqH3tWLFHE6s88lBcCr66C4jwAsj/kJaQtcyr3CTxNhl4yqZ2shK8F1af8kd5DWJTelSa8HznRoGJtGvKou04sblUNq5aS5rDTST6Rfxiv+EMH9FlCiaRNIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLCGnt+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLCGnt+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7518C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751063993;
	bh=hdYgXF6qmrVAaztyDtbxlUReVO5x4s2nYFbVYx8zwwU=;
	h=To:Subject:From:Date:From;
	b=JLCGnt+HnctqHKIDSJ4Fo7jY6cg+twIQtxcaBA+etwQoXC5wylXwffbQm6+T7fxlS
	 4bRuEwgH3xY6hESzCFYiZO70RpfOrLCxbexxSIwEmbEUmgbqxgtYTFfr8Kw505CwpQ
	 5F1Ygem3trrehF80ptvkG7toh9NxOkKGSByIwPYIXGdrsfEcCLQ0Z21eA7B6nIwS9g
	 Oj2sjg9ZAcDPGijhW9KYiEasuxTJZL13U/nbBE20wuktUQC+zqUPjXVP8NWSEODIAb
	 0mEHUsvFVIrBWDXk5oqy6HkFbwS8x9w75OOw94xjatLbwh4Qo2LzJZyik+ToEww3Vb
	 yEPoTLR4QwTxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD6CC7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106399362.30216.16450694814942848151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc337d2c827bdc58628eb1ca687784c8aeaa03d6fee9689c118451bf0655424
Date: Fri, 27 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751063993
