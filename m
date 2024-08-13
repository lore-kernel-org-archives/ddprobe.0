Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1653C60B8A
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723535154; cv=none; b=S/wAjXhDUCw8Mt4ryOzBgNZNSczF6mur8JJUBX38YgKk/tkyUkkjl9TbJYClpDlFqaaAVDI6W6j/nL4jHioE6uKA8jtH0b+ob2PoEsVNff0ugpyYtUzWJoxgJjcQL2B7p9HN0VWK/MCFpX37LQMU0Zh56mq4HtkgRbiT0SgX3sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723535154; c=relaxed/simple;
	bh=bFdbeZu43HbC98AWM42uP0IEq9v+m+gM9uLkNH2ETQg=;
	h=To:Subject:From:Message-Id:Date; b=uRsDywfAzRhAJt7wsbghzriA6JAILIgA6Bz6YCUa8rn3BYrWXVbn3gyGVaUtYNzlqBiyQFwvMrJPL0r0a3ca1SSkT2wknfOU52AMfWuwUar6g+Bl69HjZQ7Y2x974CFgm0FF7aAl+qjMCqrd0ZQGpXaNSARRpy+FM1K+8P3GqJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxKJoBXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxKJoBXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD15C4AF11
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723535153;
	bh=bFdbeZu43HbC98AWM42uP0IEq9v+m+gM9uLkNH2ETQg=;
	h=To:Subject:From:Date:From;
	b=DxKJoBXLgnEvp+iy7sPzvpVh98kgc8xQsGFc34KJ1zKWTqPDFucu0YTTLUgCLrKUK
	 ZBnFyZBIPjOUJD9ARTcRKxzOpS2e+VhtdGQAzNtu7fvakq7rDEgt4BFWfLW1FIjKjP
	 ruGV1giYN5IPjoAjR3asBgQadCQlEobtHuBtuU14BVyVK3xo7o+XuIPV+1E0kQd8EK
	 Nt3MjLaKM6aPdb1WPxazKlRz61SH9XfMbhJHQMqh6jTF3O0M3RNPQ92CmBPB4zV/1o
	 gRJNs/mDAQcPbIR9ynjKwDDRsUZLsG+55jO4ofHhM/Gb3nXghM0v7wnKCE7uz7kijo
	 /sIMFGICxVO5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90408C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172353515358.516.17068596555317639786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb0b8fcaa6aa034426c360d9d3549a30860cf99ed49d6a7e44ec5a59cf7f309
Date: Tue, 13 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723535153
