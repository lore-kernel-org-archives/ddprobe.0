Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA033E316B
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785967234; cv=none; b=O6IZVauvfls1QxAKixt5wdD3m8T5Tk5ihi5qyxAl6IKy2f0I5fZWcRhdO+MM3k0RQZVjlm3bDebxRn8z4Wxd6AhN1HXUMCCgPzvefXRujLJU+dH2T3JTvBpeTKcdCVPBy+NAkIdNxUsXiP5jRl7OAxhhl3myuRBFbMe54iGETBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785967234; c=relaxed/simple;
	bh=xiPtirxslYjsHKA3MCGze6GulLuu0+rXPUt03Ps0KgE=;
	h=To:Subject:From:Message-Id:Date; b=kQ+s0Y3qcOZ61XF9hEy3SfBBr6knXdjT4VFY53GzYzD0GuZUIklzC8k84n/oBC/tWiZ3d9ILMlFtlTZjFo+scUwyOQkBiufezzOjt0sYZO54pErFxCPXmWphaMS/WcuM5pmqhXdYHjobT5ymbCcf4NcuxVFTyQGrMZs6A66erfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuFX1xhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuFX1xhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF732C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785967233;
	bh=xiPtirxslYjsHKA3MCGze6GulLuu0+rXPUt03Ps0KgE=;
	h=To:Subject:From:Date:From;
	b=RuFX1xhF60XCe0ulrNZJ+0BK902sqFOf4iFzTf2Xr5M033Cz0xvd+OX+3gThkjUQT
	 wqN7InKAlQirpdxRO7Kq83P1qHnWN+OR3y/Rbf4/hLRkHaUOJEWCXXp/+B83QQkX9j
	 ltNz8foozFg4phcT6/KMLzKtem7mgzW3FJK/4BlMQ/Um8b0hg2rRl4/dNUr3acIkJX
	 bqh88aRAXve93RGIEkGeVJKEiuqvR8OFZae0MDeEUMhHdgj+TvhNvhN/VsM64XkepU
	 vi+gK1KXMgM9ZMgVtkXolwWDW/uNUrTUCcj7gn7AQE9pMfugfoW4SfuDzAcQwbjkPa
	 1Ef3IKnX5RWSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9DFC55ABF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596723369.20628.357341735432811379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa86a7dc8f0dce0a11de2506a092207cab33f7cbb4e0ecc21135500ed90e1a7
Date: Wed, 05 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785967233
