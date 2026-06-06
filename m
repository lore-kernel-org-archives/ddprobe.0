Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F35A3C1F24
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780778674; cv=none; b=iJmqvl+O4dC+xoWPWPCICpQkA678yiFwsxauc7M3SdrLUnKl23nzlEJc6aXYoL2WCnqcqTC6dZrmTeq5+PgkGJ0SzitBHeGNjjCtiYKQyn2ckZ77bqGWhFz9Zzyb5Df5UHrum6ebJq9VZdXQW5o6FTPkKRoau4ZPPPRyxsPMAy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780778674; c=relaxed/simple;
	bh=wPYEYEETAlt64VzzrC7TuHJuaxHtNhToj1ZZdbsvZ4Q=;
	h=To:Subject:From:Message-Id:Date; b=pj0gHeovhO3c8hK70z7GeiNXDZsW6xbEeknLoZOhqihzXCulmM4Yw/e+jLCzRArUS/v7TEpNNSdm7YPEqU2nhlVJTVdH4CcdEJ89H0a8xNu9+fGIMS9mjM4hz2w9qUGZhvnXn6QKKzWaWy5k8f0gEo+p48kFGqX+0CgdxhYiGMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jb2nFhE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jb2nFhE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4DCC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780778673;
	bh=wPYEYEETAlt64VzzrC7TuHJuaxHtNhToj1ZZdbsvZ4Q=;
	h=To:Subject:From:Date:From;
	b=jb2nFhE1twE3yK4LMhA0VQzgshTC3dUXXzoxA6js60Q4PKWHm+QD+crptT+WFTX53
	 VNhU0ke453lfuDsnRCQuYmaha6jXq5h8kUqGua1+Zp/lhEQbk6ityZ+/LFMNKw0vl8
	 Ch2Gu71miZop5sRCSPyHvzvuUiN7LHunGToD0p/z9xyyZtmVVX+WWwnAPZvwOtk2TY
	 I51z5RtrYpXJpM6ruvIlenTgXwn7lpuEmGx2Qex6cfx68DJ/r1FwN5iONxxbZ9Pl3x
	 g0R26zrLXGYWWROmM1HgmQmChqeFDje6HBnmKQMTmpSdLGWzHB056pP+sx1eFE0A8J
	 KlM8H5I3flo5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC598CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077867368.21429.16600980548239826272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fe58e465451bafa7de7e5ab88f741ca6542c5d1ab10a2367dda6127c19d2d2
Date: Sat, 06 Jun 2026 20:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780778673
