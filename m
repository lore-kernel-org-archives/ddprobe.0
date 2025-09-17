Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5DA34BA29
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758126594; cv=none; b=NbEvL0EghPFV1Kkew++luEUmRpGWsMVGRd9LcrKTtZDuwAiEqsdpGM/XnnXAJsIe3O/XfsxrtxihOg9OHiY+MheIQSuKMfC/LjZcbmRL1VwhFoPTpNkl76z3vO465/9aFGCaEIpPzI83PmUMtq3c7mvjc6RoPHYR4aQjUkhZUNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758126594; c=relaxed/simple;
	bh=Sa+FLASXgl8dv6htn9iilWfW7BCmOqYf1FBUYtgvKt4=;
	h=To:Subject:From:Message-Id:Date; b=pk1vK4uTZVsqEes8tsrGzv9r6jBYwwJwAghspMQML/Ypp75nvZDzdIGSWc+coTI6B1nMRW3W4mc+pMOb2Xuv9C+L38INeJJjdYN4Ia01/Un3GsWwO491NXRVT+T9MKw7B3rGSsgDVCjir4kYmoHHjfhNZAh/amePWQwUTKAz3jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLjBEWyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLjBEWyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0F4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758126593;
	bh=Sa+FLASXgl8dv6htn9iilWfW7BCmOqYf1FBUYtgvKt4=;
	h=To:Subject:From:Date:From;
	b=KLjBEWyyyvhEYTTtEn8JdxSRzmSpGi2Bg4m0F+hdVakjx4NInTtS0MQyN9qqlyJl9
	 sXA22fDCU81k8H9UAlutIDy8SLIHFkeC625oywntLEF6AjjFfzHlyty+fzowQXeJzb
	 ElJwTtgb48Kc8eBXL8qnRTwpGGKaYb1Y58QjIg6KW2diiKWaKWuPZ09XXAl3mPlvbn
	 WVIM37dTlnE6+8DaQ8rGjeFKLs4tbEoj/s08tesrSdPGpHI2IHIO4zSGvhRjz05oa0
	 Grew2Qs+I/lEtDSZFNQF7K8P5mA4OChmUuXOkYgVl72wyWUBuTt//jgvZyWmj0JVIO
	 nfcJHAPbDp7mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F520CAC5A0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812659357.5679.16513592012814610397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b24951504c2d8049f419f2de7d80fffb80d68ce3a1a06076b65ed7ee4b48b63
Date: Wed, 17 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758126593
