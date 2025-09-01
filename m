Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A16263C7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756711194; cv=none; b=i8GmxG3xz3XrklFcnYKtK1BZH/PYL9nCIFC/MLpMwxjMzzHa7OB7vgTomAizkfWchfbWoZvEXCf1/UHL4b/HuQC9Qfd1e8JwjyrxzJPo5luIB0jd2YBCzchZbQhmymUmBCHidms3chWSLk9qtyuhXw1LNDIQaqya8Sn1t1BXLn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756711194; c=relaxed/simple;
	bh=anqhgxemKSzUg45Ay2azWO7VH8mTyOHUn6NrFkVAsiE=;
	h=To:Subject:From:Message-Id:Date; b=WUVZc4XY6H9/XVUKst3PIQWl3ZANWAzMHrMg8VbqiU2C91/h5FkrhcgPc058rm41kmRfzt9YSf7hMFpooAy9VoFYHZqxoAn1I0RCfgMbhLQvY4w+BcEqZbhXyJgAIbyoAgn/GAHMW1ntxRJjf5LDc9PVX+0vP7r1C1Jmf+BwROM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKO0u0Mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKO0u0Mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E411C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756711193;
	bh=anqhgxemKSzUg45Ay2azWO7VH8mTyOHUn6NrFkVAsiE=;
	h=To:Subject:From:Date:From;
	b=lKO0u0MbZzwFWAppI411o3gNHa7HjuZrR4QHZUW1W0VRLRuQensBmHJpUQ5IZcKOL
	 5GeMChHunKuWmAU9kIG583nxNwCbyorXi9I3MskbObBbdMpYJMfQPbIgskbcrV5TD9
	 uVlcvZHuoEYQ8uDuYPuHRf5vPS3kqgHpX05lWWImLj3JANIURpqcninOFDZfKaquw7
	 VQtsCpgFCY0XdT2NPYpFXNBme2Jnwib15X//y7CWHPl4eUWzseCx6OtHWVoisR/mUE
	 zL0iK0io69FQm0scVeiSpXQtInzUYhCSf32X3mu/pMyyx3CDmVvMKDWxOkNVier4l9
	 kWIDJSOrmtDkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78BCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671119357.9578.9627354356822241651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c10f3339a93a8944832698e5d597876b8855b4551122862010bfcbe396c8a1d
Date: Mon, 01 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756711193
