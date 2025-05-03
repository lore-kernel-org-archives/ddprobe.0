Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5831E47BA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746280194; cv=none; b=Ne+YCRp1qUmkAFz1ad4G0CK87C9P0JFJLXVEHgz2ZLFiBBAxoVVnxNZTQWNw+y9CHSYK3GYEw3IMAmzU64kJAe9o/mw8shodykHRh6WNYerQVbbcJwQkeInHc9hMt/W8gIhAKGrUNZxDHLZV9aQI8jXoKFfQ4quw/QYZ1CausV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746280194; c=relaxed/simple;
	bh=JF+6ltycmGPF1NnnKWA4d4RaDVTMOSiNpGVLHbodVLc=;
	h=To:Subject:From:Message-Id:Date; b=tyicrjz+4anVo+6evqdfBWuJt9axdu4T+Te0DT7odChOtCKxtBHNHWCgFt7pMW40MvLY6gxgzBgNJ3a9jV3KPUywN3McrWaNQnA+bJRgUe3POa0ACuY1ydgQDpfRHXx0Wm/hVUoWM1KOIkXHxjIFN61Wxn/FrgltI7y8VsY89mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSr0onB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSr0onB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F06C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746280193;
	bh=JF+6ltycmGPF1NnnKWA4d4RaDVTMOSiNpGVLHbodVLc=;
	h=To:Subject:From:Date:From;
	b=HSr0onB4xfq77Q/oZ2zbJSRjoqWL9AgIPQnr8wsZH/HPanamP7qzIC9X3X+vgHaRi
	 jB2FzU0Qyq2QosG9z9j9QHrhAm12BXFv/HkhG8Qlj/Q0/dKlHbM/0OGALhbFNLEmT2
	 WW/UYJlrurzjr8BN4E++aWj32TiWUZkmwI1hVOxxA2iGbKvgcow/AoYNn7mi14sYG4
	 J1DCYsUVSFoAueN2ezCzeXQiCfRjeH+j8P/2OcnOyTXd6rmAjq6zqi9XVkmBU321mr
	 UvsF+Uw3W7FjF+NUYHgh6Fg+tglRr6y9qllibGkg5oLDxbKnDfn2xnKcHvWuNTdCST
	 eSyHOQUzcMZjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC4C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628019357.1268.15967803331297557293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25ec3c299356ed765e677400c46a17d7b1a58634ba34b6d3319e7c5da89e244
Date: Sat, 03 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746280193
