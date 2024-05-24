Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2B01E884
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716518003; cv=none; b=kXpmc+7yViJL7gROMuiEM2xF6OtEhCL9gehO0RW7hXvypZk/3nFOv/OkbTsHUykCGfVdCxupMuHART9db6z04zJxxLJGGH06Fo/eEXoHUbD/C5guxrJszlQVo5tw8eraJzMdBA9Zx7do5sIxQzRKnpIXD4FbKXcFbGvyQQ6ATKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716518003; c=relaxed/simple;
	bh=Qq/CchSHOCkDguf2xWe4Cf3bcHsc0uKACZwNCj6sgaI=;
	h=To:Subject:From:Message-Id:Date; b=tMEOk3eVLUig+qehSpsT8U5vfxNjfAiLofsl2Mhk3ijmRqN2LKSrdbRfGwX4O9kpQiIq1B9rzK+wuGFFiIgcrfa4Arab+hyPBnp83Q4uraPQ2qrs05ZEDdrxws8gBTLK+afj6iZoDfczFq/BjwPmwT1Z6gbJ518VA+RoIa7QE84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGNqlP7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGNqlP7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0466C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716518003;
	bh=Qq/CchSHOCkDguf2xWe4Cf3bcHsc0uKACZwNCj6sgaI=;
	h=To:Subject:From:Date:From;
	b=eGNqlP7bBh3bhdKx4cQkO53vlw2xQpEKTudVRMpzDgX0CoeYDLDZAiVjWQit3ERR0
	 CGQCye6YEU+SHiVBc3RuJUXSQNOGOZbGfU0zZAnp4oixxEra+yC4PcvmV+zdkDmBo8
	 DBl1bxsUwUb0c5DIZXhMSQ2fLv0fNZI7quE6SR/16W0kpPzQ1qzB78z5anq67/cEoB
	 tz6L7589nHS5D9shzaXYQKEWXEeUZibMXn7p07R4kd0lff0vRF81J9WqDsc7Qjk70p
	 4ad2i4r9MHXbRAFcRT2bs+wnsPRFbXqiiAicuuCOmOEIQOjpldITOhPFjf2DJBu1+C
	 K7+dj8J5ydRjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9B28C25B75
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171651800286.30500.16001129783406480936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a788673174956e2cb84c21c3fffb3d5b9a6852899251a49b59cd12d4f4083499
Date: Fri, 24 May 2024 02:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716518002
