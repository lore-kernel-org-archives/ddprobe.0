Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE0F1BDDF
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726916754; cv=none; b=WBzN1TTSCCi2tKLQ/Mc3E6kYcMnR3doDYIBN4jQJ25sC+2sChCdJdjbTjSO5SKmiY6Zj9t9DNLZcexK02BA4VB59fO0NQq9c1dEupI0Qf4c4SO+QADPKoko9O07bb1N6hJl2kZyfifVlcz9c0e1iPvaMxtRTsXKg+2W/SQv4CF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726916754; c=relaxed/simple;
	bh=5haCrXVyAorY4NEf/Ik0RMsLi8nE3GSfaDNiEr6mcLM=;
	h=To:Subject:From:Message-Id:Date; b=AKP8BTI27sDKeMvznAM1NPP70i1nBsSU5MfsiCcEUfjKBwf/cor+5mK3QbEB1AvieOajBEbyhaphhLMYoPCbEFmifZzvKmX14CZ6J0K4aWFHtC83zefAgE8lQIQyfjPZuWS558LGcLG4fcFDnUJbvIhIF9sN2NSDvXh/47QtTo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gChaM/FG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gChaM/FG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED45C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726916753;
	bh=5haCrXVyAorY4NEf/Ik0RMsLi8nE3GSfaDNiEr6mcLM=;
	h=To:Subject:From:Date:From;
	b=gChaM/FGcQpLa6P9qOfDmoufjjR7bVd5oQo0iDYWFEtrf72yjQc4AdEvrEFjfY3wv
	 pkLSIx0BeZDSi+z0pItWXfOg+VJY3dNyfUV4KsJ5Nv3mpCW0e6FWl3ISO/x5zgNJ0e
	 jsKFRx5l5yIFW1bgWiPj/eep95bj/mJYJW+9ngCUd/9ScFoIZvP0iEavpuO6KgYHBr
	 nPkcE8T2Y3pcvixlfzm9WRh0V6G17WhuvV9EqfEla9pOycjG8ncpDsORiThy6Lh4NJ
	 yftr4VUaGBBuRWsWU+tTUuWMRGnWd7u6jTDxcBtXopic+PtF6FtKGisHUKkth2uOZk
	 clH8la3YafkXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A704CF9C64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691675361.14016.10088257594199991202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3995953bb6429dd85c2752ab6ce547a284ab7d7b70ca7b8023e9973932025d
Date: Sat, 21 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726916753
