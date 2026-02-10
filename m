Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0943815DB
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770737034; cv=none; b=rlNHteeKgmpztMfOnwXaHY3k3oEJPTyadd1dp1kiP51WXqVkBkCeElXzVSBzPyUDMPjO7AGJP5CUx+HXuMscKk+Q8He9O0TxORRET/LOJP4qM/fvZ5i6R8KsYUebUFOvg8eLYw7G+N1WMRBpEGKl2WvQSYtLwD6GOqV7owdnehg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770737034; c=relaxed/simple;
	bh=gS8FQ5DkjjqVVgrasA1bk1Dg+mFvT2Xy5KLP5/81hlE=;
	h=To:Subject:From:Message-Id:Date; b=aPRUMO8zAXQ23TsdpAGwwXQ+w2ZkbvyExBqs+LDxF1k2wyjKFMBbGEmbv6TyqTWK2yFmpzqaIhqzabX26OOwKmvF6KK13wndgql7PqamUX5mbgDIAKF0zM+7GOl5ViyztGQN0gylzuAl4ehv0vhwIC0PhsIpLJi+mLsDYYGmAG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPSGVcvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPSGVcvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EA3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770737033;
	bh=gS8FQ5DkjjqVVgrasA1bk1Dg+mFvT2Xy5KLP5/81hlE=;
	h=To:Subject:From:Date:From;
	b=KPSGVcvrI2U9/L6poRWFuDzLJQZx/ejYdUFNT/zMUhZyVqu/8G6bXfMNWPVTiCJgF
	 +MCr0dbK/QCeYkPodI/bAz3PW4rqDmEryYxixidQeVC9stnozguw8fuxrq/Y1AOaME
	 8k21vmTLbgKgBalHi0CQSUOmWx7BHKioiMwlM/exGUQeSQqPGw4kC++31p2AnmvkoR
	 5024uD8CZRMT5vcEYXzG8Wx5erE8zpwnKUFFYQ/KSxEMUXOOufig2+8MAlC4YHYyAK
	 KBI3f39bidUdQFuom7sgV5iR1W5F6TDSUUakO98gxvQufaXiEp9yGipaJDhj3F5kKt
	 90IvB+NMV0bcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D00EEA812D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073703360.9163.17029560591996415850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a17184c973fac76de758b5c86146b0763d367be0aaf3e88fbe07e2699b2798
Date: Tue, 10 Feb 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770737033
