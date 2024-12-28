Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D72118DF62
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735415754; cv=none; b=Nr3+HIAeaZd5xDNC4X7LafGJ0IDWwyOQMQEoowxei21SWwCeqZb32p/FmSv6GxYghOFZ6VV+yE9zuSUEJAakma33Gyshpukpcfyr0G4aAW8AOTLcgoq2uoj+055OEOVwm+PvqaDBpFKqWHEvn/FjeQ+8lkH88v1UE1Ctf/I/wzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735415754; c=relaxed/simple;
	bh=xGeZ8BBQ3FrYtUq7tEUT1RQQH1XOsasYLrqkB2aXc9M=;
	h=To:Subject:From:Message-Id:Date; b=EuUkjDisDTIuoBC2bXkRS3lzPqEgUvALkAi/+ir4HlE9k887mcB2fm52X9yunNxfkftbBiq5TLBHnF3Uf7VxmszbqBs5ZobsIxXJn/ABGJuVoqCWH8C9XJIkYNzFu3FV3PvGGsge45S18+Wdj2Ekjh4aWMaV2EtC08K7DAZJcN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jO4vp0Wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jO4vp0Wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5774C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735415753;
	bh=xGeZ8BBQ3FrYtUq7tEUT1RQQH1XOsasYLrqkB2aXc9M=;
	h=To:Subject:From:Date:From;
	b=jO4vp0Wm98Nj7WGGGhNbJfWLPQCcAuJAvCPA6s6AcfBgeXU56W9+W5a2Qfi75f+ZP
	 7HhsLAcN0ikQA/M5MYW6b3LAD8IuY+f2ZHlaeddC/uYo/kwCmD48P7c1pUsHYCeV/a
	 olVfyATa97OKBT05+2e0pjzKz6IDBtsOlSSzo0/sbB13ZUh+6OpbHKmV7MGS/taoF+
	 Uo7fQhe9uH+P/18VBho+jfQNk30GQcoJmZmCv5LBDAnoUEm48bL4loXQHgXc5CEnVO
	 bKeptMOrHijdO5VFt9DvVTwF3Jg5qsKx9VP/w7zUAczTMEds6+4VhxzkuGUZtM4oK6
	 WLYgp4R8xG/aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B1FE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173541575358.3776.14776932476808068151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4263388a2e8059ecf5bff50473de3005d412dab026e2af1d3d9cc1454997d735
Date: Sat, 28 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735415753
