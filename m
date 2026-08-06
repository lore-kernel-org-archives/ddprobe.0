Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5963941D227
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786050634; cv=none; b=AW05TIncdwE8Yy285HDpYCLrmFochT0vbyP0LKi/EPIQ3+gPuenF+dDlivxBdW1/m9m0yrmEZEBm+tnE+rAwi9CZ0zsqjwiMgUtArQL6SBKZueWjdKQQnJd9Vw2dCDfndxMpwRH2/Ug8g1y+kgzPwI/IE+JzXk/S1XTwiW69ol8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786050634; c=relaxed/simple;
	bh=uV9gMI5HfWvJK3WeoOd5UwPU1kXPI4LjQnmXYFDHiRo=;
	h=To:Subject:From:Message-Id:Date; b=STLFme9hKu6/y3GDQ6iSwxLZT89o4ILtzNg7jaccOM18AkqMZ3cL8ffvRsC3/V3djk3R64uB82CxDRjCyYCniH5lxAbMa+GkXV+tMuWmi4F9piYcyblGjtZpmOsYWK/yir6MIclzongDb5grBLw3PmKc+y395z80qOlcT9JGEyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOZFqRv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOZFqRv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE93C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786050633;
	bh=uV9gMI5HfWvJK3WeoOd5UwPU1kXPI4LjQnmXYFDHiRo=;
	h=To:Subject:From:Date:From;
	b=HOZFqRv9QpfkSrthAWhb7USOsNSd8EmfPTPSye8OGrTqYGs3HnKK1/2B6OuGv0i4x
	 fbprmI9KNjcRyDTKVrxGXHWCtuZiWiZOYP2rx2pl64Y4lbeF+UBtIhS9Ym0GjmaJDO
	 iIWtd5HXfeZE722X4waO8PI0v2Y7EiQNb51TopEzcpLo6UBix4VEi3IkmbZDS0m83Z
	 GtgeCsyGVm2gOwGLq8cgm1TBdPpP0RSyZeJQ9/YLZ86m1G4t3H/c3niDJ7wp0r3TuU
	 CNG9UfpeREY152YTx7IMW7AQoYvVYQfhPRBC7INA1w54l6PQqkcmjCqb6f0nTjYIcc
	 MLxsJtFqIjP/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB5CC56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605063368.4511.11287338387131014913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec21e2b64d6be90f0118e5347ba40a114a33dcc363dce553fde707aa8fc046f
Date: Thu, 06 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786050633
