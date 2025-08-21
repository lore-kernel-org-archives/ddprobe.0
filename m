Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C07C245014
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755778194; cv=none; b=E3FLyXjJo7/t0IXF2OihiDmkRME+UJYJgvHfruskmXTMgk9RRQKN3RSJHsVOi8EeFk4YFwcMHuTx74u0WwPvmrUFw2F+eMwPuyJ0RgzpV/8gs6x8C1ocX045rGRnwECbcS9MR04XEgygeOZBrNZXu1Z7NP08/JBVQEHtHwVmH/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755778194; c=relaxed/simple;
	bh=EmofdPzeE+ZgGcnCCvReB9LF2MSyLHte29E63Wur9+4=;
	h=To:Subject:From:Message-Id:Date; b=EuW7Rr3WtSxJ+mjtkLchlnka1puiJtzyaA7eyixz2Q/PLZDJ3nR9jLuAkbdCpKCCngemPnTyTiDz0GCL7FZGVR/cKkFeDBOKJ/o2v2PYltIolF1Cv3WjB/9527PsKpBXOZZc0oCnC4OjdjeRZJIICwzHP4GTedyuhmbrr940lHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGBzj+Tz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGBzj+Tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E708C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755778193;
	bh=EmofdPzeE+ZgGcnCCvReB9LF2MSyLHte29E63Wur9+4=;
	h=To:Subject:From:Date:From;
	b=IGBzj+TzoT4+XvdL3GK502KtKMmqUnZkr6vC/yE9zoMsFD4BK+iqwg1A4lgl4mFWF
	 R3LBqAcbTSUCJFoLUq/YWxLl0BrVs5HbSY2rdbkh6Fy2o7D39y0eHDSGAtRtTywjIU
	 bmYQJjWKnl3/yHWRre/m+6cDtNjgOsatALsHZWOaIoX76tUQQykXxhv5ktCDclllbE
	 arstZI4iCexvHks0fij7ZK7gouvuRkOVmREimO/h08AmTnJLtdNIuG51/wMZrVq4Ic
	 KwEREyt2tJFzXifYoo7jzXEaW3W2BRz37QWm9qSlcWlRtj5S6KYMUc7n20dOxjlazO
	 y2oCq5rSNV5NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2FCCA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577819357.26477.12521782406238514900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b61d619b0d4b5f91db7acc5000165989d21a1969986564aabde0e6c9a1d824
Date: Thu, 21 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755778193
