Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444EB3EB7FE
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787555434; cv=none; b=lT+GMKwIW0tfzZnCNQnbTZse+sXAExQw7YWocGtvUIuKkGJpAeDc8pA8SC6uohtLyjvNednH2vg88UAqT/rohkHnMpSI8iiKk2c2IzJpNI10SVD0JrUHXKxndPAOkOaMgPDtBEzT1FEWiY4HtNyCvOORlmZRO2jOJebNqa7KdS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787555434; c=relaxed/simple;
	bh=77hq8j0XiO4CKuT58Si1ZQ5askn5d9lPg4JWmgeEbRs=;
	h=To:Subject:From:Message-Id:Date; b=O4xHPzc4k4tCUFVRllRyMiygzYhRlze3PczdF8WlcSbmhxxxfUgWp+rKzSxDSNvX4th9kiLaH/aYQxaZyuRCunV8GDZ3AYsrSHmW+8L9Pcae+TRD5OYrZ9f0I5Ebk7bJ4/bHIIGMGA+bfkozPUDj2yHpseW3SPaktSvc56J/zgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYNYEd5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYNYEd5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF735C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787555433;
	bh=77hq8j0XiO4CKuT58Si1ZQ5askn5d9lPg4JWmgeEbRs=;
	h=To:Subject:From:Date:From;
	b=YYNYEd5f420LWxpOSAMc/qUhZDv+fxgrvzbVWKFY5KlS01m2CyPh8D/nYNyYMcCWK
	 RO70ZgcIvMr3ui4ry0vqQGALRhb2NV669Dd1xoTKuO93jTu9v99uWK8ORNEns3T1D7
	 sTNBYHicE+Comy2kLZtq9EWxbedfyg2AY2YV3jUY8K0VKjrNcLJacpYerbPfaeCFUQ
	 ZKCse13pyik4Eg0LtdKBGRPakV06Lw0p9L1hv1P2JzXSQcsUe8xtm6IaOyG9UQhzJk
	 lOwXEVFQMV6KOQ4lWUFv2vyQcrZ9x3XhxMy2CJgBqZ97uLLgNcpmCjfLjGas645pcw
	 M7IK3cFq1hmJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9D5C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755543369.22687.2408122186712376784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3538ba59631b837a659bd608db7a0672b01af363f32a2f4153e3f082b4bde276
Date: Mon, 24 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787555433
