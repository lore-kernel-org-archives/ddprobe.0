Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4664F24E4A1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781675794; cv=none; b=kfays6PCu936Drf1pQppR1UezHwVpvYmvwn9AOzaYNHhe+/7kSG8IC3fjpqDz1pduyvjoUndeDDFAmfp25MTUx2nIMKXop7WFPYvUmDuXV9E5JvCOPDkw2NzmyKP07EecUK0+iNqWflxeOPnwOjEtdsbGCapH6pkiGxuiEUNHfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781675794; c=relaxed/simple;
	bh=fITCT/B1DRw/jbVlLvFmRywEGlz3iewY99o8sgV3Yjg=;
	h=To:Subject:From:Message-Id:Date; b=DAkNR4QFWp4vPT38t/zwFDAGrOutkwJAAnU4/XslGiuwcD4uK+uO+SY6PkbvETGwYVKGCwttp9sl2H42jwf4wsx62kiMNtKcxJAmmMqSx8R7vQxxvqR2c24U6w1q9taMNpxzJaVpc4UfjyCV3NTF8csU7BdbWdSiR4lJFGQ2S/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxqXHwo2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxqXHwo2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9174C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781675793;
	bh=fITCT/B1DRw/jbVlLvFmRywEGlz3iewY99o8sgV3Yjg=;
	h=To:Subject:From:Date:From;
	b=XxqXHwo2XsJgSlDSMMYi92jdpB9LkaahbUngV+5h0ZqOnM0tmeXhvAOVfb2QN57az
	 wXoaLi9WzmUVyVe9DLqPdueBEHwo69AcZ3qHLrwGak7KHsq9D9pW4MLwZsGSVkERPc
	 k8kPkWmyjrYFPgPZtJyQvQzf7v0S3InOqyMEHwEZEk3XQmq8EK5yiwMkAVBT7OvfqA
	 0hNIlDs2D95BZ1ltCMTsMBjNFbESGZqno3Db+gBPLRl8k35g3iFGYldupMNnu9HtBt
	 Q7er8YenZRg3VDxlj1LoNTPPhsh0XxqwBn8/xBPvjHAM9+hJgqML+cPsfNbLf/rwLI
	 DQR5Q4Cr0EczQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC5ACD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167579369.22552.8403289085459112696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd91789f4d451165f2824bff1d54241b966bb897a3e39bfc35bbcf2200415270
Date: Wed, 17 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781675793
