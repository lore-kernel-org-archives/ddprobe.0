Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C7A1F1932
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759174794; cv=none; b=Gggm0yGa93WbN4fkRKE3Oh33pWVtWV9kUjY80N+pKBP1qfkBNDxYD6rvxr15b4BBapym1GfSxaAhvw8+EHEeOOylcTw5yGHda45FfsQTVw4QgArPe3bZ9JohFdsLmttC16NEBVEvMIj6JMmcDGUszcesRL8Vu+nnrupAwJAOFuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759174794; c=relaxed/simple;
	bh=cubRxTQK5kB6y52U8lDXVXHxnK/dpYJ1jQQyGCPnO0k=;
	h=To:Subject:From:Message-Id:Date; b=sch+O79IBoHdHmjR/0H1IJ+QD6fFXfkgsbB/CGCsV7tcNvyJUuJ/INvUjP4X4QD2J0syHWjW/Vpabgk2QD0Vfeq/PUEABNBfve115HwEZa4F1MM9GIprYnGyc6qBo4TOe7KR6D26vBPhTaC0aEWoHJPTP1GzGJthL34kvBq4fk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXzBwoic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXzBwoic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C5AC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759174793;
	bh=cubRxTQK5kB6y52U8lDXVXHxnK/dpYJ1jQQyGCPnO0k=;
	h=To:Subject:From:Date:From;
	b=uXzBwoicZHc3OfHfsXc6e6FlWC8nuG78WfS5x9RSfn4OeZBoTmBxfkFoLml6p0Gc3
	 W9PuIzvHqh4LCqmC3Z/6oLS0gtAjUxNwbGhEkr3XMuAa8hVudIffAxU5GzKM8dQ507
	 gG2uXr5r6GBCz+rvk3Lbihyo7z7P5S/Clax1JE6j58xXRLJr8m3hyyr9Nfa6mYjQou
	 fp71Z3Uo+bl7/eCNglmSeHFmDfMhHdewky9azuWsQd0Qq62hQuYVOIEjm0aCQDj6jc
	 onvZldMeBmCLhThGLQBaTNWtvfGlBp7alh0LuTwIqnr5x/xt2ZmKEiMCGnl9jGLb8W
	 WPbgjiGguKvgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C27CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917479361.24578.3151281461409299530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0cfd7e515c22ab96a80c4285dc5cb7cd36864016c2e616f435be5b8bd4ea476
Date: Mon, 29 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759174793
