Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D28262BD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 15:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713021563; cv=none; b=GlX4nfsR/GRFoPkP0uUJVrndaDLcuVURYnpRZy+MvqQ1LAw2ExgD2Tj/BjjOrbvN1W/UKzc2hRhfUVwSTuiz/DpLySGckbt38bbegO0weU+ZCMEZH+b7PEj+xzxqvGDEd91mvY2i9qNhzSnbc+BT6cyeuMrNSnaQGX/yep3iYWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713021563; c=relaxed/simple;
	bh=hJsuQqCks6RJwvQTz95/ZVkPkzoiyXMpq/mUF0bxWSY=;
	h=To:Subject:From:Message-Id:Date; b=urpmR22rRZM9o0PpFxlS1EbqCCk205wZjpbA1IC+UVur3r4SugZIj328G9NpkNw/95QnOEQ5gfqqDgP808EK1h4oayX+iRhwZeQsegduyxwJ2W7txkw29VhyQw1aIMTMaksZtKrv6JOyfTd+SKzovTJUKrZg9Ur3exppbw3aXtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuX0ryGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuX0ryGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2539C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 15:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713021562;
	bh=hJsuQqCks6RJwvQTz95/ZVkPkzoiyXMpq/mUF0bxWSY=;
	h=To:Subject:From:Date:From;
	b=BuX0ryGkAp9W6I9LKvOWgF4/E8DF02zz1kFikCE+qTfIH5KIQgQX24IncTygjyGJz
	 dwZGtk49m+S8qgD7OpRu8H7URi7rvFz4aMZqysRSioeAWO0yqALKVQgcj/Uw0M8dGh
	 fSMYg3KrEW8k8AFeiktRwFPNG1wqMHevcUxs7KzYNIDdXAeDVCEaxeEzeMttzFS7Lz
	 Cb5eAoxYNTo/s8PIWeEixU2xKlAVPD3VlCU9GGsT+5KZY24Yz19gL8ZWgF8wsc+cQW
	 4ZrLRSC5SNFO6oOK5ja6nZy3LVlPK+uONr4fGJUwKASZcCh/rVYQidiH0B4QHhdoZ8
	 Qm4iOW6d7mAuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD291C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 15:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171302156275.19674.17445147868791047160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb05fa5556c388f4eb179811c31bc70b128e9995de69c4482455f7d236d0e25
Date: Sat, 13 Apr 2024 15:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713021562
