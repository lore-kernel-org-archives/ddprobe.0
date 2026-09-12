Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F96331EA8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789248034; cv=none; b=DOoFcADiQ1v74NITg2jpvlOzG9j3kKFpKJeasIvSa7Va7SKLsLXF8FtM0vU2LC0jY9YLQoil5j8hxLjT/TDNmOIWm0y/4OD4pzSJTjjhhGJWxSD2RAt4wGjAvGHgJOCRqmZerIDVq8TOh77W7zB0zW3inE4aimHVjQ1RVe1QIjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789248034; c=relaxed/simple;
	bh=vtemNuRc/QeHRYUKKGfrSRoPnBPDV+wH4BLadcqq5+U=;
	h=To:Subject:From:Message-Id:Date; b=WeI3GIMIqhZatzW7/3Gf0lcLGuK/Lsxybv88GwAEeGHhZYKeLWTB3jdqQf2pBugwINxqQpgBik8rAb/vY5NpLxAvOtUPiD7yAQsAr/5piSQe/qiVhz7dVwuMb0t+YJV/fZZQk5qAPLlKINV/Gzjz/n3bj/lREwqXE87KZavDwJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbTSEQJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbTSEQJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C58C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789248033;
	bh=vtemNuRc/QeHRYUKKGfrSRoPnBPDV+wH4BLadcqq5+U=;
	h=To:Subject:From:Date:From;
	b=TbTSEQJKzdys1fI7w73M+uRZ+keNBMNZR44uXoiFgevsZpiGtBzenGNjQf4gfLhdN
	 mwjBfixSnB6oAbp+/ANnD6S5xH1IV5oEubqNcm1NsoZciT2yc9NF2ELHX2qmcIILXL
	 mq/J7HoYQp0P349OO1FkzuAnBEZKHnK3lu0S2J5+urG/2a1OXsWYxlKNfWiO5RMRat
	 9TMzHq0adasLTc+8AbREtLMvospggbS2ywfgUGu0U+jhwWN4R8OWf+qPk3eIYfoo9F
	 I+y+o2GGe9tdHu5E2EJnAeMsF/ndlpm84xCP+UKjj0HTLnq+vLD4LxG9x3oaZuOSRC
	 XkawUjuDRP8Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC455C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924803368.26138.308100176827707139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6ab5e68615d1be6b21185dba9310a80c7807e294ee0c78d66e2c19ecfeb7a0
Date: Sat, 12 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789248033
