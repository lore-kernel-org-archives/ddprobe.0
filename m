Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C381BF33
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777481254; cv=none; b=p4sg9Hn08hvgP1DOzFOa/wPKcCH1yOG4taO+0vnB955f+hW5M+y1537BQpx3vGMqfAybm+bZ3VrgweKYk0CxOX8+aTxaJVQFHFHpnKwNG0hBvuVr9g9uv8QgLwE2QcfrdVaNR88fr2oObGrZhhJUHf/+Qetvdh+mqOUwpaodd3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777481254; c=relaxed/simple;
	bh=7ohR6T4qOV6ofW/vFBDrsj0Y2/QTaW3z7QPA1XrOF7w=;
	h=To:Subject:From:Message-Id:Date; b=bs7QmrVkfFyWrfDvUmgMh6ZuE350YCanoVqjO8zNSvOguXN5N4qtKoYNR7dddyuKkGFdsFih5Ephxiph9tUzV7HxiePq285D6aNIgJ0U+CIpIRPpECxI4M7UfT/bcWaHSu9iWHzbPcCSD4IgJHOYBGoSihFMDxN4VedZVvStfvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pcz7AAED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pcz7AAED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25DAC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777481253;
	bh=7ohR6T4qOV6ofW/vFBDrsj0Y2/QTaW3z7QPA1XrOF7w=;
	h=To:Subject:From:Date:From;
	b=Pcz7AAED4MKbyHpH1nu4UvbUPQ2ih/OX7EafnUMQpc16nTFaPQsZntmJ6oCvPWhFM
	 CkYnqtS6j1YS1zx4+mfzyGuJPXT4v2hL5PsSqKg1W5xm0gqWSJBvKm8CrA7R7nyTqX
	 nxlX3oz9LhwEn4p5kUoab6kiRf/JLSeT1pkLQ5lM0NTtbt277t4GlVRG5Euw8Pq+mF
	 bHT0IYB9905vS2qBL0UZRtFBVdSDF2c404bs4Rh5leeE3bhK99p6Snr7O5KwCc9jZp
	 xGC9EGK5cNglgYlmZtqY93YDX/Qy1ag9wnD1Lnz25JR1k33XFC/pOi5HkXjf0zKaHp
	 s7oS8RvsA3wuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF433FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748125368.16190.12784003731409752155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739ddba77e330c6a8b5788d42f4a69ba8cbfb0a2f84ef3ec3d15e6e19fe9d1fd
Date: Wed, 29 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777481253
