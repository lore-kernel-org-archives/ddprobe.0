Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE796283FD4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772298294; cv=none; b=Ao4DgRqQNrBLGvs/W8nXsDt+PGJ9Aq97ARdJJPBHpUJ/nt5rfoqphtKSazaMcX/e/mpSOONjbcsoEyw5kjvT265FoYM89bVSVYVRyd1QILL0GS+jaajpkdGKdHotqsf5/cHgJuL4UqoEtdQIgf9tKJddnzvCpeYqLEOCiTmVwGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772298294; c=relaxed/simple;
	bh=RNYejQ3MCLf8s9ykUZikehk9ATvPeHj2NV3kvS1KAlQ=;
	h=To:Subject:From:Message-Id:Date; b=fI2GVCCHgTkEn0bIQggxPfAd7tL3HEPWuxNmW2TXWkH3wmCusN26T3N4Os2quVQApkns3eK6hBjmbfGkwxNkrcUwKJuidaJlbpk3TjUO184IlDosK93Nlna3bNAMnOTbqv7gO2Lc+uxMqQ7Ji43WtAtqzC6V4BORBcEXsF1zM3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/UL5V8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/UL5V8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A338AC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772298293;
	bh=RNYejQ3MCLf8s9ykUZikehk9ATvPeHj2NV3kvS1KAlQ=;
	h=To:Subject:From:Date:From;
	b=F/UL5V8r9dLZcvwgkA/XjQcd4ZmHWmvg5ik4QbNz0YaGB7HABoQwBwSJ0dNB8M4DT
	 60PhBgwKj+3RiGgtBsW62QsfHnXgoVABl4DhmtjyDDxL1RADbIVOwUFqPINQupVig4
	 SzKLy8wrQDz4UbFO9rBOM/P1LbZRH3Rdw6Jd8EJs6mKjVausZGKfAqhGhj/KJUUnuo
	 CQGh/ew0Bz3TGAP8z6UuaOpO0BMxifnIuzy2OaxsvNBpV8nkh4EfSEnOADCj3nBr4j
	 TRH7okJZSYXJtb2LgKs5mdOxbJLRZ+E+onsse4fymXSEDhMrJvZiS2X8jrKNFtOkM2
	 kH8jgCYp3GmEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921DDFEE4ED
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229829359.7363.12326129828915228196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed016c4ab9b8153713b334f9b51828c95e3fc7eafc9d3194087f6ae98d63e23c
Date: Sat, 28 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772298293
