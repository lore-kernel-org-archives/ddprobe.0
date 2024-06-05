Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688C215533F
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717617443; cv=none; b=HtTUhDKpDuXQ/3En7U4bcDYQXyhaSmrv73iaI/DH8pJVSI8s2YnqMBc1Z7YbfyOUeYrrKvHFJ/XDRiLiRixwRAfmP9z84tqK4fPy3vzhhXMScnRBOG7CpsFwBiQbfa/ZqmwzRVj20ufwUsF6CZx8I7EsGGeAQ7QTLv1qaiSFwf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717617443; c=relaxed/simple;
	bh=trOlXWidJWouA7GluUxqgStM/bQrnX/Z87hm8bCwF5U=;
	h=To:Subject:From:Message-Id:Date; b=UEaf3DKFuS8K2G0IuzRKzGprJ35QKE0RLfsDWZRpFaGk5SJGXfYFNGriiTorP8RSW9uylXBztPdPVGwytIzy/z1VSDNOxPuzfD6e+OL3nbkaVt2s5W2KsioyU0FbH/3v91uvhXKiD5eHbYzvxHxb9h1nJ2MHyUpL+f8BshRlgj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQUw+hkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQUw+hkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA5ADC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717617443;
	bh=trOlXWidJWouA7GluUxqgStM/bQrnX/Z87hm8bCwF5U=;
	h=To:Subject:From:Date:From;
	b=hQUw+hkIG+tAohc/BuQmGJAbH6/Hi8dOxig9eQJraiGNsu12oeW1S7lXIn2A2NPbE
	 TGC19Ay5FLs1tvnDMaz9foGdB1J1kd943gyu8rg2mlYzqhwjd/sxW6rglo8bJpyuZ3
	 r7fIbQnaSDSa1aANfETSl47vt6MXkrUIPt2cIPaMoioFRVOAQ/MmczmlMMm5uJg5em
	 OCa6IgEO/hW90yT0zdBiExLG6CjUJE7wseVGDWpoNchKstdQoAAnkDvvAScfkfZYj2
	 EdQst7xXEWDOMTvOv2+jxlwYzRyQGMbwZBH+4XMqm3FB2ygYB9/3Af0kWXynHs+knp
	 RJG9zJKIv61WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5F4BC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761744285.3356.12956766036399124084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e59319c000c494d1bec6bc62b0b1412fa34280d495fa86c2f91fd7414ac78e
Date: Wed, 05 Jun 2024 19:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717617442
