Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D27428C009
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791607834; cv=none; b=P/lI4hN+vx07Ax1ZqNqAvJXiiSvzpQnpwNTPLHFM5O2Ahe+QTy2UF7JHqVz/Evc5sk0bPJsF+4sx6khzCFhH0wxY74Ti0ikv+DfNAnEP9CyLLfwTusWqpA1biBaxwwwVM6otXCchmW6UQUlFIsOR974vDnaLKpn7ZmO6O7OLjzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791607834; c=relaxed/simple;
	bh=P98w30SzmSn3s1KanBUAF0KtSgA5XihglvAe8Gc2HM4=;
	h=To:Subject:From:Message-Id:Date; b=nq0HkTgAXDTKgsVMDZJWPLbNbL7mTeZJ3XDDzFhcl44zyvTyoKwjOVp8PgCOyQtQkJDOjl4Ruvt1sqKVr12EiipGCZbx3PeQySvoA4MF2JoaWmBf1ZKC2v1EZRwmEnEU24kMdFufxgAOY+XJQvxu2/IRdibK/SwXEphxOCDAZPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjyNktGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjyNktGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65A3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791607833;
	bh=P98w30SzmSn3s1KanBUAF0KtSgA5XihglvAe8Gc2HM4=;
	h=To:Subject:From:Date:From;
	b=qjyNktGURKGThy1EJ8erqeLTsx4yALtnfwym/B0tceT0duU1p3KBWOuyS/0LgBhDB
	 SDupBkV1o1ks4wIahwF7kWIGDiPlbcJu3GqKJKFf1tG6Yxc+w19GWct3VpKofeO0lA
	 ZLuWqaoMgCROdFyCah1EM4P0NRyOa0Ax3t8EgwyCzPYRAS7e6kbsKhtLq+DZZ8DD9t
	 cyME22F5ZZj6tFjZJY6A++AiGv7RIlIm/K0rGYq5cMnq8Urns0qnz2+hUS0SvOPhqg
	 dHWNOj/Ht0u/iK7OOyOKivfZNL9m2m4QYK7mdttfdjSaFQUbXnhjgrKiY7dA1trEnE
	 a/Q1k/OzuLbfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF62ACA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160783368.3066.5887594374967437413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb45e05ccb37df9108584eaf71b8a9e6fc27c563da2364df231a8e61acdef2c
Date: Sat, 10 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791607833
