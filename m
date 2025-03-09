Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A88F4F1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741525134; cv=none; b=ZJv+Mx8qLB8gjjY9vapK9zrHXgrMyoJ5GxfqmKfGmUL7AgnedPWPEp6T1IEG8WTLwhai1bvljGtJNeIibinrfYQerWVKq78vF3xxTTt0y62R9lEpNbN2c0uF6T7pvwKXsFnGo0AOt0KkHbNpIBhzYpBMvZFkDD+Tc4HSZAM3OQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741525134; c=relaxed/simple;
	bh=i7Q4ASuBs8tqwu+dmvfG+kyneib0e0TNmmKuRvuZl0o=;
	h=To:Subject:From:Message-Id:Date; b=FnqJQmmAJBaNZe0PhH9t9xxSNoV3/ufqDZ6c9cy/0xojor8Eae4efZazwrhoykfaGzfqkZ+QyfeqNawq6xMEb0pcdM1SArqA0JWn5Q38QROout0ZCBMEC3NbXRPbDp3RpOpMBx4/v5ybXfbJ41XPucUUCiyYplj22Q/X0FsoEis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSyhmIx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSyhmIx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD09CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741525133;
	bh=i7Q4ASuBs8tqwu+dmvfG+kyneib0e0TNmmKuRvuZl0o=;
	h=To:Subject:From:Date:From;
	b=oSyhmIx5yomki4eaMAaNxm/2XaqqZpkyL23P3Zn/F6EVQly/TtR8oMeb8qMnD+g+n
	 Sj1Hc6Lbh0mBtj3y47YPns2ioWlOnP9Pu2YrRBzDo8J17o76B2HvIZMCQAa3fuGqOn
	 yfAdrB5gbVhVm14P2OOgEDlgCy8mk1SUso2Zr6Y/JdjhZwxONArsXSbf4GxWGG+Xy7
	 Z+vZqMt14ciq3y/j86kwfK42LWNMTi1U8D4frziX4b2lOREpLP4ZiiOsJf9vty5Qsl
	 bkgfsabFevsjJPEKNWx/VTU+TwVTWLXbYb5unbv+t05yrNk2Rpw9cthHQKSyTs3o34
	 BTpMa9ZlkJNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2FAC28B25
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152513362.27813.11123918117366068309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ca275f759f9345cc9a3a5b10c947998464d539324933c4a1b2cd96fce23ba0
Date: Sun, 09 Mar 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741525133
