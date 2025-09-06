Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E991A2398
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757156394; cv=none; b=L1gILM5CC69IG7mBppLS+cg42FEFvE/KS11V7dtXzqCHsUpCyG44zymF/BMw0ZWblLYl2Km5/7YOyS74HsSIgQUEQytqgQEuwK9PsbaD/sCw9AdW3r2zmWB1AdCwNJ94WCUREzF/EEo8SauEBVbuyKrSxGFjVrju4Dk2fbYxXsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757156394; c=relaxed/simple;
	bh=o1tzoCGTLiF2oBDr8JEnGkSviOXK/3kk1Wwf2IWHJ9M=;
	h=To:Subject:From:Message-Id:Date; b=LltHQkfy45p5GcLVCzCgzD5eykKITWf0x8OvTF7NlF389Vdaisybg9UdhAXmTA79xkhGdFH/vOlIZgZTpQiA2IlKEV2F0mzGv29oGMbft1kzroaEjxhD0TMPT/A9B62oWj02I0/b/vU4cKcjhntidLjr9KL/EW3b4Ehlnmdfb8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WS/lGp1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WS/lGp1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B91C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757156393;
	bh=o1tzoCGTLiF2oBDr8JEnGkSviOXK/3kk1Wwf2IWHJ9M=;
	h=To:Subject:From:Date:From;
	b=WS/lGp1JSE/dsSTPBD0VotY9CHrA/Zu1p0zDDUMVDhk+yvknNHaCDfR3jnh8NjVAN
	 PvHcElG3IMbzaVvPJvSdvHlRWZR1jXs8mSOK+uLEIt61LAU5VBvqHwSA9DNxOGXc6p
	 c2yxf4SPxE12U393D3FEBaKUXHllfsNIr4Qf1FFwRC4TXUnfxPmnkXDVvkcTqE+IhO
	 zTV4R8Hknp5gqgWK/yVo0wk1LNvmIwE2CgBGYGiSQ41neidSqO8YolSoCkwlNE+TNq
	 G0DqYUFwNo8/XOEHYd72TDsEuXSWD2DhAhA6+7U2yUciHBB7CnwWR7g2bqnGs3B7vz
	 Jfnnc9wQ8sl2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D30CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715639357.28298.2209948224677091996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd70c36ab46f126a3a5d885a3c338d8bb964b61b49b4f26e79e6eb8539ab4c3d
Date: Sat, 06 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757156393
