Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5A8248891
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772966094; cv=none; b=qBBnokr6FUHb46oObOAObk9aUZ9Ra5MCNTCPMngCMlbdv5NglJ4X0x941MkTEThby9b+BekG6gSFKnLDUPZ9SdAQRcqYlORvB872oBC2OkEmNi8Ak9QGwleM7rwj10itacQfs3j+Qljj3ujJ8DGlEXMy2Y9ERGf2imH5d0SbBpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772966094; c=relaxed/simple;
	bh=r7oHwuM0PBQyf2OhuM5atZSoGC+9JfFU/m5liqCKK+g=;
	h=To:Subject:From:Message-Id:Date; b=PKQFHIwhCvJ1Sj2N3/MCsqPYeI5d5Q8IYSlbufiFAtS/lZ2yAdQscee5NLUbBuc55vcibMzOWdV6BDUen+3ChKNYZ00rAOByIg+uul2oryCXYNbt2Y+XtjiLl9e5EzJ6DAlSzOXSL/hFMgELf2zGmuu+Wbjdi5nuEfjV5u97nUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMNsceuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMNsceuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A087BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772966093;
	bh=r7oHwuM0PBQyf2OhuM5atZSoGC+9JfFU/m5liqCKK+g=;
	h=To:Subject:From:Date:From;
	b=CMNsceuFquKSyI0I5r9Ede+v7+mcYwJGDXg2GbwDQmHvb9WSOVnXOoLHrqJ6D6cLX
	 lN20s7XHwVvN/5Ngmemv0wiolOreG6ZiUf1d0uniaYwZpgSuYAqndans1xUTLC89cu
	 26y8WSn00LypZFvgDQc+dfKGBtHbbaj5NT6OcFkq0TFAJVAsaKYJWD5ugLYzNSwGq7
	 PDJ8UxB51GImNH8GYKLbgnrnqMaaY1QSEUiiKhOgYk+YMrFM/4dTuidqCL1HISvzZ5
	 XQ8zkmmHbfmoBmOT0alkWy97bHG1mIIXm7hqetPd9GvLmfJCih8dlD9+QYrDqqKqWr
	 2MrWR8EoJK6xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8AFF55102
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296609357.3147.2115877810225189796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 913c0f35777b305d0bc87c8d35a5965edca5360c935a3bf0a058188969f80dd0
Date: Sun, 08 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772966093
