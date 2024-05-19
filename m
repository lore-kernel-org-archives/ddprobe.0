Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F921EB2F
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716146543; cv=none; b=XRPznk/ippshAsnCwTYyb3vFzur2We3eqnISJmmeAwNmF7ZMSJ9ilX8ROCdzNICljA9w1R1BVyAJDlDXrE9rSd1fH/8QW8hfSPofF/sMK2NEcJYHNpemPyvIP+zOiG9oowFi/A2uTV6Z+se6j7qW1nhffybYkzCMnLxL3cvHpl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716146543; c=relaxed/simple;
	bh=wOVVvkUu4T0Co/pRdBprijCoPmieoL1nIVjrcHjIzUA=;
	h=To:Subject:From:Message-Id:Date; b=oEuzUs1hzrAy6soxrERzOMmU889HkSuxW0ftCUNY94rZZDAT+EZ3fKiI+c7CIuE8gdkkf3BEJeZ3nJEHNzoShFtfzeMkGL3qWxaAYkUnOkvOUKXUSj7QLQkyF/o9ZjadCxzOUuHBzgkAIomcmt6FCJyRJujyvJtZ2KoXvU0Rtfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaddMOLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaddMOLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27FBC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716146542;
	bh=wOVVvkUu4T0Co/pRdBprijCoPmieoL1nIVjrcHjIzUA=;
	h=To:Subject:From:Date:From;
	b=ZaddMOLLbprlxn6C0NcocHQ9QmqaBCUmOGcPKrNMgnGj6p6Um7uYzWekPXNVQhdja
	 1z2mAm35xJq/ks99bLyqgPAOl+NaBUtrxU8BiZ31HvM7m5oyeWVMv/pkIm/kpt3hz4
	 9xZnqghPpA9t1fqGQb28Ky3FlNBoJvyF23KNDG4yxzY0d90qvl9Yb0xBHkVtxC4Gtr
	 0LdeJ9VHF8wsoLb02SReJvOCvWymKMpVUrXYQpfOfTtAwV3gGWMZog3oZ67XOGom6B
	 Zgoca6d2QdhwhUpZQkPy6cIudmugIU1j7ysGSFd2Z/NC6UUQSCHeOEJNy/wNbhA9vY
	 FgiRua+JCV7JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0272C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171614654276.26370.5803799622541945469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afff93026542042d389bccdf4544614c7df27c0d197d933b1d58ed1682027b4f
Date: Sun, 19 May 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716146542
