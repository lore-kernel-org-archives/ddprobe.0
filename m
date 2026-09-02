Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7471147A87B
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788379834; cv=none; b=hG1FX+t6pizrCwNK13rPZuu2ziSeztePrXvwlATgKul8A8LCU6WgWBvxrVETOkYejFAi+/6GKswBwRJu61uoJ6t8QidtHnteCvtFihr+xezrOx9rpuPswKpLUOhbfjz3hV4TYVDekSkA+whWBYHDgyYqzMISPR92iayW0xDMj7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788379834; c=relaxed/simple;
	bh=rCqRrqfTsQQMhzJp7VQdtfNgvFffwOI0Z8FBaxpO0/k=;
	h=To:Subject:From:Message-Id:Date; b=hI86BueSGkASlzoli7pOml6zFnARh/z0qaIhwVSxLiDQ+QZ80Ed4DGi4F13vHbLM/2j+EIdVNR2TC5+PBTrpPc5ZIiYrL5ONBiiPHoihyGCt2nw5U4LNi45j9RtE28FvoYsEE5J4C5ucNhDshj5+KsVqeBgCWN9ykgrO3tosZ2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctuW1yYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctuW1yYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39F2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788379833;
	bh=rCqRrqfTsQQMhzJp7VQdtfNgvFffwOI0Z8FBaxpO0/k=;
	h=To:Subject:From:Date:From;
	b=ctuW1yYeBAIW3vBYICAVztXfApWDyrXFEb4oD2vwmy8gpyXIpkVHi3BX2R/eAco6m
	 bdb7pnc4zOppHOIozW5WKuBEJ/vv6Y4l60qfQDcr1vDytCHXFCK42A0VRSxsfyYEWF
	 glW8tgliv4F9+a676Vty1tb+yii96rSC/XJpV0sanFRVwwQ9SuEt83GMykri5+YQho
	 I8ID2SD9VxD9ACHZFi2ebcCygugRaUZP6Pi7VAK8FQja3brJs6wPysc0mVBuqDy8u/
	 TM6zZY0mRz6u/V20YxzkFhUaPQI1AdCB/8/7YJDQw/5mFQKgjroNnBDr2sf5xF4UEp
	 6bopjs9TYRxVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE6FC624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837983369.32734.13656066686470532577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ab60031b59932e5fdf81b039b5f4520a6c0a39c3a7196ed31979fe64968362
Date: Wed, 02 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788379833
