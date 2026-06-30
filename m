Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411DF10785
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782863914; cv=none; b=gDQIDl4nGL2piUnQmmg32helcjVwn85ZW6xsF7E9FgPblpTL0cr1Ns+bGZzD3j7znDnXRI70+trfpbhJVrP8j0h6KVYfDD5CDHFiVgI8O/XLmLQhVCdpVVf4J+MPW5pytU3tlIvLwR7ziLcmJdJaVERw3ejhK3TJHbdrUmBsCr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782863914; c=relaxed/simple;
	bh=1d/5HFubmvg5nLy2HBWJcTsmlZrAT4jj3zUmfznJ3Bw=;
	h=To:Subject:From:Message-Id:Date; b=tCpN52NaK4znhuGimbDAYFoX5Oh4ftJEBtk/orxhyO0Umzl0eSLP0tI3WM8e8QBshhMp2zD2FBlGisDLhFgSbRBpwNG4fkuY/qqIkgXuOcYJuLMFccfqRT4HZqXRNZwOBofYGRyLqAfn3ui7buaYyVHZHwcJKphTlVTIXnW5mPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAFblh85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAFblh85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18EFC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782863913;
	bh=1d/5HFubmvg5nLy2HBWJcTsmlZrAT4jj3zUmfznJ3Bw=;
	h=To:Subject:From:Date:From;
	b=uAFblh85ZHs7CLyqie+V6bMthzzHosMNhW/Sd5osCBZBBvWRr7trrkt/8lkmJbqPh
	 FIwkiZVKzPVVwlZr7gxy0z0cvhdKSrNt9rXK+07Vvjh0zcLY5pPW1gru/oo49gddMO
	 VWkbuXDVOdFjfvhApiQH2jHf2KcDt4uRge9RWZPVLiTQ6Zx5lOGn9hKhdSQbvxe02l
	 UPwrMmz8ZWFSMPb3doynZf643/CcfVV056ShaBk7bAKBO3586MNili2j4OhSVdjyRr
	 M53EhmDZXzuq/Khr+gLBz2OcaUMKuTWopEOOch6Rpd9lNzFuLmflzEcqoKx5YFLZO3
	 pajnI1sg7xIXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8596C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286391368.12644.133679127976240299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aaa1c3e08f6009ac8be03724247655650017a1aeb8cbad94dd6fa0c74566637
Date: Tue, 30 Jun 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782863913
