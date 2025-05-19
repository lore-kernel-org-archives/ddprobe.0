Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A751DE2A8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747672194; cv=none; b=CQhNgtzS6O5o9ALzMg7z0tle23i6Hu9y33SY2OH1koo2yv/otacSQhPOFf2ExSTcQAjRyn1iPynb4h1mr0qg663Hbvf6+GwNALS9wFKTApfFj1XbmS2gfxDgWgtm7GOB9O83ylSYo+Gh0QUVaL2Rttebb7zAe09b836xe/Y5m9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747672194; c=relaxed/simple;
	bh=D9zjoeXPPODqnFqHdw0CDTAhRxbrs/DtLWxrPToQW00=;
	h=To:Subject:From:Message-Id:Date; b=MCF+YhTNVTawc85ARyVeQ+bvkGqlvozivnW1rtl7rRxc2whKNLlbM/oiPe/+QCkdWWEhQB6I1cXgv2PUz1od94a1PAKG0fiL6FI1pYWq4BxNyUs3j1X/3RWrU80STOUS8R3NnvLSGh+ypcSK6rkQvccXeiEY7xfYMcUgs7jGpYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZxFmS5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZxFmS5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE2BC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747672193;
	bh=D9zjoeXPPODqnFqHdw0CDTAhRxbrs/DtLWxrPToQW00=;
	h=To:Subject:From:Date:From;
	b=AZxFmS5jn40SyTPUle9aL7BssZAEKafv9sTCQ7+QZ2B9XGaChWeHb9GS2TJ7bWmZg
	 feRjM6D6DGbsZifSyVjr92ex98EJ701oeoW1BHeRJY1pMQbpQVajIA52uNtZJdON3H
	 KuKb/TNlh8ghDP4MqU06U34jptIzkshK4KEqv+DrdTZ3DkZmiyWpqxIcLQs7LF5DJN
	 vx734Nz1Hx4UtyIBrppG4XEkkxnKvG3sIocj3GV27qQP9+1PW8c1lQDt74cao86UzT
	 R4n0WklXbAYiM4Aly0O3fQwPXpHH/zMfS9g6UOEEN69Ff182Xq972zPzAweYrK90TS
	 iokIH3VeJ13Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2DEC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767219357.31192.2409554077154559472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d0722fc09dd1aa11316df6180627c66ac2ba1fe6c19c789f71d4e7c4197cf59
Date: Mon, 19 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747672193
