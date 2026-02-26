Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29517285CA3
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772073294; cv=none; b=buvMXhN9lSnGkI/1O1uBY1q1uqwO2FS+XZdgqHOUej+R7PBoEL5huxvMpWrvN2cdntSfIj5iqvJ2RVEJCDKvLeLCrzYN1Ek7JXYtIfumltqYvfFF7EtVvOvIK3It246vxGB+8gBBjPahsATMYE8nM/N2nheasA5b9uLsK1QNEVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772073294; c=relaxed/simple;
	bh=MLAj0GO2aLiIAOhRS4ViSn3e58irpPn9IRIb9JcVcjU=;
	h=To:Subject:From:Message-Id:Date; b=Jn7Y0rzKagLwwezfU3b9OIex6zQS56efOFvwOKREVTgNEUTr6U1PA8Aga6o1ZaUTrW05rAAcdJRZM5C2ApQY5/bmqWP2ZPRP+UYwe+jd6xm7UQ4ptxNf0xqFAqyvPU3GFnlsjCFycIDB9ep0Ob/ZJqq6fCIN5ayydunSDQltJrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qu7KXm9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qu7KXm9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD91C116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772073293;
	bh=MLAj0GO2aLiIAOhRS4ViSn3e58irpPn9IRIb9JcVcjU=;
	h=To:Subject:From:Date:From;
	b=Qu7KXm9mLtopr8B1RQyeNn48mLZ4SDsaV0H1srcg6Yu/0gWGLr+yL11D5BAKNJsyD
	 s5VutS2/4zHzmjwp/CVsNm3N6ep5pRRPyn1/M/m22yRBlwxDFiQ8e9fnnvh9rVM9TV
	 uWxngGLZ483D0V6FgxXkkw30okRQXILbZQvvVfOc8/7nfFTSlMPfdW7UC+9/kpC/e0
	 aXmTO3XJQhNHJKd6uKekopD/4cvqIvlQH/++UmlqKWq1FybVz+ag2zfIRUaTW8Zr9k
	 JScEfq71l8YKKiandGctkDF5SjXiE2ifDQc7NidcfvdXt+vpBE9bxRJsBY40BUeP2J
	 yOHrCRP+SRYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C6AFD4609
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207329360.11594.11813588253599185570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff96637d488a2c418b2dc8a8b8a7d33ec144caa1b33248d76b3f44d1e3b6963
Date: Thu, 26 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772073293
