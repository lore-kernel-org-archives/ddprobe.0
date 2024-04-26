Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA591FC4
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714134743; cv=none; b=CR75uQVntFbiD3ODD7pInoC8xnusZCNXJ8dsdDTdP8keEo1MSriT8aTM/on2TY3trrQxfvwUeIwWJRi+tkk9KFeChfrYJgH85ndMyULS+hispOWUptPRQHU2nMJtxpktB5dPaTjhj+wh5tNT6RLF0rZ+S6AD9oNo33ELEN3LYOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714134743; c=relaxed/simple;
	bh=lEq0G3jFOO2gGCei0hREt1wzgRHy0sHNyA6Glyn63ao=;
	h=To:Subject:From:Message-Id:Date; b=k8VAkQWKQPm2gq8a+31MVhnW7tZPxUmXOsnsTLK3gPqXlcY8rZrlJCWsecQlapSK/wJjLw+3nidWrX/TENgFR4fQaGioi8RMQZ2XY9k5IlywfLuiJzI+dIZ5urh8q0padz+S4w6QPkOSJJOmkvts8V5vRTZjGuuwmz5Q4yb+GCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLqUoneh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLqUoneh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95D0C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714134742;
	bh=lEq0G3jFOO2gGCei0hREt1wzgRHy0sHNyA6Glyn63ao=;
	h=To:Subject:From:Date:From;
	b=KLqUonehaZTSgoglGiJcNdCjVBY9FVK8u/01WBDr3/qf8JmMyMPLaw2OXGL1SuC54
	 xCqge+pnJVKiiSXfD6EHntgCef84TGIbt1QNj0tNlTmuEyJG9Jo2bX8W4X4gUbfCYz
	 PMMhPRVKL2vstHzABYBHnIqVt7f9JmOkoR7BSH0G3NJWZfxrKTV7o3Vn07K/l7VYKX
	 RIEd8jwfwDzdxiomSqxaYyaVQxa3ra1QSzdND80YgIVdN2HNOOI2g3d5mXytWiNEzf
	 bPNss+jC+3q3UmT1Lzi6InEqAfTi6lUU1lkV4UfVCPtPOAzzhAmTSL9+lFcckW7lFo
	 dhegE+JrtJwxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8253C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171413474281.2615.6571239523505527652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74c302ec709460c7377e9585274fd9d189378591c17d27dfa94261cc815ed4d
Date: Fri, 26 Apr 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714134742
