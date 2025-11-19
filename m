Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0559D1C8FBA
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763510515; cv=none; b=t5vS+AFdxZ1H2qOJjvl99gr2RToatPdOEDLjepZoKknKPejUtENJTwi5Z43CxnHnbGcdntQ/3UElnoMfwHtpM0OQ4XljP0hDVp2ZtbAlJAqF7lWPLg2eYLqtKRXKz2EzepOFuxf/9ZFXSlrraIwwAwoXjpG1PI1+Q0bIvX0z9zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763510515; c=relaxed/simple;
	bh=c/R0PG0sBdCax8QmZZUiAOcUy0CWkqpg92DtIN7v39k=;
	h=To:Subject:From:Message-Id:Date; b=Xu6D0S6bWN4CXpskAJaAuD0mXU/Zg7IXDDHZ2GEXj3+KIQtEjGQi3tT6HDyelas/7fcAenL67ScCPmRS44iguoBXlxTy5ta3uA6nrXC4ukm5WqGf8ni4zHhl8zjp2xDbTPUKSUb122sHAMnJr00t6HwVAoNoNNAM+7ulrr3gOyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXvTSV52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXvTSV52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 211BDC19421
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763510514;
	bh=c/R0PG0sBdCax8QmZZUiAOcUy0CWkqpg92DtIN7v39k=;
	h=To:Subject:From:Date:From;
	b=iXvTSV527krvt0WA1CiAN5KeevuCim1nwUlNjypXOIDVmsw664E2UZz/R7zw/2CPU
	 DhCq4RWO93gibM8jxLEB1en/czCowrQX7jlp04xGKJUZL4XOnGRAO+8hnmg58maIZh
	 ueFCKGLh3NL5jtInACIhirS8aCyapm+Dy1uNGeyL4y9DqinmhLpi1lmSt2kIJyYAXO
	 2GogKAWxJXSwl6jwbrerA7PunJRS4y2vYLnIgT/u2LIF0QrM52uiS4TwLAmgeOT0T7
	 jqVI1YeMflx4rGA+WsK6Aq2aHOSIA7MV0YlAIwwcsYcxm59i/YkemcGpyVa7mKYzt+
	 TKMLazAZghjPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F11CF2562
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351051360.8621.4480617515167904031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad0790c3aecbc9d3908f07d950ac97827fdf38e864092475bc67296bb5d399e
Date: Wed, 19 Nov 2025 00:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763510513
