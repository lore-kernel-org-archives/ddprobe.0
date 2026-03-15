Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9D55B5AB
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773540293; cv=none; b=XDeaQJyJFR2qzk5+zgnDh7L3hNp3yUZplW/TFvU0UZ8gQ3PuheVh8UzwNVttVs7KBHOHxm0PKg7IWmWYilwcferWBynnEVAWuHiZvAtnaJdWk2j63zUK15sL7/cu9aWx8y/eC0mCptGCzrgFdHyjSE3sXUlBKjmI583L5X73Djo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773540293; c=relaxed/simple;
	bh=CHtSbjHPHnJLTVigQh5cgs14cKF+xUyPEYmKyLHyp+M=;
	h=To:Subject:From:Message-Id:Date; b=GH/2bFhFMZvPV5GFvN5wPmpdFrOWKLFPdUin/6jPgpH9xQgSPcYhvMXGw4IVNb+B86NV0nBbxgN6lKtbsAYP9JN89pvgMQzdotokZgD+1qfrtcoXhqolN5mkkhLhLajZcHFYp6XKWWknGgtaSmpwi9SizyaCGry2ugUvQknHRdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0UR4npC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0UR4npC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DCAC116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773540293;
	bh=CHtSbjHPHnJLTVigQh5cgs14cKF+xUyPEYmKyLHyp+M=;
	h=To:Subject:From:Date:From;
	b=K0UR4npCzPDaGygHANzGFM4jZ4EFXK5sTyOAfPpJ99JG2DESz3laGF9fzEhAEXJgS
	 j74gwJF03nbxOeHuMBiTMBAssvBtVdYNonLYCpAC4bTdXQLme86b+l0MYe6lukyIE3
	 ugqQJBCB/t2F1QlbvmxAAVqPPjuho08qesZKaqa06sptL+L7h1x3Nj5cvmHlcEwCaS
	 1AkwV3a5ZKEr9qf2Fx4QapYocOGkI/nWbB7apyLwfqNmP3JJamVMiTydMEGicwC/+r
	 LKPKfweP8wc0pqopKbK4C0fKpQ08EFsIKu6/t1+f0WdoT9lXIsNpZX8nmzJ3qI8Vk3
	 iWSMkLxwpwScg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9298710854B6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354029358.19179.17449185098195146586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ebe0cf4a6475eda80551ad49b31c831de2a83150663e3c96f5e5235a9386b5
Date: Sun, 15 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773540293
