Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4E73D6477
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789560035; cv=none; b=Ekeq0OtcYmmqJxuNOuae4IU0R49JFDHR32P4rosEgYiAyj1BJIwMDhsC9Wo4GAyuPldBzMXYgidxNKHwInFcEplsI6hFAEhtZdeH6Ac4NQvRY7XJ8K7d7QcNgK5df7lm+/CBhDJMpR6DQkFy0nYPHayPuejiAbUJHCvAkN6YFPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789560035; c=relaxed/simple;
	bh=hkEYQwzpuWVGrNI9QRIQ0aidOXm78tBptJLr7KRuKRg=;
	h=To:Subject:From:Message-Id:Date; b=XprwcXx1X/mV7E8+f41v6GSYAYVE4yvKZll0HDevACd8cMXIYjbQ2CoerSNwv8TV6t43mL1v2ryZuun8pwA34dl7KRcjX6626K3ll4pn5IlASOBniQti9RUNXV1sVh0efkkiNn7p8pdiL/D92ILWDnYsvlo52aOZUCPEeTZBVoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HO/N9Qdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HO/N9Qdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3506C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789560033;
	bh=hkEYQwzpuWVGrNI9QRIQ0aidOXm78tBptJLr7KRuKRg=;
	h=To:Subject:From:Date:From;
	b=HO/N9QdfQM5hKcH/HJX1PVvLwH+uu7e5fDDn8aAyYp2rmoDrhYWLG2tc+1wz/0Hxq
	 BR0BUTR2T4yo9uu4wOeMgC2K54zL7agxPTvBHGd8mUWdP1FwVmZO0oI0v5ZY35S3sO
	 GFQEhbkd5HI7JNVnhdiKfMSsmkpSDh+HOqpu4gHdGxHWT2DAJMnLMvm0Oca5urJ4WB
	 XdBPx97JepJdUuj0ImD8EI+PRrH9UbYK0zaVagUa8ujf8kHn49lWSgiSVGN+3QCvPc
	 Ol+QJy9mTPlzYUC4b2XVeY40l3y2z9vqOiUNK18ma8JLKXheAy1/3j7LYfeE47h4tz
	 rFlux1Lsq+C4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB019C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956003369.1974.5305863437504667345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf95a7f74d6823637d960d64fbf2fc9035b9cb5d07d02c0a6c06ab865bffcd6
Date: Wed, 16 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789560033
