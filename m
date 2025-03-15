Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CE618C92F
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742023734; cv=none; b=j7YYj507KJBfXl6Mo6vBBiW4hmGiKy56v6b52WK4JEcRv8GmKlVBvUimX48YzlphTvSzP3Tpqbfa49qHrMxPjaqT5eUr+vlp9iaU2L22zsA3eAWy/mVVbwg3tTbuD8NT9nE704x7iEQ+rNLmoFRNLNcjlmuKoN0qkfh3iVwMMG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742023734; c=relaxed/simple;
	bh=eyLNPrJg5L9l79Fix1UV/1yfvIvzEMjhjC4rVMxB2Pg=;
	h=To:Subject:From:Message-Id:Date; b=IDtJrMVF6xsLYklEQEboBDQLRTvE54843pqdAmID/6E0IlWQo7qYc3LL71DdRcppOZ3JrM/nHxAxGlV8gKXw+MYlk+bgz6dGEKQv3oCT9UtPNi2YlT0iZs8YPV392TIIPmRCdjp7rJuLt3/p8HGbT3AuwIUWJZJmiFCKX0cxAgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BV8Ru54P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BV8Ru54P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5AFC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742023733;
	bh=eyLNPrJg5L9l79Fix1UV/1yfvIvzEMjhjC4rVMxB2Pg=;
	h=To:Subject:From:Date:From;
	b=BV8Ru54PxpeNjSiFbH29EulVTmhao81fk3Mb47qAdPNhUchv0xfA4YU4JPrb5Eb7R
	 AMC1+jNGYSu2wJKaI+Twvmedhwarx2poYEchvE40Z1k2HZX2fI3t/1PKjM5cRZZoY7
	 UPnVTDipZF+G2yj44mP2biEJBFR4F03oTbTgyNaSJ2TzZynzaPBn997FkBjyDFr2at
	 bJvKhypfuupsL4zD2hlWuL3uTeLPgBqKDcxCMExnzxgkyBGdt8Utz7m5k1N4mhWdFH
	 8ES5vPEVJ1mGYAM5E8phgsZyRJtpgxeTdt839tP4sklmlwLse6Ii9yii5BvAb97lmi
	 1WTPCkS+zwVBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A473BC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 07:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174202373361.31477.1661722976855329783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c50e55d673e759921632aa304b26a51a518912eeea6dca8292933cbe7d8015
Date: Sat, 15 Mar 2025 07:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742023733
