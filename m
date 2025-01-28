Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57907768FC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738064754; cv=none; b=ZNwoF5iqjWRdNxyCGV9syUgLgkiTbizHPVbM4hFJUh2BkPjWr8xNKj/bHzn8B6kRuG9bapDEly9Wk1zyzcI1uc+UYN6th30uhop1VFm1OHx66Dscx3mGyys6pjcKvvULwUTQrmZxXE1klA2Is9KRh2xGgGzdSa9jrpuBgQAUZmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738064754; c=relaxed/simple;
	bh=R5Va40ZxtFeSPWfbj5WHGdKcX/p3i+W9PqNvOUze7h4=;
	h=To:Subject:From:Message-Id:Date; b=f8ku7CGoz26l56fflo+NGorMQubxPStu/7vjXRju3JyVkszaGjzBA5u+U4843an4P+Aa5k1mCQbMp26MZKzaf/3YiRhuMbFmggX51xgfBGzGaU4iuIUcgsWhT94DppPonFB1GHmuBY/4IjHrhQM0BzoJhOqXdrQu4UzuAL87XB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzpcklUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzpcklUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E31C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738064753;
	bh=R5Va40ZxtFeSPWfbj5WHGdKcX/p3i+W9PqNvOUze7h4=;
	h=To:Subject:From:Date:From;
	b=bzpcklUy2/wSk8hUXSLtUun092xPwk1A0RaFSt/Eyan0t2DwsFtmqUfXS8mkRXdDL
	 C+HU7vllu5S0PeGfRXpODTH24h3AsQi+gQXoVF8T4vA6KGlkvpBZPSDPau3z3TIA9r
	 w8i/1ZdEnWlu8HGdF/hZf/NkIK04R+p9tL6daNuVvWTGTYvbbT5SjyS4BIt3NCcTZL
	 KrCGxfdTQsnspRhJPdV0oNmO9ACu8V9uuLeIAL3mNQMVIdbm0PyKavEX517eYuBv4I
	 OOfPFjFJipPRzWBMKk2iffMoVOOerDQOgRyvJi/6UMF/oxgtNYdGpLN8XETlvMdx2l
	 OekKBprAYoT7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABDCC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173806475361.22281.5791799114537040343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0b99249ca260fa6cdabf2c5b0608c3626c16ce8cd5e49ed5a329886c372248
Date: Tue, 28 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738064753
