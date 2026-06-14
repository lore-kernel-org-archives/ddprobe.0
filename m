Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341442B9A4
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781403394; cv=none; b=a521mu+UipPXVY1RjzO8GzySTjAOri/DwwEbVBYjwoowz56eve6HUfYQdR4iMRtmcKGLFKGlAJWvF9JQb1Ah+bAxs5FTlup217AdMnA2pd4/LAE5/M9gvH6kyi4C6hy/8MhqXQJKqiZhusamfyHtCIDyQ1zMismH/mR8Nj1Prok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781403394; c=relaxed/simple;
	bh=/KN1lUmzwpaMfZDR+8Jw1U2xBbilhuUxLaj5LsJ5+Xc=;
	h=To:Subject:From:Message-Id:Date; b=X6MmOVtklNUaD89mBURyihbsngd4C+PjE3JmDXgTLGsN+EDx4XJ2adqC9YY0VjSpeyjcBy/w+ClMOoXCUR+YtStdT6bDQoodxhjL2DCWlNokd6jMx0kHBv9clXep1lgYMpZ9mcm0w2UeZ49FfN5tW14Og/CD1qIcj7okhHtXHOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKDXyrlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKDXyrlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6912C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781403393;
	bh=/KN1lUmzwpaMfZDR+8Jw1U2xBbilhuUxLaj5LsJ5+Xc=;
	h=To:Subject:From:Date:From;
	b=cKDXyrlEOTNhWaE9xCs/VTGD7LcA+v0xf8ivvEGpMiHhASsXkiwXZ1J1Zu5Xg6iVH
	 CdHVvJ6XZyuZv0y/aC5TzMJQEj8sMkuWf6KPJObRxu0RZnWSe8QohPvyNe/KvBCOeL
	 q3COl5oC+epMIc+R5uFB+oXu6kM2GUYT35qcEfy69cu/aX+ZDqajjnn4TuziH6kdgR
	 w4Rw/0+I5tn/eJKUzLYw6Pojt1a/31Fa0EtCrJVjSAAoZrIRAOSspgSWxf6n2AOzn8
	 tjenGoeATDI3cuvbDvBfzMT2qSyfSKnEG6Fe496vVLnlhwTd5aqZSYcJBhHsr0CQMM
	 OUJUIG40V/YSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB207CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140339367.11150.10957344856044255159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994b9a134411ad36109c39c97d0a7a1872938dc5cc3416d4267266b7f0fc5515
Date: Sun, 14 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781403393
