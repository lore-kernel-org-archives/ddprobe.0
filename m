Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303E43537CC
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781084734; cv=none; b=fz+f8TSsJs/VKAyBU6dTwMdDm6IX0/hTgUFE/yShOAWkA2scoUDCfy+l/hm1wKhZj1HcTHpSc2Z50RIsmYUdraCKGbSrGfsJcKka+f9sYZEsufrvnwsrVr1GJ0R64QdDe9o0pC46d/X0wO2Ef7hjbowMVcqgSUeMaN8PGEHtSVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781084734; c=relaxed/simple;
	bh=s97cLdFx/Trz4sNJ4ufTUPgN4mv3JubtOgJqjjCrZ1Y=;
	h=To:Subject:From:Message-Id:Date; b=gXifbiAyDnyZvVfP0kJfARCER4GsABAFdr3AnihBJFJVtLY3KZ7sIw126v3LIQH2WwmO+hAGaHugvGxl4Lrgi7gzPdTVrocucmV21nSj0f6hGUmDXutOstn2a+NxwWmdHYtvgEnyBZmB7e48MhgMDjSVqqCNTT6x0XLg1bebJeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q41KPm/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q41KPm/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39D8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781084733;
	bh=s97cLdFx/Trz4sNJ4ufTUPgN4mv3JubtOgJqjjCrZ1Y=;
	h=To:Subject:From:Date:From;
	b=Q41KPm/Q19f2+AWwQ3xdyQXsywwK4WAHkWSClvDN/VMpvJkxGgTRoUJ4sDk70cXXE
	 6b8kvz2Cs08bcjO3CpAEejsfeBwjDz6L68r7lEEV9mBcAjzUEKU/iw1YZ0I76C0X4M
	 0FJrKwYHmkgSD2zQ5S9yNoO9i+9yjrEBvxBJX4Zog6A/acPv+8KtvxgoYv7wJ83euo
	 WBqc874B6VQ7erOgY6ZqhrfXn4lcoKIGwibHnRMlmijNm/OUcpbPFgSEG/p7CHw8FE
	 HNXfcr9xvFD7wTM7cv9GwirJH1Xdbc4AaLKDxuCkjjuNpss3XUV9eHSPYmnjBCPJiE
	 PU/l9c6E/ksPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF0FCD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108473369.4562.11243803133316633147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35b28dccb2a92e5f9a50a234c5afd026895db5f61002ddae8b766407501c2b2
Date: Wed, 10 Jun 2026 09:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781084733
