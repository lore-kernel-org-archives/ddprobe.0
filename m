Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0815A7B8
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727285754; cv=none; b=QjdqrCY2WQ1B69S6YYeA0kmje3P9ibBbFcHrkQWNNG4JOt1yMH+Sa48mfElQPAQXl+RszQS0Lk3TyKAqdP1dyBHG3CVRrXpbLMPPYYTOeGbbSR7kc9oJvr2X35vYHYO0RgF3LRpQWYavI9oNoZu+Rf2JZz9/hwUmTJ08rrFvDbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727285754; c=relaxed/simple;
	bh=ctHiz3JCZxVFh0XgbUOJ+6B7/Wwvf65pHyXbcQ6SC14=;
	h=To:Subject:From:Message-Id:Date; b=U+fnV4vCOaeHn2eE3I/S9aTggqWqHXDJQFEDFBVcrJi/KYUhpjlruPx5bTX+KMrHLnfjagmNTvx/4Dknph2dUd+QGkhZ0K0BtqH/hHL2Q3moenUThd38QuvDE7ynt3I1xInoY47Z82gHIjx9xi2k682lgwF1j+hEBoc9KeStyLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKK5WyJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKK5WyJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00B4C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727285753;
	bh=ctHiz3JCZxVFh0XgbUOJ+6B7/Wwvf65pHyXbcQ6SC14=;
	h=To:Subject:From:Date:From;
	b=nKK5WyJkcCNhJY8QHrSzx5mFge2hFkAFUGujMiHZwlmrrIpeCBIwBOOJeEPfXh+IB
	 Qo6oMy8nj9k0rKutFuQMJ+C+75eRdpFQiB6iS+FwazcZob8SoA4w/ZwrY6SKXKOnm+
	 Yd2ufYo1akVTozc9j4ZKtWXuqVjjJ0aUcZNfp6lVm1NRdqNgHQUXHN6oMItHkE4wVS
	 W7d9qFxtBVvne/c4sMbOKKIjBKUmUIT9w1SE5ql5LYvOwQTZgQHE4czyepxa+KWvDQ
	 Zo/0urF8xaCr/oNyHYVZ8hDYxfJzzBpNhhAkaZBwSYlmvXN1QyOpOaULQvAOp1/NEL
	 1GOhbnuL3d1Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C2FCCF9E7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172728575358.32665.4289486965592861274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac1bf567be7d44d08361bc42f84953f3dc2f55ea6e9f6c89ddf299621ef4f74
Date: Wed, 25 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727285753
