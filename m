Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4235C15689A
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745763594; cv=none; b=rN9DE0vjAP0vpQVHSbRRdVLlRFhS17J1tQtG6PeeU8Sd3l+ANc9UlsEWaYEpAOPhtEjzj1zq1y7TE7FQak22GhLKu0H+IueTUKyCDzuquIZnQ10sJCKt+NoG1E1YOZE0+WQemczP+rAQZXv389DEREIq8LPL7DfNSMC4PArZyoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745763594; c=relaxed/simple;
	bh=EYFXrDucml0k/J183/lTHYcRvQgI0kernax3hz0sPOo=;
	h=To:Subject:From:Message-Id:Date; b=lr5AXI6XAUrwcB2qELnAaqGJuZGFngUYXgsfZvxCkr5Za42nFaND4h/APmqg15xhl4n5VDzJtV8D8aH7CNgQInLMGGFcG+jwjyb60RSg8QiQv0932Ll8ZHJuBXt4m/CQW/Af+RZbmBH+wGBzLyki6CyyvpFrxsLB0C/7cMZZgmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jblY700J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jblY700J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745763593;
	bh=EYFXrDucml0k/J183/lTHYcRvQgI0kernax3hz0sPOo=;
	h=To:Subject:From:Date:From;
	b=jblY700Jh1cikIgrWwyWZfYM59eYGnTfSemhA8KTD9oEsxjBwYy0ifC3db65JvwhN
	 5PQf8NGFFWxSBAZpcG6rlySvwQzPhD9txfr3l6yGoEVSxaJWYXMGHstpb+kNGO7Lxr
	 m3ms2j6bYXN4nRpIrxFer9XKs5VNMW4+9TcrIYn4N5i03M4cFgWNyIDWlfzZVJziQB
	 0YEHvVrV7ljZ7l3XXopmVRQf4P1ZgQlFtj2m7+KQsE8erXxf6c08jP0TwaUb3iJRL6
	 k+n1HSV87zXr/W7gtLwmCTHd49Udrqm/u3p5gBDm/LzpqNXKEl+F/RyowOL07OVRl6
	 63XQpaALSNMuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F8C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576359357.28625.4346877170395838320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75454f5e9a6eaf81326c18fef750c9c952751a37afedde3dcdacf11e2ebd5ac6
Date: Sun, 27 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745763593
