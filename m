Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FBB6A8DE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715959343; cv=none; b=XJSKgWWNMtRUYusBXAHjdKyyXsTXgWEQqKR3JbRLt8mhn4ikUeJ+9pqAtbKed6QPTuewZIn4WBthG/M4eYYp8ME74ISjS8BYsUaD0L1lKvDHontAIoWVR4T4oGhWBWdnBuRrKBBjMVJSxAvVtr+frgxX+Z7XpjeP+WyLuTjfgic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715959343; c=relaxed/simple;
	bh=ReX9HtRqhnb1s81LSlMKg910pGvf5kpk0n3RRp34i1E=;
	h=To:Subject:From:Message-Id:Date; b=lpmkfWMtEKalXFc/fh7x/H6eSuUwyU7lCiE5FbZntWV+5QpuVMQaqY1rHSWPblFazJ3ayZruloLbMT8vmDUZJmU4zNHtmOEeC+sqYzqMeHXYO0bpyFs0SJ9AE6Ym6+uLluwo8Z8fN5IrmWmHMpBvGutBgbGX7sfNh8EaaWXdEBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uI7ReVZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uI7ReVZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D20C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715959342;
	bh=ReX9HtRqhnb1s81LSlMKg910pGvf5kpk0n3RRp34i1E=;
	h=To:Subject:From:Date:From;
	b=uI7ReVZWIzDxcQa1ZP0Gw01zEWi8qMpJunI/56Hd9AvyZodN1Xt4jLKUx+x+58QvI
	 Bz7u7E/hLVLwQaKl0tJnBKFhD5etL56pWw7+cqTrB+2ebDHEX6j4ZWB7ecDMa/5v5V
	 5ssAeNkv8pcUfFr9IzNAHXqwom1b1taMKSqSxb2Wi4yiR1UWF8tA8L2iKWxz6LQSJl
	 R0c3oD8HDRsCLdg1ZT7MfzPh80/cpBcXeVOg7/++PSOjHISQ7EjTHVVWf4fy2xBJVx
	 hfTuvl+qeXTqbBatv86eF6h7gfXUHdacShOjUDXPaZGuZu7Vn1dK47b/I75RrRFlP9
	 mwWa+uzqfwwfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7358C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171595934277.10528.5029928958232837082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2808ac0cbc0dc3998e70e28044ae77bf4ef01d5fcd2972c9dc326f0cb3dd58
Date: Fri, 17 May 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715959342
