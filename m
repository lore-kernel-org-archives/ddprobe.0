Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAAD1EB3F
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716900263; cv=none; b=OxWuqxCH8/uVx48zwshxwbY8NamNUys/r0A4h8b6KgIod/+wS9W4UU4nTFWZus5j9Wz6H0gvKCpRVwlk9Kq5ZEApmjLOqK+8iwY/SJxqg+8S085OQiGp4MM8WD+b/AiYeFYBvmTZ+qoA4CixTZtcJQCEbVTKqmyEm6DrhhPaC2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716900263; c=relaxed/simple;
	bh=Ji8nQliMuQkS5P/pf1DnXaak+s+DxVXCiv6aumeiLGY=;
	h=To:Subject:From:Message-Id:Date; b=UFSImM6lF3GxTl87FoNr2Jan54MQTEP06xKs79Cpgud3c7H6x8p9nzHMN/3g08OaV6Rc9m/7i2tMmLV5UT78V6vEg0mGP4fgYDdNH2Vhri/9PPOOgb+TTkYty3cqsqb9q063uBsYFEydYB/jrlb9pJv3LqrIuMyqN+vhD4Kc0jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLXdwWNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLXdwWNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B2DC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716900262;
	bh=Ji8nQliMuQkS5P/pf1DnXaak+s+DxVXCiv6aumeiLGY=;
	h=To:Subject:From:Date:From;
	b=JLXdwWNtZhPqenVcbXvGVNJNR1Wjqg5+neuyNgOBVrsQNAld4VBsFfbeu37o41VtD
	 4hFCPeoSTk6xSG7Io8yWYqlsl6phED96hmUGGznVNEymhEfak7JagGtJLUB9zr9tf0
	 rtKRIs/q/aovm92vWSxZrHPRsGI372zYokiyd0z1c+xSo7yKBzQYj3pBDR8kGLOtA0
	 Jbm7T/iv1llnmpqRoXezL9QibkINlhuxa2Ubx3nUpHb7LdAqWVdkgxKdeGrJlWhS1j
	 GdhT4cb+4Cbj8e/aHu0lHmLjAHX/lbpSdFiKWLk89qdlDUDNxjCYc6dKq7fJiuR9yU
	 Ro4DkT1mUxQyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35D6C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690026279.25125.1517781935189895091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7e5d97b84ac0d6df779b19be2c9465e83c28c6a66fb84a12881f939668d2c4
Date: Tue, 28 May 2024 12:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716900262
