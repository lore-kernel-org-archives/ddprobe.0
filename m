Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309DD380FE9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779887554; cv=none; b=ldTSgqmBvuAa8idAtoEh4pfHU913jHUIg0VxX8e1swx+garGkZ6Nwj8SlzSlg6Qbs1dSfI69/CqEZrG4pCeawtpiVsslwZ8gkb9EPgyYVxk3v4Z2hjA1ujKa/KlhN9VEJqzDRqdSUAArtdLCcAHIw9OOtxWTwVdGk/c3foP/Tpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779887554; c=relaxed/simple;
	bh=VLVR2NI2phHWiUvOjGfDpTCHpK3u2evvIZ8FgXLBs0k=;
	h=To:Subject:From:Message-Id:Date; b=NLCz7bb1K6GGwGLlvSuSJQvu1FxFgmUPPyd51Dn0yR2Yuwkfg1uHK9uDM9QTzY/C5AQVxgQ5ASmCraZTvss8pOliD4uNbMTMrS4DI1UCHGUM1UVDHb6RWbPY8OpUaGAS0B2/GFEScCbsYV3ip/9h238K4Cf4XXciiJVcl5MNsSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8OD8N+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8OD8N+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2164C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779887553;
	bh=VLVR2NI2phHWiUvOjGfDpTCHpK3u2evvIZ8FgXLBs0k=;
	h=To:Subject:From:Date:From;
	b=d8OD8N+VFgPNfisakptzw7obwMaiN975P5TPaZzbdt+9olp6zs5JK3fQgnnvs+SDC
	 5BZ/izeG0m0GFzh7QEnK73yxObZRP8Rkrs2tlUSSxdPMX0t5Cvo+ohnB72lB9So0cG
	 Q+JnC71/KUfHRBTtyVyM60k8biM6R6RsF5d0qRSQEHiQbC2z7m9pp1if5LP+4G70QO
	 ivWjEBxPpTIW4YzTd+WaMb+Y/AaosjtyCgF8pgJCUSr5sDS9u2xLqcWkiEiT1/yfmn
	 3DV9YKt0l0MBUXCzjypUscXcSrzMXn4Lrh1EARugqyYZVhIeOW6hFDDMOSfO5pTUu+
	 8ll2X0wzeo2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8280CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988755368.17543.5204770528340681344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea644b50862734b672a84bc97ded9e7f59a97dfc03e5ea4dc4242af440f4aa1
Date: Wed, 27 May 2026 13:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779887553
