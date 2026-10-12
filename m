Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B094B44B8
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791824434; cv=none; b=RaAAj5X7PYRpUcHwLhqRtxne+URJvkmBBpDjx/NhWsZtc0UrOlZ6sEwYKo6VuoCrodd5vbAMihkdPj2Bea0LLabWZWzSU9JX+ZrA2Err/1kKzZdaVeg4XXSOR4ilv0j932CL2j6BH2jrwJDKesiRNP7z1pJs75Lg3zHNScVNiGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791824434; c=relaxed/simple;
	bh=6xPxl0NUOzDLYEdSc9ZDUEpYR4wyKCQjIHrutcCQbsw=;
	h=To:Subject:From:Message-Id:Date; b=DCCqWVq+rHxJS5M2skrrDOvFMxBSY/UOYAzC3mb97pMBUVA13oBcR80EjMnC3bKiLQkZQaP6eOVxGtc/fa5tJCvdE38rDmJW6dv7blyvVDMrY8T5NQG8Gh7vDsqpVjJv2Uuz2NytdUtL48o5w9phzOj8x1Mk0ubXq7eiWAisM6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIAxo1yi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIAxo1yi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D138CC2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791824433;
	bh=6xPxl0NUOzDLYEdSc9ZDUEpYR4wyKCQjIHrutcCQbsw=;
	h=To:Subject:From:Date:From;
	b=CIAxo1yi2DCnDCmiaAkPs8516jCicTK91ltdVavwdNmAssdW9LnDyitxPt/gF+UPr
	 gKsoCGiZCtXWh+IOOpnBJM7vPuemJ8kSqhVYL2p1PL4frvOzLZik7SlT/OGJLQv92w
	 E38gBT8hSL0ftpDD8Tvr+0EgzxE7piGSB1l6pZrm4KCutMx4M1lYUhtZOh+b76T90D
	 s/aJM5ZzBbCq+G/QQIYpJMon8TL5l+OpVrhbjDJEVokSzgC0QzidOwPEVNqIqEcdi1
	 qa170T/jiwO7PwaeirLfV4bR1IBvEOn9oeyW61hyjd88eXqjtKiPW3QhqXojvqGLPM
	 q0Bsoygl0UpIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD23DCA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182443369.16629.12674376808646619050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d50fbbe9c1e76f462c46790a386effaa2d39d0563cdae219d957998484917d2
Date: Mon, 12 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791824433
