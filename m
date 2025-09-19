Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187BF23BD13
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758253794; cv=none; b=fq1zrVHpLXx9XTt32L7rVOQk7ZzesS9/kJAqBNJZvUQRSm1Jw1N569bBqFgqEBULi5gds5FM7Qluc3QJFwJzUjzs77Jx0cwHHJPQNOncHvZ27qyPfTmc9Bk3cxw1Tg2/coLhS0HeYRKUtWqVmMhj2DrTlmPFDsztJPbxe+iySog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758253794; c=relaxed/simple;
	bh=qtvukO8/EbeuqVj+r8MDWaphHOLqQlBi5mhMeEEHhtk=;
	h=To:Subject:From:Message-Id:Date; b=mKCoJs7K1AuaQ7NO44geJ4Xozdms6HdldozoT8aZxiWcQYouG7oVhhQ3Cn+bWmwrtvvP6tjuRqOLtwlzyNmt0ziI13t53GPasYnd6JM15HQHtPyYQlc3RP2wnbjtWKMm2kWtbUKIj+/jLLQMZ5Y0Imx5A2ECXKmrPSvnxloKQl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GC3ow9l6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GC3ow9l6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F087C4CEFA
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758253793;
	bh=qtvukO8/EbeuqVj+r8MDWaphHOLqQlBi5mhMeEEHhtk=;
	h=To:Subject:From:Date:From;
	b=GC3ow9l6qh5opfSE/8I09Qg2QXlSZDRa25UHKjO6AolGHBd2e0bpEJHHjKf2UbkLY
	 D7ri6fNh7BksIAjtNGKvLj8aQqQV0+tXCLeDTUbWtHSdL3IQxOBIme2E82YExu9+h6
	 4zp2JBU5goRxqhptiuEvPRE0F1+pgiecfJkwPWMhE7LtsRgvSNUMtrVkB8vR9TEaOj
	 hVIc7c7gxLCdGh82q10MsyctZfjCJRYUFkzrIt8oTYHHA3BGG9FwsvWnH0INhGddeR
	 8bbQc/DtzRMF+a+U0l8QJNxkH3P44RYvCacEZ9GbfXMH2JRjcldvWKTgJdpd1UgfxF
	 iWLYbl0OzcPag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906FACA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825379358.26073.428662733652011461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1133db60fa1a56666af6871ce95bd5828f15f32f73a9564f48a1bf2ee7db9af8
Date: Fri, 19 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758253793
