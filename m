Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F01281E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720296983; cv=none; b=ghku9TKOAoQmcKVVTz+IOhecWUXF9I7LpGmj/NFDlQeaCkCYeD4vfwh2D+aft10+Z6CW8wYdBx3U1JP0V0MdH3cFLYHD0CIYvSe6fIQqimLCYMZ6gGs32mIOfeGz3fbNaZUbWu/QzfjqqIiy1ulVl+h1/+/PPDE3Bo7OM+sCukQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720296983; c=relaxed/simple;
	bh=0y63PExDG5eVVLJlPUGDZSuYto6CDe0E/L94FyX6lHo=;
	h=To:Subject:From:Message-Id:Date; b=E246+UOxOTTDyPWrM1J8gbGNnmTaFqNe3gEpGguVIlKxxrrTgreivYN8/JHGz+EjpCTotHzxeRbCKhVXxp+jSkRvEwbO7irMJSCxK+KiZ0Y+hc3gkRJTx+KoLuPJFkZuZdcQ2LnGVU4o+/1r+4PTTO0tgD+rmFwWMK8XbKxgGk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pt1A1FRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pt1A1FRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0138C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720296982;
	bh=0y63PExDG5eVVLJlPUGDZSuYto6CDe0E/L94FyX6lHo=;
	h=To:Subject:From:Date:From;
	b=Pt1A1FRmdaqoViZEgB6eQiKGQkscCGq2dKNI8ZgkWYfqW22igyfNW+sljRs2R3ixj
	 lZkTkWnndVy3CqxtIJQNSz5d4WkGFOClp9JdhXTsOsBp5MPEcpeAhoZk4hilAC958r
	 VGi/+2aNK5o/C5QT21Nuf4dMVeDUpINjMHRwwgCgcATEnimza4jrsCAdmhLciiQKJj
	 hX7dF93ecd4kjQuQ/R/LksdzMxDWYAPqBsqsiJK5MsVL+aDwYMlf804mlQwJwKi/do
	 tSoJ3kC+6zE6/5hUfnORGM4+r2dvHk2awBY//zuOyrniJIRDp7fC/rtdB8DP/ZXoks
	 5z0/ZfN4NlsHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4948C38150
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029698279.13222.17874370429529298809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f9ac3492d83ee993718d803713a0255c93ca3f003884c794ca606c50d7da176
Date: Sat, 06 Jul 2024 20:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720296982
