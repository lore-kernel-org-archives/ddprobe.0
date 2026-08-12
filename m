Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7212C47010D
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786558234; cv=none; b=m6ra9QrVVe/KmUwSk8CeGm+bAtwfOLGOP701Rqzb6zIadZxPxqK9vh1UF6J6CGTsSAxlePsQPWee4xqEQ9KCPp6C3seEKzv+0fGgIlyOb3m2XSmklt6csoG97OMFh932GUtae6Q128nHqklAPQFNrY7ARkYPGzlV+aJ19mdII2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786558234; c=relaxed/simple;
	bh=H4Kb0xRwp/cXxbFzXcOcM92RD7WZshigWlLEsPpM094=;
	h=To:Subject:From:Message-Id:Date; b=D9a8Ifh2eg7vg7IeCftER083Q9QTkclN11kXuXv1xsk+jpqy/c/tlSNEH6iAIERWDj7pyocI+hQGYxaMHN6PZcQhNqZAjcuJP7HpQw//8qRv0VKxA+mGvIlQ1vBi4JENvZZk7Zwu6SUq3BbIdiwBo0kb+zSZ3BNsVcNJPEOmIRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDYXGOZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDYXGOZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6987C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786558233;
	bh=H4Kb0xRwp/cXxbFzXcOcM92RD7WZshigWlLEsPpM094=;
	h=To:Subject:From:Date:From;
	b=SDYXGOZX4J2q26N2jtmvbM+j+vNKwvOGtetsz6mLOZittuI3mVHegmcj79oDJx4X0
	 EwkxaXqBdTZlNfaPM+2HgVvL81OTnMalaHQVSwPRdhl5lT5Fk7T41gm1fnVravBs/V
	 Voalst2BgAgFG1zu+f+e5F48IbcclrA1JM2TpS0mdCve+4/OjsAPIcKq93kkb9jDs8
	 FhCsAzY19UkWZkCS2Pc/k5Uqhck5fszfkOmVCUUg2EW9Py62kEpSitjcaXgzRxbEwb
	 gG3jQ9PDe0Jg9ZrKTzWyKMUJs4PtTCfzl+cEFOSXHet4cJlkkyyTl6yfaM0XGCrPzp
	 3rRUlj2Y86Cog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F4DC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655823374.24955.3157209520339581664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad65234e3dfaede67080b8255715f4f847f54530337b440715fa7e6381e095e0
Date: Wed, 12 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786558233
