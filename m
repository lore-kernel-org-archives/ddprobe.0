Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4D236CDFE
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779216634; cv=none; b=EV/tstwVfkuIFpMHEJmv46yvYMdmZdVYaUsxoI1J1En0319dIry4sn0DEVSXX1VFi0PnvlSg5QToVaeaxLqi31XBR3YKimbLG0t3lUS1vXlmX4HjqIXHJ88WnaOCNUb+ULDaE8rOO3NEw2b6vzOeJpO7UAksASBYrj5zKlY5ECY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779216634; c=relaxed/simple;
	bh=n1OT7RYzD4BUzoUiV/uQJ2Bmj5Fv87MqXAfqNJFiRaA=;
	h=To:Subject:From:Message-Id:Date; b=ExzvBxB/L2HAxkZlrBSJeAhbiQ0q2zkCefd6DPHWiQ4zZvnbCWW1cpPFXp3MN1SJ0egY9YcdgSar5VB6k2fkSts1xVcl06/ufDmalgI8VS8GL0gGlJSiL810ZsrABEmIuGHi0IWDR3Brctp4NiwL6xm/g0+d/r+SFbO2ysNth68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzWvYK40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzWvYK40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F12C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779216633;
	bh=n1OT7RYzD4BUzoUiV/uQJ2Bmj5Fv87MqXAfqNJFiRaA=;
	h=To:Subject:From:Date:From;
	b=QzWvYK40Dh/KGeADqAL0SM/0jFcisKwebRq3GLXX3iSIOcBlfvId56QGwT9qOxgRd
	 abkpHHOJ9pE4lrN4l3Q1BzkGnmtRXpVZLAUWBnDnS3yBxG9T6zNWlwrPXeylnDIZ6H
	 1e1p9N2UmxuM95/I2a9EK5LtEAktyIeJlcj/DUWMdL7CyRS4XypIC2XMLx9E5JC6Pw
	 W+t/4KoEjJdA2KA26pqGjkYWeVl1ohgGrkhZbqYQZuRu+QcRWZEhkGuaMuotlwexcc
	 24toir8iWUGft1xVaK+7+Od5UOVqzf6P/5OIgxb+7ZQWuio9RWyhM8ueZJwtlsdwyy
	 qNCPCNyAmR1+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB419CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921663369.4585.13177584907104552583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3303a3bb6eaa18e824f657951c02e6bb1a901bb8b3f2bad6cb3fb3a1ca29614
Date: Tue, 19 May 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779216633
