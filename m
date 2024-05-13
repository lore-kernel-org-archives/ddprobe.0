Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FF1224CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715622143; cv=none; b=eRaEIUSRctR59sXAcD0XNYd0EfBO76srjI6JASvZ3buhmtP/7jRpVsyBrV2m3Q/xLS9fhBjBMwBHYLfdeRckmR6XzNxChoG6JaHJ59agNULmkc3HBkMcy9atkmcJ53yTiTthziJjEYTpqLvVQtifHACgCO+Qg9xheygDThcPDVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715622143; c=relaxed/simple;
	bh=qPGhaFlnMKO/9VCBBMszZongW1UXL3OjJmQ1Yxsintg=;
	h=To:Subject:From:Message-Id:Date; b=kDJHWgpXhrgujk6/8fmhWyiQUUI1ZouD5+y229fWXlE/tNqkhSuuaGIoLb2aehoJfqU1WLiLwV4znYkQTiqxcQZDE2sEdPX2wRxd3fXGG9VlTmwV8NWC1JxQUmkUNLrWdJLeAiZyJgAYezXNhDv3Lcxd1057O9mXtX7llgqEw3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwyq0kfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwyq0kfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A47C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715622142;
	bh=qPGhaFlnMKO/9VCBBMszZongW1UXL3OjJmQ1Yxsintg=;
	h=To:Subject:From:Date:From;
	b=mwyq0kfkknYSaaFRfVMYCiQCXR0k+OGQ2Qsby6Fc+1HlYCURDNhtlhY5Yw0ONHP7g
	 v48HCg7qxgb7gzheFIf3Gp9Xd/tFHw4kZHaEvC3+r93cnyo4ix6k9ebPL9IaV43oQb
	 kopAUE2L0Aexomww704SvvxjK9BNJnmN32M73rmsGZS9PVb+Nf/l3+6440mN7abtL8
	 7dbxOpEY5xt1TkTI5HR/LMx+2zlqOSFaNAvtctyCH23WIdPQRE8cIWWDKrBLOiJbFc
	 9oFGMz1km1szH9QPl5UP1HDjK11qVNL0bb14TkwYJZ56Z3hVEWdZ4fXMkwsll+QhPI
	 GCttz4BLi1sNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0ABC25B74
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171562214277.13699.16364297066224753737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483f86b533656ae548da2fc743f13c795acc647f131b843b4f11a9e1e2bd3234
Date: Mon, 13 May 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715622142
