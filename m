Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DDC2F8E84
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789617034; cv=none; b=Q3/cOD2GDZ+7rcn3hQc1B5o0NO0GGWCslAuODo7hpbVXSUxx00XPPhWRpoWGEiUK7FVAXm7ujulj90gVzcK9O4O95HhPRRgGXUQUMaovHl42stH1+r4yDqWI6hBXlEooRSwjw+tjZndwto4h9y6BS7UgBCEu59y+iB/bvV72CXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789617034; c=relaxed/simple;
	bh=izclHqE8spKsF5RwVx8U+sgUOgmES3jRjlQ5O0Mitr0=;
	h=To:Subject:From:Message-Id:Date; b=EKdRTTc36L3l6A4SDVqq8ikJe2m0up7qzzWfvU7BxuJVXkvY+lWJc9pX+3tXsnkByRti7V4gDVC9jxZnboNf9El37utKEdyGUP/82F4aPA2kIhPuZ36+RQOdHERy/AcDpyMtYRtsPJpF0wRi1b+cC4DlgcoA0+GAXF6i7QMfNxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mb5RQYC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mb5RQYC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAE5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789617033;
	bh=izclHqE8spKsF5RwVx8U+sgUOgmES3jRjlQ5O0Mitr0=;
	h=To:Subject:From:Date:From;
	b=Mb5RQYC84X0aij4qrANmYSHQDg1/IRkLL05TUIvRWYxietFrCqXPPkz5rvQz1yKqk
	 toX4n0vg82xBv3w30SCIHO6NGbDycyXEaqJKk5mWob6rk1rtQ8KKrDhUrg9GHNaAOo
	 H7sF1wL63Csm+wdl2BBgU/Qfa3JJendEzhQ9qt7FygJCk7q8Vsn/0aS1wvC6JZc0g7
	 /hbdRbIadKVGe9gcCkqoz2+Va8RKVd7lHP/uoMiNNwGw+tOH/tjGhh4LmyRZ5jg32a
	 xaz9ngJcR78nlxx6DI/TGqUYW+Lk2oZsBg+Ig78eH84HmVQKVymlvzfdRV1akPvWDH
	 WOMWq8vVExm3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA311C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961703368.10245.2112776540579552551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a21042561c8ad5d0b156f7d2595493f551b242388c6fa164477c48e4b3e6179
Date: Thu, 17 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789617033
