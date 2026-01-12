Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E39C22AE65
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768198434; cv=none; b=u9LHpeKJgqHVqjbhvg9MNorCHDaoG6B0HcACEFLsKfbVoJXM/f4a+WDsuC7jY3AcQ+QYSz2hFQVXEPlB8DYK6cY4aC3tzKJD0TuC2qYGd1hkJR9JhOFG+I7CeYOgptFBXF8tha10Qu8v1BpNJW4R4+5QSrniueQMuo0SiLAleGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768198434; c=relaxed/simple;
	bh=RHoTOy8SDpFvzetTnOQCwqj4QtQCCK1JdkKNPiviMgw=;
	h=To:Subject:From:Message-Id:Date; b=cC6pET2JAW6Sg0yiwP/sVWZozx/anHkxq0mXnhsmzR22HDYDdBbgEo6euMvpKD5bIjyfAGxguhVOSdqj5d0TFcVihYv628zoyChx85btvH78yR/lVZFFj91b4EY7/6nB5cbAu5IUC10bIaS2/etbjucEfi0H3nRncByqJz63akk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIyxCm+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIyxCm+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0008C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768198433;
	bh=RHoTOy8SDpFvzetTnOQCwqj4QtQCCK1JdkKNPiviMgw=;
	h=To:Subject:From:Date:From;
	b=oIyxCm+cBsBxfifpIecUFKSwFjlIHvod6/kHzpF96/e5z2BjlCTPfeFpDXe1Waxr6
	 zEd48bP/nRWW8KGNqHRSZte8/aQiP1NA/N+0TwD6pL+3DnjLXwiMgtytPqD0gSGZFK
	 c6EoqJLjJwJBFS5gyWQ+77qhA3V+oD31xrwI7pb+3iBQ6m8bDpVFCqI+txth9+YxXv
	 O6lL11tbLIZCCo5DlUJjbea5G6pI7PNflXiue433R0UT7EsFqI2f4CrJTaZ3W3SbjX
	 q5PVujG+UpKEGko6rS1uhBh4s1hb/El4IFgtO2hOMjmu205mrJIFSy1MoRqzafKnfJ
	 F/YOnBCELavvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA51D2503A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819843358.20692.11844358945775823768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f29d203b3669c20023f0a58172af226e6d8592bd0c7a1b57c8dc380f30e0966
Date: Mon, 12 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768198433
