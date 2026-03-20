Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFED3803C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774042494; cv=none; b=GfdC5syLIsh2hD+V39VwzRvSxbpBQTP5jZVGQbedlmbTg3KKMoqmOCZMASSA7oqgXAEobLWH3RxKY5D4b4Zwk5cedCKIqxIdfS6i9q7qpqoXXnHE42ZMSNIYdTukSIRS329yj2R2gFh9rwU0V4oubWLQVuavM4l5/H6a03Ct/go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774042494; c=relaxed/simple;
	bh=+QM34y8PmDcIl+k73gHYtD6vatHb3lfmZyotb2TXIQk=;
	h=To:Subject:From:Message-Id:Date; b=QhBYSNN+VZdV/1s1uCv/lA4vXfiQL03dWfGxkoNt67w8hUetw8yoT3LiGhGDEUGHE6PJgBANiExhlwFNj4LNJ14PtFF88Ci0TtA0fUKeoIOB2D279cNtGOBhKdnB0odrE5K7j5eV/o4xdsO9cXSVERj98av2Ta/AX2iIQcY+H18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRdXdile; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRdXdile"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48CDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774042493;
	bh=+QM34y8PmDcIl+k73gHYtD6vatHb3lfmZyotb2TXIQk=;
	h=To:Subject:From:Date:From;
	b=QRdXdileaA+df71ghKYtWiLRB1TiHiyat5m1v9FIlfeyaPEd6FEPm6F8dhismZV0E
	 mMzuHtcYRUPCZCQ7J2Kw6mMGsg5eO0ZsSgkdhWgjRpWVZt3W7J5yYscc+xbXs6Y1Lv
	 BALtLEog6JZaugYwmO3lu3DlvW0/UpsVbW4sKQEafTY4CxIR33TKZewiYMMoKAuK4h
	 yWe8o1FLuwOR8i47gozIX4cZ7+N8++jnydXiO/fPYaUU7Expep1ffX4bp7f7Ffyzd/
	 Wow04v16bV2ZE+oZwcuLOdFoOxVCgWhVoVK4LB6Q8TsPrA3k5207gEofLM7RLvCFws
	 YgBe7Wg0eDdyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A046E1099B30
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404249364.18657.11527162430204050184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400173492851a941dc71cb3443d3e7fe0bddcf0023be5789799867a5e76821fe
Date: Fri, 20 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774042493
