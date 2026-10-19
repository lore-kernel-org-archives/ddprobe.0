Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B220223702
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792399834; cv=none; b=SpEYImls5pzXvLv/hBR5AyyXxXFBQxlVAyfM8mWQa2ZDEqR09z6tdVd6clItgm0DusEcJuzpncGE4y1AH18S4JPz3YoHtAUOu+RXG+v/ouCq96/KntRxvyYpLtAAV3NPZF2Vj00CGgIFbtWV7Oys8hES2aWvluXN1vySa7XCjBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792399834; c=relaxed/simple;
	bh=GYK126BNBNLZUUKVcm943qBfGQe7VId5yZY1SNfhQhA=;
	h=To:Subject:From:Message-Id:Date; b=kcF4dQC32azEA2vggZwtRqUXrbjp3R2JMpdACoPFrT49llh3d0uAiBkYqvheFYDJzMz7z7+vIpR02Ao0USA2ROhc5mN2LUQA3pOykbdAbteNw5e027iXSUaPk14k31XzoK43Jn8LVURtEME+tv51pPmHim34EScd/EPuql3Hwhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+AQHFrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+AQHFrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC677C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792399833;
	bh=GYK126BNBNLZUUKVcm943qBfGQe7VId5yZY1SNfhQhA=;
	h=To:Subject:From:Date:From;
	b=c+AQHFrG4Ik0E0k8FKjN5pjHWTYPLwTIZv19L8+XF9ZvsHyh54157NTTIr+P9BKNx
	 mexgnsuoLO1k3r3yNazv696geYzXOdtgcr+JXKsd24tg7DxcEa8AK8dvz0zARjYPl4
	 wJKXjdz/uWKp9Da5N+HpHRaXI4QQO4oEAlF1MPlWR8bBBWNepJ2HfFD1DF8sHHyGpq
	 8e1kuPMEzZz4iwbys4CuVW7xQBP4y80p1SvIPCqk5tb9+VxrjEChbrG94ZkgdwBEBY
	 P+2DQYuJ4IvFlWL1cYI2NJe3lFwvjQcq1/PnDABtK3BPPgQBeh2JoPvfs66J2vRS69
	 d0DepQ/F36tqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8189CCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239983374.9662.12891628377133779204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab689d0a01e213466031debe8c454f75b1b823f1c36538e594467dd0b4e0c90d
Date: Mon, 19 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792399833
