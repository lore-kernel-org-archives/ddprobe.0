Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A13B248883
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771467294; cv=none; b=vATgz7ELM+o+QmjNy6MxKoK1oOWPmmNmEWbnXBzYjIOzCZg+2P5kHxLeoaaTbe6lhckmGGrW1/bZOgnEAqH257Ig5/r+ZbJbSewO5UY+sCOtDwTGP7KxwoalOgjHZhS2WJKEU/0GYlwXBF79IoCFtzdf3/NbISvi4rOL/gWEcmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771467294; c=relaxed/simple;
	bh=aMezI+FzGY7NOz9ydDfiP+4wSQGR10LMFkHSn29T+f8=;
	h=To:Subject:From:Message-Id:Date; b=rig3J6zlrSC1/kpNJ4siwoWd1y71IsvVufp6TE//f0/pNDBholecDUKwN2WH5F5whT1PBV21sTNKBH2OS5SNafC/seeW2+Cj/5kjMcm/DlgBJqzkP2EZJ4VURPC/HteHgkuDm6DVsEj2iXY+MrEQmR6y+IZOMHz1Z2vW0dQtkDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ce6t5TOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ce6t5TOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE187C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771467293;
	bh=aMezI+FzGY7NOz9ydDfiP+4wSQGR10LMFkHSn29T+f8=;
	h=To:Subject:From:Date:From;
	b=ce6t5TOo98HvSMaCtqxr6ls87U7ZE4h9QEAsABRoVmYbMo4qnWPgflqhAzmyu63ju
	 KoPyCKZuk5DexutG8N4GyDXkIl/XiWm/Qxg3PjAHX/6uaCJZufln2HxoVWgsvJ7S6I
	 PI9Tex1Ml0hf+Fk4V3hLsn9afXJD9ncoJpn0PfHtX8KWZ39xGrvuYOvwWboD95np4N
	 T33Sa/49gbA56J2lGAQ4UWoeAYmFggToXUDc0tIqP8y+n530KaoAlXJ2l2TegLBiDW
	 KcD1hQSVUbvA/2Umjt25h2MYbmX38hPg4XQJh62jtC87HhXy2PHE93EQmPNgy2Lk4z
	 bP9qkAGg1smKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A557CE9A02C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146729363.17990.5429482040455193276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb6ea14f1c639380bda22952d32812983abe78c33856908d88013cf5310875f
Date: Thu, 19 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771467293
