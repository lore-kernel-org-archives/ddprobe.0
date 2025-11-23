Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D76145355
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763908314; cv=none; b=IBHSngobsrF8mLXv3KcYpSPXWpS8Gxbp8jG7BG3KFNKQ+nY+cwBw1WfDGSYTZIGObCe0jcB73upSK0Ti1GJNNBkK9uTJb2f7mP851i7QJNvEZ2I1nmN5TMNjzrXHWk3YqdDpAqbQBvsIYA7bJfg93h/mmtUQoaoGL5uuK4Vzrv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763908314; c=relaxed/simple;
	bh=UIGvGfvhV1BeibYHgI+1qy9Ls4apmjNsxSPFBGbb/ko=;
	h=To:Subject:From:Message-Id:Date; b=tGN0V+hxAVr5nKBNcO2ZI36XhbtEhpCo5SaxWBjXT8gwITOWTr59i4tUd8TCeORVad5p3O7AwLUMiMugCgPgALR6uAUI3tiHxixZsrYhfBaCtBbezNHS/Oxei7UMo1SnfJwBzkkd7UF0vCEJ1bbPWUnGccDGbwuWwm4GjN8GaDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTdGeRi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTdGeRi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2557C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763908313;
	bh=UIGvGfvhV1BeibYHgI+1qy9Ls4apmjNsxSPFBGbb/ko=;
	h=To:Subject:From:Date:From;
	b=MTdGeRi2ptGjOpXIZSmywVGwLoQseWFzJUgqndVZ/ohQVY9lC0lwYRlQLPfctbqg6
	 LNyMkoCXeWNtjIJCda1Xp6Ob+vihrYS/kALmVgeCpMIwpccaTtAm0tJYOpJbmx+l2z
	 j00Ou/x91V5ulEKUhLeW88ErFYNuvRj/JalFbZ8UsDBND0pHLzCr5GbHfoIUfom+qn
	 36pw8rHuSlYIzfFUe7qmllhyirxLTXTQXvngEz8RNZZD/VW5hjmsZhGuMJOtu0n8pj
	 CNLSfGQSb2/heWif6tpujBDxR0YLSGwpfwk3GzubYrIHTSicymuWd+fLLM9KvTMx2Q
	 t1kfBGm8myHwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D15CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390831359.24033.10528408367915326699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25016a57eae3e686670b554697f41e0e470aba0354869aab342655c867b4117
Date: Sun, 23 Nov 2025 14:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763908313
