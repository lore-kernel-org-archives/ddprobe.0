Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C948363C79
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789329634; cv=none; b=MxzWtsmDuvivZ2WqEj6rru5LEOKyxFE4UPnMTU7af/PfScc60Lwe01ukGlxL2OIBsGo03A+GRbWl4dv97b/EeDPNoa0z7/szo9Mjbx3LNA6gYr7i98LVoNxtOAgk5OfIijoCaZ6CVd1ET1jykRQJEOLkC0f5W/LQ/XK+lSM8zoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789329634; c=relaxed/simple;
	bh=lH8RNIGasppFkFoUmowz6+MKRcQCNUppkQhDS/kSVxc=;
	h=To:Subject:From:Message-Id:Date; b=VIO6G8ArE92ulaqs8gZf25kr3VTYhETa56MKP95aAFMT4vFSEVIRhtQ+vd1n2aMNhiYREOZr6fxfTzMBSsInF9DPnQmfsKyBcZN27wWRkVAgYAaHNyy0rc0OMbOnMgwHJBdKv6G97cyoD+tGgifxBp2Q0LfW16xIiUsQo2YAnD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1hbo5m9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1hbo5m9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4645C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789329633;
	bh=lH8RNIGasppFkFoUmowz6+MKRcQCNUppkQhDS/kSVxc=;
	h=To:Subject:From:Date:From;
	b=q1hbo5m9m52PXvNmWQjgMtIPZrHx378EwBYFvS30wsy6aITKizLrbb1Bkio2dIQfB
	 EG+1u+d81e4BeHBKyAdknl4rH/g0YfJmjciAYOGRcgtsBOA+jz+8a7iwkHnWYmMaCy
	 nAQe5ZjXIZs9mR57JjS5tAKrz84QfbkVty5Oq3cPlWul4RRsiCxmQtFg9BarpYiCfU
	 n20uGTj6RYuUGvq/PxXeqVOyt4k+lvHk+kDKG5HFRcRBSfLkwESJ9dzNadZUISmXY1
	 t3AunDiBecdjgtaYsRGQ2k6YMdrwXb5Pt+pw+VzfmhEJwHBJ8LMfYM6R4Hqr2k5FYg
	 Q4uUGaXZa0xcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9F1C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932963368.24233.8945460983047626460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad542698d1f9c162d296209cedb6b1a50e5ccc8615979257d1dfe46348c6cfe3
Date: Sun, 13 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789329633
