Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2742328C840
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789609834; cv=none; b=o4fs1SY08LNYcxYbeFtG4GjsR8HvNBUGEnUTOP6JPn8nn9D2UNkB4sb1klkmBxaFIlGJGyIUQmi7KCNZJ/DCNRsYc1/j4iUoFVxT8OzW+0AmblmU5lQwafVDoD9gxyYp5MkUwFxJekD9MOHwvt5KINkKSTt8zOo6AJf8jKMnEaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789609834; c=relaxed/simple;
	bh=Sfxc5QV7dgYVw2xS1FPH2egdQ3GoQufeYt8q7g4sFT8=;
	h=To:Subject:From:Message-Id:Date; b=deayK3ghcFWmvbhevAiHV4gHTYMtwaFBAOpBn/H9oTa5yzN+jatItTQREkkNkx5uDkM2c1DMxLQTb9srik66LEvn/0sWsH4zglBl0Hx2QLtdG1iAuaoH5X0OvPeGQ9HuiUryTf2So3pUusIog4D67iL14RCB4Fg3HPCHqFSVmsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEnYAd08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEnYAd08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF568C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789609833;
	bh=Sfxc5QV7dgYVw2xS1FPH2egdQ3GoQufeYt8q7g4sFT8=;
	h=To:Subject:From:Date:From;
	b=bEnYAd08N4oCRjGySSaeCpys1C9IYftSCgamu3gi1n5yx/MX9S0kj8VnHf1WNtUBa
	 TcvAhYCLy0msjV3TB4c1sw1zHSjyHp9pG1YXPBNvVDT4Cv/U2brGlxeP9JlAnpgQl6
	 UhP5zOlxOG92UFUY0iSDiKnsGhL5N3+Bw3ATHSQre+yZUt4Zzs1iBdOGhrE3AvMcTt
	 G5koJ+ZwAKgJX0gRPfflliEjsuEMCtqHonujX1sMdeXKeVWmKD/wDfEmqobsV2VN3U
	 cMlVV4obofR1sH8Uv8bF+008xWQVC6/cvcSVrasfUN2FKoG1oXjE+5DJuMcSkmlKX4
	 0XxsxDy8S8Ibw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2B6C982CC
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960983369.7637.3179061254783410365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05593fb6154f4d25dc2acee46cc5284933ece632012d5c70b13f3a6036921a24
Date: Thu, 17 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789609833
