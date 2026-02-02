Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D73D1C01
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769999034; cv=none; b=Zk8r/Fz/fV2dK7YzZ0C/5KwdA7y4A3YKhmzE6rfQtypfafI4khv4XPaQIuTlf7a0b0/PHUGa0HqeLRlltrq+kJoCMrIKTrd5ZVaqs3KBV3r4IGBkIVYpWuRaGN+zlTbIvwGYpW0cs4fF0naB7uaKXwiB3YkWQIpvyB4TJQvHhNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769999034; c=relaxed/simple;
	bh=iH0ZPs2xyr2T6WKTU+zx33eOVJ1dt97WndTDKbJAFCk=;
	h=To:Subject:From:Message-Id:Date; b=fZzqHulPp8nUM5psI7GAiVdyGsH+Qgjw9hkLqzTyAridgPOSLiDfFAdmGFaZI1N2prK4pgstcjc57cAz54luo8sElX7DBs7y7h3XLwxIc/duyu2OjytGshnLZpU0qu4KgdYiknwsgJiuff1avTdVBr0Ir588LV6VedxwIFeYO1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFqFdtiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFqFdtiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0079C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769999033;
	bh=iH0ZPs2xyr2T6WKTU+zx33eOVJ1dt97WndTDKbJAFCk=;
	h=To:Subject:From:Date:From;
	b=tFqFdtiwfcvatNLCQVPW0VhIb9n3m9YyKFwBbku9i0Ahja0t+BEtvv0zyvNgbwehR
	 DF8SUWVeKvQM3p5HWVx3iDaxCiqWiK9kVeHuvQR8SW8CDQqFbi5Bu9r1uuv9tuSIaq
	 XyIlNd6my4VCADtHfWtIsM+9qSB15BOaZo1+dKXW1mA1bLrYen+wkOwpYoIF0Jj2Wh
	 I7bbDOjy6Tgyo2mtz7p3SVOXG3amWf0t+/zRfwDwpFAb6NjnLIwjPJZmv0m37lTqjf
	 OlswDUI72aet9GerAWoy9y03+vGWPnBq/uz2mbyIVOS33/zajohVKASLxJTKmbcWzi
	 O05Z44MtGVOwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98171D172B8
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999903359.12401.10464479475401431645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d4ed22c5e9c865539a72ee7812e78ae9e17a7d04d902f0fcd19f76fee6bcf4
Date: Mon, 02 Feb 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769999033
