Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADF72DF134
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789424434; cv=none; b=E3w2eypB3oz27X3+9nFqJ9pIN1v20p5Ft9V4ndVR1uNUQ9shP1lgzI1/ZDjzaRtRD5zZ7nzjy48laL3lS6reHH6V9F0rwcO9MS4Zub79eHDDjNLYKwUng5uj3AR9uUPfJTyBC5C4OtErw+3QjwY1stAqCFqKq1PfXhjSCyGA91k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789424434; c=relaxed/simple;
	bh=l5CQVUd6pdyDSnw9TCsK2A/6BprrMLctTAiFko0XPgQ=;
	h=To:Subject:From:Message-Id:Date; b=jeXNE3keY1/oWONDsFyMWhoVq08wltBxdHZZY3+YSVzqcKDW2f3z27zRdznPeSGb1VrYEYTpEKlqdgjrQPv3XAbtYvebTa4epDNoqa/wtaC/K07MdXuU5d7DfiOz3qFeHZ3KrjiG+AzgES4mQ2xHpWgHJSPNanW/Ho79Nmi2+gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDmmuYLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDmmuYLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB2BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789424433;
	bh=l5CQVUd6pdyDSnw9TCsK2A/6BprrMLctTAiFko0XPgQ=;
	h=To:Subject:From:Date:From;
	b=BDmmuYLBI8xbmWFbBRv3LKWoUrVxIbsomoqg8ksqHUPlxCq/aleOk+HA6PcQNCA6a
	 ms68v0pb6p0BPzEcrLhuVB8nFKFUFUwuv3lPmaO3Y7fnT8Nlduq9+Jl0nOI4CEKWNv
	 cODoghbnmVxDHbTwZsFpRY73DNCZ4639de17GkFYFn49XzrFPQt6WQ94OBZ5iFmWU1
	 jqfrLdTvDE+oNQXUCjH92UpoOlySjjs+0QBN91Y3rpCOanN2RhBl+lKB7y3j6bZcV5
	 i6HnW6osiY07kbF95Th1R5ch8ekt/PU3RbAgatQkzFGhgA/lOucwhhnhd0QGEXvCHQ
	 l2vK8cZXgHDvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F36C88E77
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942443371.7055.7206275022928853413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0664931226392f3930163fb8666cdd6c26bd64f4fd63472d7c95e13fb1fb6962
Date: Mon, 14 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789424433
