Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E9646EF9E
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786090235; cv=none; b=jjXDpkfkrafvbhou8fQqpcLpTuChfddPUEUQzV+X58W09S0coevYDMREgri7sqvjduJ9cC+dRXv/BeSXYz2uCjfFtZUXia5yf/ivM6Tf89FuX5u+OCjfuii/0roFQ4dPcVcvWy/BxgW1lXcSls5wy0RQSfLjQBWgFNzzCKPnW1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786090235; c=relaxed/simple;
	bh=dUtuaGAiehkZ+wYi2mC/mL+/WbfBE1Dzvhs6tCRkq0c=;
	h=To:Subject:From:Message-Id:Date; b=E58UNiqPhUWmRZIe02r1gBjaLMcSxLuZK+Kco6D6O4V/Gwtp55QxiCa+WO0cWcwxwWeD6Bs6MASH8CRvbxVNaBpV5C8SQ2qtVVcIaa0zsqSMi6R+j0vUHu6nC7V28qcdIlTHlE+osDGr1YJde4B/TWIef+4WuZAusglIjwgkInI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXDFHFqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXDFHFqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD42C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786090233;
	bh=dUtuaGAiehkZ+wYi2mC/mL+/WbfBE1Dzvhs6tCRkq0c=;
	h=To:Subject:From:Date:From;
	b=uXDFHFqSaqPZCu4Bpere/Uhwhb2Z0l1poky7Etd8/8JtVR4ED58CxxTRSwwQG/+X1
	 8lyCFTmyCFNXapJLg55QNEvXN7vXiPJRH9ScJi4t+56GAnBKpQqwL+ZRCDZ59wKNQD
	 WybvDfK8fXu0LbGcMys9llwUhjdWnGGf80GdACFHZj2q1THrBloiY+6FIuCWXzqLPB
	 X46LaVEisiTfMEU6XI4xtVmQY6fOgskwCp0ucpS0YJxRuCaIBlOZLpSoQbg0ynI4VT
	 JGxtXJQwSCKHXQ83LAbh1UCsDo258y1bxUvjrYB3OgUDKJ5v4+VlE3I4oDA7yf2aZO
	 rSzS7788zZfRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0770C5AC9E
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609023377.8466.2216539731922637863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f103fd4a1a627438f3dd0c47e07c1ac78a47586240c33349c2c196b9e7cab97
Date: Fri, 07 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786090233
